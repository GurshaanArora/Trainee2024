from enum import Enum, unique

# enumeration
@unique
class Day(Enum):
    MONDAY = 1
    TUESDAY = 2
    WEDNESDAY = 3
    THURSDAY = 4
    FRIDAY = 5
    SATURDAY = 6
    SUNDAY = 7

# Accessing enum members
print("Accessing Enum Members:")
print(Day.MONDAY)
print(Day.TUESDAY)

# Accessing the value and name
print("\nEnum Member Details:")
print(f"Name: {Day.FRIDAY.name}, Value: {Day.FRIDAY.value}")

# Iterating through the enum
print("\nIterating Through Enum:")
for day in Day:
    print(f"{day.name}: {day.value}")

# Comparing enum members
print("\nComparing Enum Members:")
if Day.SATURDAY == Day.SATURDAY:
    print("Both are the same day.")
if Day.MONDAY != Day.SUNDAY:
    print("Different days.")
