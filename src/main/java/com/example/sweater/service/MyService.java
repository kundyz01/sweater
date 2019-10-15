package com.example.sweater.service;

import com.example.sweater.domain.Message;

import java.util.List;

public interface MyService {
    List<Message>getMessageList();
    void save(Message message);
    void delete(Long id);
}
