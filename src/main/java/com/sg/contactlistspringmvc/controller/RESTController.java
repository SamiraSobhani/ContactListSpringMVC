/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.contactlistspringmvc.controller;
import com.sg.contactlistspringmvc.dao.ContactListDao;
import com.sg.contactlistspringmvc.model.Contact;
import javax.inject.Inject;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author ss121
 */
@CrossOrigin
@Controller
public class RESTController {
private ContactListDao dao;
 
    @Inject
    public RESTController(ContactListDao dao) {
        this.dao = dao;
    }
    
    @RequestMapping(value = "/contact/{id}", method = RequestMethod.GET)
@ResponseBody
public Contact getContact(@PathVariable("id") long id) {
    return dao.getContactById(id);
}

@RequestMapping(value = "/contact", method = RequestMethod.POST)
@ResponseStatus(HttpStatus.CREATED)
@ResponseBody
public Contact createContact(@RequestBody Contact contact) {
    return dao.addContact(contact);
}

}

