# Understanding Data Type

## 1. Data Type:

* (string) A person’s telephone number
* (float) A person’s height
* (byte) A person’s age
* (string) A person’s gender (Male, Female, Prefer Not To Answer)
* (decimal) A person’s salary
* (string) A book’s ISBN
* (decimal) A book’s price
* (float) A book’s shipping weight
* (double) A country’s population
* (decimal) The number of stars in the universe
* (ushort) The number of employees in each of the small or medium businesses in the United Kingdom (up to about 50,000 employees per business)

## 2. What are the difference between value type and reference type variables? What is boxing and unboxing?

* Value type will directly hode the value. Reference type will hold memory address or reference for its value.
* Value type will be stored in stack memory. Reference type will be stored in heap memory.
* Value type won't be collected by garbage collector. Reference type will.
* Value type can be created by Struct or Enum. Reference type can be created by classes, interfaces, delegates, arrays.
* Value type can't accept Null values. Reference type can

* Boxing means converting a value type into a reference type. Unboxing means conterting a reference type into a value type.

## 3. What is meant by the terms managed resource and unmanaged resource in .NET

* Managed means the resource is directly controlled by the garbage collector. And unmanaged means its not.

## 4. Whats the purpose of Garbage Collector in .NET?

* Garbage collector helps the engine performs better by releasing memory that can no longer be accessed. 

# Practice number sizes and ranges
## 1. Data types
```
Console.WriteLine("sbyte\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(sbyte), sbyte.MaxValue, sbyte.MinValue);

Console.WriteLine("byte\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(byte), byte.MaxValue, byte.MinValue);

Console.WriteLine("short\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(short), short.MaxValue, short.MinValue);

Console.WriteLine("ushort\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(ushort), ushort.MaxValue, ushort.MinValue);

Console.WriteLine("int\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(int), int.MaxValue, int.MinValue);

Console.WriteLine("uint\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(uint), uint.MaxValue, uint.MinValue);

Console.WriteLine("long\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(long), long.MaxValue, long.MinValue);

Console.WriteLine("ulong\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(ulong), ulong.MaxValue, ulong.MinValue);

Console.WriteLine("float\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(float), float.MaxValue, float.MinValue);

Console.WriteLine("double\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(double), double.MaxValue, double.MinValue);

Console.WriteLine("decimal\tSize = {0}\t Max Value: {1}\t Min Value: {2}", sizeof(decimal), decimal.MaxValue, decimal.MinValue);
```


## 2. Convert time
```
class time_convert
{
    public static void Main()
    {
        uint c;
        string inp;
        inp = Console.ReadLine();
        c = Convert.ToUInt32(inp, 16);
        uint y = c * 100;
        uint d = y * 365;
        uint h = d * 24;
        ulong m = h * 60;
        ulong s = m * 60;
        string mis = (char)s + "000";
        string mcs = mis + "000";
        string nos = mcs + "000";

        Console.WriteLine($"{c} centuries = {y} years = {d} days = " +
            $"{h} hours = {m} minutes = {s} seconds = {mis} milliseconds =" +
            $" {mcs} microseconds = {nos} nanoseconds");
    }
}
```

# Controlling Flow and Converting Types
1. What happens when you divide an int variable by 0?
* I shall have a DivideByZeroException exception.

2. What happens when you divide a double variable by 0?
* I shall receive a positive infinity, negative infinity, or not a number (NaN).

3. What happens when you overflow an int variable, that is, set it to a value beyond its range?
* I shall not get an exception, and the result will be looped back. Which means MaxValue + 1 = MinValue.

4. What is the difference between x = y++; and x = ++y?
* x = y++ means y will assign the value to x and then increase. x = ++y means y will increase first, and then assign the value to x.

5. What is the difference between break, continue, and return when used inside a loop statement?
* The break statement: terminates the closest enclosing iteration statement or switch statement.
* The continue statement: starts a new iteration of the closest enclosing iteration statement.
* The return statement: terminates execution of the function in which it appears and returns control to the caller.

6. What are the three parts of a for statement and which of them are required?
* The keyword For that starts the loop, the condition being tested, and the EndFor keyword that terminates the loop. Each component is required.

7. What is the difference between the = and == operators?
* = means assigning value. == means compairing whether the two values are the same and return True or False.

8. Does the following statement compile? for ( ; true; ) ;
* Yes, and it will loop forever untill reaches the maximum.

9. What does the underscore _ represent in a switch expression?
* It means replacing the default keyword to signify that it should match anything if reached.

10. What interface must an object implement to be enumerated over by using the foreach statement?
* IEnumerable interface.

# Practice loops and operators
## 1. FizzBuzz
* The result is that, it will loop forever because of overflow. When byte i achieves 255, i++ will make it become 0, and the stop condition will never meet.
* I shall probably create a int variable to calculate the number of loops, and raise an exception if it reaches the threshold. Or raise an exception when I see the same i value twice.


## 2. Print a Pyramid
```
class pyramid
{
    int layer = int.Parse(Console.ReadLine());
    static void main(int layer)
    {
        int w = layer * 2 - 1;
        for (int l = 1; l <= layer; l++)
        {
            int s = 2 * l - 1;
            int b = layer - l;
            string blank = String.Concat(Enumerable.Repeat(" ", b));
            string star = String.Concat(Enumerable.Repeat("*", s));
            string sol = String.Concat(blank, star, blank);
            Console.WriteLine(sol);
        }
    }
}
```


## 3. Guess Value

```
class Guess
{
    public int correctNumber = new Random().Next(3) + 1;
    static void Main(int correctNumber)
    {
        int guessedNumber = int.Parse(Console.ReadLine());
        while (guessedNumber != correctNumber) ;
        {
            if (guessedNumber < 1 || guessedNumber > 3)
            {
                Console.WriteLine("Please enter a number between 1 and 3");

            }
            else if (guessedNumber < correctNumber)
            {
                Console.WriteLine("Your guess is too small");
            }
            else 
            {
                Console.WriteLine("Your guess is too big");
            }
            int new_guessedNumber = int.Parse(Console.ReadLine());
            guessedNumber = new_guessedNumber;
        }

        Console.WriteLine("Correct!");

    }
}
```


## 4. Birthday
```
class birthday
{
    DateTime birth = DateTime.Parse(Console.ReadLine());
    DateTime now = DateTime.Today;

    static void main(DateTime birth, DateTime now)
    {
        int nd = (now - birth).Days;
        Console.WriteLine($"You are {nd} days old.");

    }
}
```


## 5. Greetings
```
class greeting
{
    DateTime now = DateTime.Now;
    public static void greetings(DateTime now)
    {
        int hour = now.Hour;
        if (hour <= 6)
        {
            Console.WriteLine("Good Night");
        }
        if (hour > 6 && hour <= 12)
        {
            Console.WriteLine("Good Morning");
        }
        if (hour > 12 && hour <= 13)
        {
            Console.WriteLine("Good Afternoon");
        }
        if (hour > 13 && hour <= 18)
        {
            Console.WriteLine("Good Evening");
        }
        if (hour > 18)
        {
            Console.WriteLine("Good Night");
        }
    }
}
```


## 6. Counting
```
class counting
{
    public static void count24()
    {
        for (int i = 1; i < 5; i++)
        {
            for (int cur = 0; cur<=24; cur+=i)
            {
                Console.WriteLine($"{cur}, ");
            }
        }
    }
}
```


