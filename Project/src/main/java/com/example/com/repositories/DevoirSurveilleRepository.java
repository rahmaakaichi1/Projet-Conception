package com.example.com.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.com.entities.DevoirSurveille;

public interface DevoirSurveilleRepository extends JpaRepository<DevoirSurveille, Long> {

	 DevoirSurveille save(DevoirSurveille devoirsurveille);

}
