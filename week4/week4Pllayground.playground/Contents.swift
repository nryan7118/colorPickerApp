import Cocoa

var greeting = "Hello, playground"

/*--------------------Previous Code-----------------*/
struct Person {
  let firstName: String
  let lastName: String
  let age: Int
  
  func personCalled() {
    print("Name: \(firstName) \(lastName), Age: \(age)")
  }
}
var person = Person(firstName: "Nick", lastName: "Ryan", age: 37)
person.personCalled()

class Student {
  let person: Person
  let grades: [Int]
  
  init(person: Person, grades: [Int]) {
    self.person = person
    self.grades = grades
  }
  
  func calculateAverageGrade() -> Double {
    var sum = grades.reduce(0, +)
    var average = sum/grades.count
    return Double(average)
  }
  
  //  a) In the assignment for Module 3, part D asked you to write a function that would compute the average of an array of Int. Using that function and the array created in part A, create two overloaded functions of the function average.
  func calculateAverageGrade(recentScore: Int) -> Double {
    var sum = recentScore + grades.reduce(0, +)
    var average = sum/grades.count
    return Double(average)
  }
  
  func calcuculateAverageGrade( recentScore: Int, bonusPoints: Int) -> Double {
    var sum = bonusPoints + recentScore + grades.reduce(0, +)
    var average = sum/grades.count
    return Double(average)
  }
  
  
  func details() {
    print("Name: \(person.firstName) \(person.lastName), Age: \(person.age), GPA: \(calculateAverageGrade()) ")
  }
}

var student = Student(person: Person(firstName: "Nick", lastName: "Ryan", age: 37), grades: [94, 99, 81, 100, 70])
/* - --------------------------- emd of previous code*/

var updatedGrade = student.calculateAverageGrade(recentScore: Int(89.99))
student.calculateAverageGrade()
student.calcuculateAverageGrade(recentScore: 87, bonusPoints: 10)


//b) Create an enum called Animal that has at least five animals. Next, make a function called theSoundMadeBy that has a parameter of type Animal. This function should output the sound that the animal makes. For example, if the Animal pass is a cow, the function should output, “A cow goes moooo.” Hint: Do not use if statements to complete this section.
//Call the function twice, sending a different Animal each time.


enum Animals {
  case kobe
  case chronic
  case grey
  case blanketMonsater
  case filamentDog
}

func theSoundMadeBy (animal: Animals) {
  switch animal {
  case .kobe:
    print("Kobe goes woo woo woo")
  case .chronic:
    print("Chronic goes grrr......")
  case .grey:
    print("Grey goes gr... gr... gr..")
  case .blanketMonsater:
    print("Blanket Monster is gonna get you")
  case .filamentDog:
    print("Fliament dog goes bzzz.......bzz...")
  }
}

theSoundMadeBy(animal: .kobe)
theSoundMadeBy(animal: .chronic)

//This question will have you creating multiple functions that will require you to use closures and collections. First, you will do some setup.
//Create an array of Int called nums with the values of 0 to 100.
//Create an array of Int? called numsWithNil with the following values:
//79, nil, 80, nil, 90, nil, 100, 72
//Create an array of Int called numsBy2 with values starting at 2 through 100, by 2.
//Create an array of Int called numsBy4 with values starting at 2 through 100, by 4.

var nums = Array(1...100)
var numsWithNil: [Int?] = [79, nil, 80, nil, 90, nil, 100, 72]

var numsBy2: [Int] = []
for num in stride(from: 2, through: 100, by: 2) {
  numsBy2.append(num)
}

var numsBy4: [Int] = []
for num in stride (from: 2, through: 100, by: 4) {
  numsBy4.append(num)
}

//- Create a function called evenNumbersArray that takes a parameter of [Int] (array of Int) and returns [Int]. The array of Int returned should contain all the even numbers in the array passed. Call the function passing the nums array and print the output.
func evenNumbersArray (arrayOfInt:[Int]) -> [Int] {
  var evenNumbers: [Int] = []
  for int in arrayOfInt {
    if int % 2 == 0 {
      evenNumbers.append(int)
    }
  }
  return evenNumbers
}

var evenNums = evenNumbersArray(arrayOfInt: nums)
print(evenNums)

// Create a function called sumOfArray that takes a parameter of [Int?] and returns an Int. The function should return the sum of the array values passed that are not nil. Call the function passing the numsWithNil array, and print out the results.

func sumOfArray (num: [Int?]) -> Int {
  var sum = 0
  for num in num {
    if let unwrappedNum = num {
      sum += unwrappedNum
    }
  }
  return sum
  }

sumOfArray(num: numsWithNil)

////- Create a function called commonElementsSet that takes two parameters of [Int] and returns a Set<Int> (set of Int.) The function will return a Set<Int> of the values in both arrays.
//Call the function commonElementsSet passing the arrays numsBy2, numsBy4, and print out the results.

func commonElementsSet(array1: [Int], array2: [Int]) -> Set<Int> {
  let array1 = Set(array1)
  let array2 = Set(array2)
  
  let commonSet = array1.intersection(array2)
  
  return commonSet
}

commonElementsSet(array1: numsBy2, array2: numsBy4)

//d) Create a struct called Square that has a stored property called sideLength and a computed property called area. Create an instance of Square and print out the area.

struct Square {
  var sideLength: Double
  var area: Double {
    return sideLength * sideLength
  }
  
  init(sideLength: Double) {
    self.sideLength = sideLength
  }

}

var square = Square(sideLength: 48)

//above and beyond
//Note: you don’t need to complete Above and Beyond sections in order to pass the homework. If you need to, you can stop here. But if you have the time and bandwidth, the A&B sections will let you challenge yourself further.
//Create a protocol called Shape with a calculateArea() -> Double method. Create two structs called Circle and Rectangle that conform to the protocol Shape. Both Circle and Rectangle should have appropriate stored properties for calculating the area.
//Create instances of Circle and Rectangle and print out the area for each.


protocol Shape {
  func calculateArea() -> Double
}

struct Circle: Shape {
  var radius: Double = 0.0

  func calculateArea() -> Double {
    var area:Double {
       (.pi * radius * radius)
    }
    return area
  }
  init(radius: Double) {
    self.radius = radius
  }
}

struct Rectangle: Shape {
  var length: Double
  var width: Double
  
  func calculateArea() -> Double {
    var area: Double {
      length * width
    }
    return area
    }
  init(length: Double, width: Double) {
    self.length = length
    self.width = width
  }
  }

extension Shape {
  func calculateVolume() -> Double {
    return 0
  }
}

struct Sphere{
  var radius: Double
  func calculateArea() -> Double {
    var area: Double {
      (.pi * 4 * radius * radius * radius)
    }
    return area
  }
  init(radius: Double) {
    self.radius = radius
  }
  
  func calculateVolume() -> Double {
    (4/3) * Double.pi * radius * radius * radius
  }
}

var rectangele = Rectangle(length: 23, width: 20)
rectangele.calculateArea()
var circle = Circle(radius: 18)
circle.calculateArea()
var sphere = Sphere(radius: 19)
print(sphere.calculateArea())
print(sphere.calculateVolume())




