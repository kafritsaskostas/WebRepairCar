package com.repair.car.services;

import com.repair.car.Repositories.UserRepository;
import com.repair.car.domain.User;
//import com.repair.car.Exceptions.InvalidCredentialsException;
//import com.repair.car.Exceptions.LogoutException;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AccountServiceImpl implements AccountService{
    private final static org.slf4j.Logger LOG = LoggerFactory.getLogger(AccountServiceImpl.class);

    @Autowired
    private UserRepository userRepository;

    @Override
    public User login(String email, String password) throws AuthenticationException {

        User retrievedUser = userRepository.findByEmailAndPassword(email, password);
        if (retrievedUser == null) {
            //throw new InvalidCredentialsException("User not found!");
            System.out.println("User not found!");
        }
        return retrievedUser;
    }

    @Override
    public void logout(String username) {
        /*try {
            userRepository.logout(username);
        } catch (Exception e) {
            //throw new LogoutException("User not logged in!");
        }*/
    }

    @Override
    public void register(User user) throws Exception {
        /*userRepository.register(user);
        LOG.debug("User has been registered!");*/
    }

}
