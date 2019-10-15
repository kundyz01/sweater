package com.example.sweater;

import com.example.sweater.domain.Message;
import com.example.sweater.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class GreetingController {

    @Autowired
    private MyService myService;

    @GetMapping("/getList")
    public List<Message> getList() {
        return myService.getMessageList();
    }

    @PostMapping("/save")
    public void saveMessage(@RequestBody Message message) {
        System.out.println(message.getLastname());
        System.out.println(message.getFirstname());
        System.out.println(message.getName());
        myService.save(message);
    }

    @DeleteMapping("/delete/{id}")
    public String deleteMessage( @PathVariable Long id){
        myService.delete(id);
        return  "ok";



    }
    }

