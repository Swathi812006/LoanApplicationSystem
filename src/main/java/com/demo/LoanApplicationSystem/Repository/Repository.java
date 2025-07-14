package com.demo.LoanApplicationSystem.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.demo.LoanApplicationSystem.PathModel.PathModel;

public interface Repository extends JpaRepository<PathModel, Long> {
}