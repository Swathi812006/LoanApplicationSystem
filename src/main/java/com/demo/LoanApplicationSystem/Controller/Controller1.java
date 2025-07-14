package com.demo.LoanApplicationSystem.Controller;

import com.demo.LoanApplicationSystem.PathModel.PathModel;
import com.demo.LoanApplicationSystem.Repository.Repository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
public class Controller1 {

    @Autowired
    private Repository repository;

    // ================= Login ==================
    @GetMapping("/login")
    public String loginPage() {
        return "Login"; // login.jsp
    }

    @PostMapping("/login")
    public String loginSubmit(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("Swathi".equals(username) && "Swathi816".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            return "redirect:/loanForm";
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "Login";
        }
    }

    // ================= Logout ==================
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }

    // ================= Loan Form ==================
    @GetMapping("/loanForm")
    public String loanFormPage(Model model,
                                @RequestParam(value = "message", required = false) String message) {
        model.addAttribute("loan", new PathModel());
        if (message != null) {
            model.addAttribute("message", message);
        }
        return "loanForm"; // loanForm.jsp
    }

    // ================= Apply Loan ==================
    @PostMapping("/apply")
    public String applyLoan(@ModelAttribute PathModel loan) {
        repository.save(loan);
        return "redirect:/loanForm"; // Go to View page
    }

    // ================= View Loans ==================
    
    @GetMapping("/view")
    public String viewLoans(Model model) {
        List<PathModel> loans = repository.findAll(); // <-- this line runs the SQL query
        model.addAttribute("loans", loans);
        return "view"; // view.jsp
    }


    // ================= Edit Loan ==================
    @GetMapping("/edit/{id}")
    public String editLoan(@PathVariable Long id, Model model) {
        Optional<PathModel> loanOpt = repository.findById(id);
        if (loanOpt.isPresent()) {
            model.addAttribute("loan", loanOpt.get());
            return "edit"; // edit.jsp
        } else {
            model.addAttribute("message", "Loan ID not found.");
            return "view";
        }
    }

    // ================= Update Loan ==================
    @PostMapping("/update")
    public String updateLoan(@ModelAttribute PathModel loan) {
        repository.save(loan);
        return "redirect:/view?message=Loan+Updated+Successfully!";
    }

    
    @GetMapping("/delete/{id}")
    public String deleteLoan(@PathVariable Long id, HttpSession session) {
        if (session.getAttribute("username") == null) {
            return "redirect:/login"; 
        }

        repository.deleteById(id); 
        return "redirect:/view"; 
    }

}