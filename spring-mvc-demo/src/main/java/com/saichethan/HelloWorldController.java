package com.saichethan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

import java.util.Locale;

@Controller
public class HelloWorldController {

    //need a controller method to show the initial HTML form

    @RequestMapping("/main-menu")
    public String show()
    {
        return "main-menu";
    }

    @RequestMapping("/showForm")
    public String showForm()
    {
        return "helloworld-form";
    }

    // need a controller method to process the HTML form
    @RequestMapping("/processForm")
    public String processForm()
    {
        return "helloworld";
    }

//    @RequestMapping("/showForm")
//    public String showForm()
//    {
//        return "normalShowForm";
//    }
//
//    // need a controller method to process the HTML form
//    @RequestMapping("/processForm")
//    public String processForm()
//    {
//        return "normalProcessForm";
//    }

    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(
            @RequestParam("studentName") String theName, Model model)
    {
        //convert the data to all caps
        theName = theName.toUpperCase();

        //create the message
        String result = "Hello  " + theName + " , Welcome to the processFormVersionThree";

        //add message to  the model

        model.addAttribute("message",result);
        return "helloworld";
    }

    @RequestMapping("/processFormVersionTwo")
    public String letsShoutDude(HttpServletRequest request, Model model)
    {

        //read the request parameter from the HTML form
        String theName = request.getParameter("studentName");

        //convert the data to all caps
        theName = theName.toUpperCase();

        //create the message
        String result = "Hi " + theName;

        //add message to  the model

        model.addAttribute("message",result);
        return "helloworld";
    }
}
