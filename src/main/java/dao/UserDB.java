package dao;

import dto.User;

import java.io.*;
import java.util.*;
import java.util.stream.Collectors;

public class UserDB {
    private static String PATH = "/Users/User/IdeaProjects/laba1_javaServlet/src/main/resources/data.txt";
    private static Map<UUID, User> DATA = loadFromFile();
    public static User findById(UUID id){return DATA.get(id);}
    public static List<User> findAll(){
        return DATA.values().stream()
            .sorted(Comparator.comparing(User::getName))
            .collect(Collectors.toList());
    }
    public static void dump(){
        try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(PATH)))
        {
            oos.writeObject(DATA);
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }

    private static Map<UUID, User> loadFromFile() {
        try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(PATH))){
            Map<UUID,User> data = (Map<UUID, User>) ois.readObject();
            return new HashMap<>(data);
        }
        catch (Exception exep){
            return new HashMap<>(Map.of(UUID.fromString("123e4567-e89b-12d3-a456-426614174001"),
                    new User(UUID.fromString("123e4567-e89b-12d3-a456-426614174001"),"User","s","s"),
                    UUID.fromString("123e4567-e89b-12d3-a456-426614174002"),
                    new User(UUID.fromString("123e4567-e89b-12d3-a456-426614174002"),"user2","u","12"),
                    UUID.fromString("123e4567-e89b-12d3-a456-426614174003"),
                    new User(UUID.fromString("123e4567-e89b-12d3-a456-426614174003"),"user3","Duck","Duck")));
        }
    }
}
