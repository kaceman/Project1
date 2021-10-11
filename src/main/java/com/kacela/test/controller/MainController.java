package com.kacela.test.controller;

import com.kacela.test.entity.Consumer;
import com.kacela.test.service.ConsumerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    ConsumerService consumerService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model)
    {
        List<Consumer> consumers = consumerService.getAllConsumers();
        model.addAttribute("consumers", consumers);

        return "index";
    }

    @RequestMapping(value = "/consumer/add", method = RequestMethod.GET)
    public String addConsumer(Model model)
    {
        model.addAttribute("consumer", new Consumer());
        return "add-consumer";
    }

    @RequestMapping(value = "/consumer/save", method = RequestMethod.POST)
    public String saveConsumer(@ModelAttribute("consumer") Consumer consumer)
    {
        consumerService.saveOrUpdate(consumer);
        return "redirect:/";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(Model model)
    {
        return "login-page";
    }


}
