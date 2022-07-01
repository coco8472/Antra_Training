# Object-Oriented Programming

1. What are the six combinations of access modifier keywords and what do they do? 
* Public. Objects are accessible from everywhere in a project without any restrictions.
* Private. Objects are accessible only inside a class or a structure. As a result, we can’t access them outside the class they are created.
* Protected. Objects are accessible inside the class and in all classes that derive from that class.
* Internal. The access is limited exclusively to classes defined within the current project assembly.
* Protected Internal. It is a combination of protected and internal. As a result, we can access the protected internal member only in the same assembly or in a derived class in other assemblies.
* Private Protected. It is a combination of the private and protected keywords. We can access members inside the containing class or in a class that derives from a containing class, but only in the same assembly(project). 

2. What is the difference between the static, const, and readonly keywords when applied to a type member?
* For the readonly keyword, the latest value is known by the runtime. For the const keyword, the value must be known by compile time. 
* Readonly can only be initialized at the class-level.
* Const variables can be referenced through "ClassName.VariableName", while readonly can be referenced through "InstanceName.VariableName".

3. What does a constructor do?
* Constructor is a method that will invoke automatically whenever an instance of class or struct is created. The constructor will have the same name as the class or struct, and it is useful to initialize and set default values for the data members of the new object.

4. Why is the partial keyword useful?
* The partial keyword indicates that other parts of the class, struct, or interface can be defined in the namespace. All the parts must use the partial keyword.

5. What is a tuple?
* It is a data structure which consists of the multiple parts.

6. What does the C# record keyword do?
* It defines a reference type that provides built-in functionality for encapsulating data.

7. What does overloading and overriding mean?
* Overloading is the ability to have multiple methods within the same class with the same name, but with different parameters.
* Overriding is the ability to redefine the implementation of a method in a class that inherits from a parent class.

8. What is the difference between a field and a property?
* A field is a variable of any type that is declared directly in the class while property is a member that provides a flexible mechanism to read, write or compute the value of a private field.

9. How do you make a method parameter optional?
* I can assign default values for that parameter

10. What is an interface and how is it different from abstract class?
* An interface in C# is a type definition similar to a class, except that it purely represents a contract between an object and its user.
* The difference is that, interface can have methods, properties, events, and indexers as its members. But interfaces will contain only the declaration of the members.

11. What accessibility level are members of an interface?
* Public

12. True/False. Polymorphism allows derived classes to provide different implementations of the same method.
* True

13. True/False. The override keyword is used to indicate that a method in a derived class is providing its own implementation of a method.
* True

14. True/False. The new keyword is used to indicate that a method in a derived class is providing its own implementation of a method.
* False

15. True/False. Abstract methods can be used in a normal (non-abstract) class. 
* False

16. True/False. Normal (non-abstract) methods can be used in an abstract class. 
* False

17. True/False. Derived classes can override methods that were virtual in the base class. 
* False

18. True/False. Derived classes can override methods that were abstract in the base class. 
* True

19. True/False. In a derived class, you can override a method that was neither virtual non abstract in the base class.
* True

20. True/False. A class that implements an interface does not have to provide an implementation for all of the members of the interface.
* False

21. True/False. A class that implements an interface is allowed to have other members that aren’t defined in the interface.
* False

22. True/False. A class can have more than one base class.
* True

23. True/False. A class can implement more than one interface
* True


# Working with methods
## 1. Reverse Array
```
static void Main()
{
    int[] numbers = GenerateNumbers();
    int j = numbers.Length - 1;
    int temp = 0;
    for (int i = 0; i < (numbers.Length) / 2; i++)
    {
        temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
        j--;
    }
    Console.WriteLine(String.Join(", ", numbers.ToArray()));
}     
```


## 2. Fibonacci
```
static void Main()
{
    int a = 1;
    int b = 1;
    int k = 10;
    int c = a + b;
    for (int i = 1; i <= k; i++)
    {
        Console.WriteLine($"The {i}th element is: {a}");
        a = b;
        b = c;
        c = a + b;
    }
}
int Fibonacci(int k)
{
    int a = 1;
    int b = 1;
    int c = a + b;
    for (int i = 1; i < k; i++)
    {
        a = b;
        b = c;
        c = a + b;
    }
    return a;
}
```

# Designing and Building Classes using object-oriented principles
## 1. Basic Principles
```
// Abstraction:
abstract class Shape
{
    public abstract double area();
}

// Encapsulation
public class Circle
{
    private float radius;
    public float Radius
    {
        get
        {
            return radius;
        }
        set
        {
            radius = value;
        }
    }
}

// Inheritance
class Cube : Shape
{
    public float leng;
    public override double area()
    {
        return leng * leng;
    }
}

// Polymorphism
class Rectangle : Shape
{
    public float length1;
    public float length2;
    public override double area()
    {
        return length1 * length2;
    }
}   

```


## 2. Abstraction
```
abstract class Person
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public int Age { get; set; }
    public string Address { get; set; }
    public abstract void PrintDetails();
    public void PrintBasicInfo()
    {
        Console.WriteLine("First Name - {0}", FirstName);
        Console.WriteLine("Last Name - {0}", LastName);
        Console.WriteLine("Age - {0}", Age);
        Console.WriteLine("Address - {0}", Address);
    }
}
class Student : Person
{
    public long RollNumber { get; set; }
    public int Class { get; set; }
    public string Stream { get; set; }
    public override void PrintDetails()
    {
        Console.WriteLine("First Name - {0}", FirstName);
        Console.WriteLine("Last Name - {0}", LastName);
        Console.WriteLine("Age - {0}", Age);
        Console.WriteLine("Address - {0}", Address);
        Console.WriteLine("Roll Number - {0}", RollNumber);
        Console.WriteLine("Class - {0}", Class);
        Console.WriteLine("Stream - {0}", Stream);
    }
}
class Instructor : Person
{
    public string Speciality { get; set; }
    public long Salary { get; set; }
    public override void PrintDetails()
    {
        Console.WriteLine("First Name - {0}", FirstName);
        Console.WriteLine("Last Name - {0}", LastName);
        Console.WriteLine("Age - {0}", Age);
        Console.WriteLine("Address - {0}", Address);
        Console.WriteLine("Speciality - {0}", Speciality);
        Console.WriteLine("Salary - {0}", Salary);
    }
}
```


## 3. Encapsulation



## 4. Inheritance




## 5. Polymorphism




## 6. Interface




## 7. Create two classes



