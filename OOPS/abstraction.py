from abc import ABC, abstractmethod

# Abstract class
class Shape(ABC):
    # Abstract method
    @abstractmethod
    def area(self):
        pass

    # Abstract method
    @abstractmethod
    def perimeter(self):
        pass

class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

    def perimeter(self):
        return 2 * (self.width + self.height)

class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return 3.14 * self.radius ** 2

    def perimeter(self):
        return 2 * 3.14 * self.radius


shapes = [
    Rectangle(5, 10),  # Rectangle object
    Circle(7)          # Circle object
]

for shape in shapes:
    print(f"Shape: {shape.__class__.__name__}")
    print(f"Area: {shape.area()}")
    print(f"Perimeter: {shape.perimeter()}")
    print("-" * 20)
