package example.controllers;

import example.entities.Author;
import example.services.AuthorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class ApplicationController {

    @Autowired
    AuthorsService authorsService;

    @RequestMapping(value = { "/index"}, method = RequestMethod.GET)
    public String watchIndex(Model model){
        return "index";
    }



    @RequestMapping(value = "/authors", method = RequestMethod.GET)
    public String watchGroups(Model model){
        List<Author> groups = authorsService.findAll();
        model.addAttribute("authors", groups);
        return "authors";
    }


}
