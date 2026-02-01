//user class   contain data of users
class User {
  String _name;
  String _email;

  User(this._name , this._email);

  String get name => _name;
  String get email => _email;
  
}

// category class
class Category {
  String _nameCategory ;
    Category(this._nameCategory);
  String get nameCategory => _nameCategory;
}


// expense class
abstract class Expense{
  double _amount ;
  Category _category;

  Expense(this._amount  , this._category);

 double calculateTotal(); // Polymorphism

  // encapsulation
  double get amount => _amount;
  Category get category => _category;
}

// food expense 
class FoodExpense extends Expense{
  FoodExpense(double amount , Category category) : super(amount, category);

  @override
  double calculateTotal() => amount;  
}

// travel expense
class TravelExpense extends Expense {
  TravelExpense(double amount, Category category) : super(amount,  category);

  @override
  double calculateTotal() => amount;
}

// Expense manager class
class ExpenseManager {
  List <Expense> _expenses = [];
  
  
    void addExpense(Expense expense) {
    _expenses.add(expense);
  }
  
  void printExpenses() {
    for (var e in _expenses) {
      print("${e.category.nameCategory} - ${e.amount}");
    }
  }

    double calculateTotal() {
    double total = 0;
    for (var e in _expenses) {
      total += e.calculateTotal();
    }
    return total;
  }

}
