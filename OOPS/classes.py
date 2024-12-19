# Class
class Person:
    # Constructor 
    def __init__(self, name, age, college):
        self.name = name
        self.age = age
        self.college = college

    def display_info(self):
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
        print(f"College: {self.college}")


# Objects
person1 = Person("Gurshaan", 22, "LDCE")
person2 = Person("Rohan", 23, "CEPT")
print("Person 1 details:")
person1.display_info()

print("\nPerson 2 details:")
person2.display_info()
