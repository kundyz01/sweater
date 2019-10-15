package com.example.sweater.service;

import com.example.sweater.domain.Message;
import com.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyServiceImpl implements MyService {

    @Autowired
    private MessageRepo messageRepo;

    @Override
    public List<Message> getMessageList() {
        return messageRepo.findAll();
    }

    @Override
    public void save(Message message) {
        messageRepo.save(message);
    }

    @Override
    public void delete(Long id) {
        messageRepo.deleteById(id);
    }

}
