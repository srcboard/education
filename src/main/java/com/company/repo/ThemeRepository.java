package com.company.repo;

import org.springframework.data.repository.CrudRepository;
import com.company.entity.Theme;

public interface ThemeRepository extends CrudRepository<Theme, Integer> {

}
