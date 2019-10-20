package edu.acc.jee.hubbub;

public class UserAuthenticator {
    
    public static boolean authenticate(UserDTO user, String validUsername,
			String validPassword) {
        if (user == null || user.getUsername() == null ||
                user.getPassword() == null) {
            return false;
        }
        if (user.getUsername().equals(validUsername) &&
                user.getPassword().equals(validPassword)) {
            return true;
        }
        
        return false;
    }
    
}
