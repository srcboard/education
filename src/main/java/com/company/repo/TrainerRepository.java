package com.company.repo;

import org.springframework.data.repository.CrudRepository;
import com.company.entity.Trainer;

public interface TrainerRepository extends CrudRepository<Trainer, Integer> {

}
