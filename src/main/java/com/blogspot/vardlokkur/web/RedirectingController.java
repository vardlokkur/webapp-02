package com.blogspot.vardlokkur.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/form.html")
public class RedirectingController {

    @RequestMapping(method = RequestMethod.POST)
    public String onPost(@RequestParam("entityId") String entityId) {
        return "redirect:form.html?entityId=" + entityId;
    }

    @RequestMapping(method = RequestMethod.GET)
    public void onGet() {
        // Do nothing ...
    }

}
