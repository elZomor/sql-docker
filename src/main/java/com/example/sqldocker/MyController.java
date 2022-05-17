package com.example.sqldocker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "")
public class MyController {
    @Autowired
    PersonRepository personRepository;

    @GetMapping(value = "/persons")
    public ResponseEntity<List<Person>> getPersons() {
        List<Person> personList = personRepository.findAll();
        return new ResponseEntity<>(personList, HttpStatus.OK);
    }

    @PostMapping(value = "/persons")
    public ResponseEntity<Person> addPerson(@RequestBody Person person) {
        Person createdPerson = personRepository.save(person);
        return new ResponseEntity<>(createdPerson, HttpStatus.CREATED);
    }
}
