# SimUDuck

> Favor composition over inheritance.

This application uses **Strategy** pattern to _delegate_ certain behaviors (varying parts of the application) to composing objects. This type of selective code reuse isn't possible with inheritance.

The Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.

Design Principles learned:

- Principle 1: Identify the parts of your application that vary and separate them from what stays the same.
- Principle 2: Program to an interface, not an implementation.
- Principle 3: Favor composition over inheritance (has-a over is-a).
