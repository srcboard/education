package com.company.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.company.entity.Trainer;
import com.company.repo.TrainerRepository;

@Controller
@RequestMapping("/trainer/")
public class TrainerController {

    @Autowired
    private TrainerRepository trainerRepository;

    @RequestMapping(path = "/", method = RequestMethod.GET)
    public ModelAndView getIndex() {
        ModelAndView mav = new ModelAndView("trainers/index");
        mav.addObject("trainerList", trainerRepository.findAll());
        return mav;
    }

    @RequestMapping(path = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView getTrainer(@PathVariable Integer id) {

        ModelAndView mav = new ModelAndView("trainers/edit");
        mav.addObject("trainer", trainerRepository.findOne(id));
        return mav;
    }

    @RequestMapping(path = "/edit/{id}", method = RequestMethod.POST)
    public String postTrainer(@PathVariable Integer id, Trainer trainer) {
        trainerRepository.save(trainer);
        return "redirect:/trainer/";
    }

}
