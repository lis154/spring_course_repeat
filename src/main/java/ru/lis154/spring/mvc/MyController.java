package ru.lis154.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MyController {

    @RequestMapping ("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping ("/askDetails")
    public String askEmployeeDetail(Model model){
        model.addAttribute("employee", new Employee());
        return "ask-emp-detail-view";
    }



    @RequestMapping ("/showDetails")
    public String showEmployeeDetail(@ModelAttribute ("employee") Employee emp){

        String name = emp.getName();
        emp.setName("Mr. " + name);

        return "show-emp-detail-view";
    }


}
