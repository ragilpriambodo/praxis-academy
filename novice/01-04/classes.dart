main() {
  Pug p = new Pug.large('Duffy');
  print([p.name, p.age]);
}
 
class Dog {
  String name;
  int age;
 
  Dog(this.name, this.age);
    
    Dog.newBorn() {
    name = 'Doggy';
    age = 0;
  }
}

class Pug extends Dog {
  Pug(String name, int age): super(name, age);
  
  Pug.small(String name): this(name, 1);
 
  Pug.large(String name): this(name, 3);
}

