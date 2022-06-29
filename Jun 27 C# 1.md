# Understanding Data Type

## 1. Data Type:

* (char) A person’s telephone number
* (float) A person’s height
* (byte) A person’s age
* (char) A person’s gender (Male, Female, Prefer Not To Answer)
* (decimal) A person’s salary
* (char) A book’s ISBN
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

## 2. Convert time
``
test1
``

`test`


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

        Console.WriteLine($"{c} centuries = {y} years = {d} days = {h} hours = {m} minutes = {s} seconds = {mis} milliseconds = {mcs} microseconds = {nos} nanoseconds");

    }
}



# Controlling Flow and Converting Types
1. What happens when you divide an int variable by 0?
* I shall have a DivideByZeroException exception.

3. What happens when you divide a double variable by 0?
4. What happens when you overflow an int variable, that is, set it to a value beyond its range?
5. What is the difference between x = y++; and x = ++y;?
6. What is the difference between break, continue, and return when used inside a loop statement?
7. What are the three parts of a for statement and which of them are required?
8. What is the difference between the = and == operators?
9. Does the following statement compile? for ( ; true; ) ;
10. What does the underscore _ represent in a switch expression?
11. What interface must an object implement to be enumerated over by using the foreach
statement?


# Practice loops and operators
1. a
2. a
3. a
4. a
5. a
6. a


