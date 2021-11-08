package com.freeledger.ledgerapi.repository;

import com.freeledger.ledgerapi.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public int save(User user) {
        return jdbcTemplate.update("INSERT INTO USER (NAME, ADDRESS, PHONE_NUMBER, ID_NUMBER) VALUES(?,?,?, ?)",
                new Object[] { user.getName(), user.getAddress(), user.getPhoneNumber(), user.getIdNumber()});
    }
}
