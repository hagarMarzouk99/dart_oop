void main() {
  User user = User("Hagar", "hagar@gmail.com" , 20);

  UserService userService = UserService(
    UserValidator(),
    UserRepository(),
  );

  userService.registerUser(user);
}






/*
 User data class 
 this class is responsible only for USER DATA 
*/
class User {
  String name ;
  String email;
  int age;

  User(this.name , this.email , this.age);
}

//========================================
/*
 Validation class
 this class is responsible only for validating user data
*/
class UserValidator {
  bool validate(User user){
    return user.name.isNotEmpty && user.email.contains('@') && user.age >= 18;
  }
}

// this class is responsible only for database operations
class UserRepository {
  void save(User user) {
    print("\nUser ${user.name} saved to database");
  }
}

// business logic class
// This class depends on other classes to perform its work
// but does not handle validation or database logic itself
class UserService {
  UserValidator validator;
  UserRepository repository;

  UserService(this.validator, this.repository);

  void registerUser(User user) {
    if (validator.validate(user)) {
      repository.save(user);
    } else {
      print("Invalid user data");
    }
  }
}

/*
===================== SOLID Principles ================

S - Single Responsibility 
O - Open/Closed  * easy to delete or create
L - Liskov Substitution   
I - Interface Segregation
D - Dependency Inversion


*/