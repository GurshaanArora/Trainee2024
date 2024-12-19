from abc import ABC, abstractmethod

# interface
class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

    @abstractmethod
    def perimeter(self):
        pass

# Implementing interface in Rectangle class
class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

    def perimeter(self):
        return 2 * (self.width + self.height)

# Implementing interface in Circle class
class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return 3.14 * self.radius ** 2

    def perimeter(self):
        return 2 * 3.14 * self.radius

# Using the interface
rectangle = Rectangle(5, 10)
circle = Circle(7)

print("Rectangle:")
print(f"Area: {rectangle.area()}")
print(f"Perimeter: {rectangle.perimeter()}")

print("\nCircle:")
print(f"Area: {circle.area()}")
print(f"Perimeter: {circle.perimeter()}")
