package com.freeledger.ledgerapi.repository;

import com.freeledger.ledgerapi.model.User;

public interface UserRepository {

    int save(User user);

}
