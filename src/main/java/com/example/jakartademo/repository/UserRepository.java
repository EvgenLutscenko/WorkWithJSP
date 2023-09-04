package com.example.jakartademo.repository;

import com.example.jakartademo.entity.User;

import java.util.Arrays;
import java.util.List;

public class UserRepository {
    private List<User> repo = Arrays.asList(new User(1, "firstUser", "qwerty"),
            new User(2, "secondUser", "qwerty"), new User(3, "thirdUser", "qwerty"),
            new User(4, "fifthUser", "qwerty"), new User(5, "sixUser", "qwerty"),
            new User(6, "sevenUser", "qwerty"), new User(7, "eightUser", "qwerty")
            );

    private List<User> repoAdmins = Arrays.asList(new User(1, "admin", "admin"));
    public List<User> getAllUsers(){
        return repo;
    }

    public User getUserById(int id){
        return repo.get(id - 1);
    }

    public User updateUser(int id, String login, String password){
        repo.get(id - 1).setPassword(password);
        repo.get(id - 1).setLogin(login);

        return repo.get(id - 1);
    }


    public List<User> getAllAdmin(){
        return repoAdmins;
    }

    public User getAdminById(int id){
        return repoAdmins.get(id - 1);
    }

    public User updateAdmin(int id, String login, String password){
        repoAdmins.get(id - 1).setPassword(password);
        repoAdmins.get(id - 1).setLogin(login);

        return repoAdmins.get(id - 1);
    }


}
