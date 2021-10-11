package com.kacela.test.service;

import com.kacela.test.entity.Consumer;
import com.kacela.test.repository.ConsumerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ConsumerService {

    @Autowired
    ConsumerRepository consumerRepository;

    public List<Consumer> getAllConsumers()
    {
        List<Consumer> consumers = new ArrayList<Consumer>();
        consumerRepository.findAll().forEach(consumers::add);

        return consumers;
    }

    public void saveOrUpdate(Consumer consumer)
    {
        consumerRepository.save(consumer);
    }

    public void delete(int id)
    {
        consumerRepository.deleteById(id);
    }

}
