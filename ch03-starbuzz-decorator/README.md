# Starbuzz Coffee

This application uses **Decorator** pattern to easily top up an item with multiple add-ons.

The Decorator Pattern attaches additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.

One may think of a decorator as a wrapper that adds functionality and/or changes existing behavior (eg. cost calculation, description generation). It does so via composition and delegation. As a decorator is the same type as the object is decorates, jQuery-style chaining becomes possible.

The pattern has been used heavily in Java I/O classes (eg. FileInputStream, BufferedInputStream).

Design Principles learned:

- Principle 1: Classes should be open for extension but closed for modification (open-closed principle of SOLID fame).
