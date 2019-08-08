main() {
     void user1 = new User();
     var user2 = User();
     
     user1.id = 121;
     user1.email = "sharadghimire5551@gmail.com"
     print("${user1.id} and ${user1.email}");
     
     user1.register();
     user1.login(email);
}class User {
    int id;
    String lastname;
    String firstname;
    String email;
    String password;    
    void login(email, password){
       print('Welcome! Your email is ${email}');
    }
    void register() => print('Thanks for registering');
}