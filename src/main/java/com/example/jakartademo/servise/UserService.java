package com.example.jakartademo.servise;

import com.example.jakartademo.entity.User;
import com.example.jakartademo.repository.UserRepository;

import java.util.List;

public class UserService {

    UserRepository userRepository = new UserRepository();

    public void printAllUserToConsole(){
        System.out.println(userRepository.getAllUsers());
    }

    public List<User> getAllUsers(){
        return userRepository.getAllUsers();
    }

    public User getUserById(int id){
        return userRepository.getUserById(id);
    }

    public void printUserToConsoleById(int id){
        System.out.println(userRepository.getUserById(id));
    }

    public User updateUser(int id, String login, String password){
        return userRepository.updateUser(id, login, password);
    }

    public void printAllAdminsToConsole(){
        System.out.println(userRepository.getAllAdmin());
    }

    public List<User> getAllAdmin() {
        return userRepository.getAllAdmin();
    }

    public User updateAdmin(int id, String login, String password){
        return userRepository.updateAdmin(id, login, password);
    }
}
