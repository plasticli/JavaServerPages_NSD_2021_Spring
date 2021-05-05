package cn.edu.ahpu.llz;

import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

public class DBTool {
	public static void main(String[] args) {
		
	}
	public static List<User> getUsers(){
		List<User> users = new ArrayList<User>();
		String propertyFileName = "cn/edu/ahpu/llz/user";
		ResourceBundle resourceBundle = ResourceBundle.getBundle(propertyFileName);
		String[] usernames = resourceBundle.getString("username").split(",");
		String[] passwords = resourceBundle.getString("password").split(",");
		for (int i = 0; i < usernames.length; i++) {
			User user = new User(usernames[i],passwords[i]);
			users.add(user);
			System.out.println(usernames[i] + "," + passwords[i]);
		}
		return users;
	}
	
	public static boolean login(String username,String password){		
		String propertyFileName = "cn/edu/ahpu/llz/user";
		ResourceBundle resourceBundle = ResourceBundle.getBundle(propertyFileName);
		String[] usernames = resourceBundle.getString("username").split(",");
		String[] passwords = resourceBundle.getString("password").split(",");
		for (int i = 0; i < usernames.length; i++) 
			if(usernames[i].equals(username) && passwords[i].equals(password))
				return true;
		return false;
	}

}
