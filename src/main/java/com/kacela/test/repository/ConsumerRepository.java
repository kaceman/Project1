package com.kacela.test.repository;

import com.kacela.test.entity.Consumer;
import org.springframework.data.repository.CrudRepository;

public interface ConsumerRepository extends CrudRepository<Consumer, Integer> {
}
