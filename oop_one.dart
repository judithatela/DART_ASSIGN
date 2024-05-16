// Interface for items with a name property
abstract class NamedItem {
  String get name;
}

// Base class for all library items
class LibraryItem implements NamedItem {
  @override
  final String name;

  LibraryItem(this.name);

  // Method to be overridden by subclasses
  void printDetails() {
    print("Name: $name");
  }
}

// Book class inherits from LibraryItem and implements NamedItem
class Book extends LibraryItem {
  final String author;

  Book(String name, this.author) : super(name);

  @override
  void printDetails() {
    super.printDetails();
    print("Author: $author");
  }
}

// Function to read data from a file (replace with actual file access)
List<Map<String, String>> readItemDataFromFile() {
  // Simulate reading data from a file (replace with actual file access logic)
  return [
    {"name": "Management of backyard indigenous chicken", "author": "J.A. Atela"},
    {"name": "Probiotics in poultry nutrition", "author": "Judy Atela"},
  ];
}

void main() {
  // Read book data from a simulated file
  List<Map<String, String>> bookData = readItemDataFromFile();

  // Create a list of books
  List<Book> books = [];
  for (var itemData in bookData) {
    books.add(Book(itemData["name"]!, itemData["author"]!));
  }

  // Print details of each book
  for (var book in books) {
    book.printDetails();
  }
}
