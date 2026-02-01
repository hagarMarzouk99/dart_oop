 
 import 'user_model.dart';

void main() {

  // Categories
  Category food = Category("Food");
  Category travel = Category("Travel");

  // Expense Manager
  ExpenseManager manager = ExpenseManager();

  // Add Expenses
  manager.addExpense(FoodExpense(50.0, food));
  manager.addExpense(TravelExpense(200.0, travel));
  manager.addExpense(FoodExpense(30.0,food));

  // Print Expenses
  manager.printExpenses();

  // Print total
  print("Total Expenses: ${manager.calculateTotal()}");
}

 