
package com.sg.contactlistspringmvc;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SearchController {
   @RequestMapping(value="/displaySearchPage", method=RequestMethod.GET)
   public String displaySearchPaget(){
       return "search";
   }
}
