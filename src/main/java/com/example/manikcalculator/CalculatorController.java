package com.example.manikcalculator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalculatorController {

    @RequestMapping(value = "/calculate", method = RequestMethod.POST)
    public ModelAndView calculate(HttpServletRequest request, HttpServletResponse response) {

        ModelAndView modelAndView = new ModelAndView();
        double num1, num2, result;
        String operation;
        
        try {
            num1 = Double.parseDouble(request.getParameter("num1"));
            num2 = Double.parseDouble(request.getParameter("num2"));
        } catch (NumberFormatException e) {
            modelAndView.setViewName("error");
            modelAndView.addObject("message", "Please enter valid numbers");
            return modelAndView;
        }

        operation = request.getParameter("operation");

        switch (operation) {
            case "add":
                result = num1 + num2;
                break;
            case "subtract":
                result = num1 - num2;
                break;
            case "multiply":
                result = num1 * num2;
                break;
            case "divide":
                if (num2 == 0) {
                    modelAndView.setViewName("error");
                    modelAndView.addObject("message", "Cannot divide by zero");
                    return modelAndView;
                } else {
                    result = num1 / num2;
                    break;
                }
            default:
                modelAndView.setViewName("error");
                modelAndView.addObject("message", "Invalid operation selected");
                return modelAndView;
        }

        modelAndView.setViewName("result");
        modelAndView.addObject("result", result);

        return modelAndView;
    }
}
