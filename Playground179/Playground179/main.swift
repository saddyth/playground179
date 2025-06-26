
import Foundation

// Task 1.1
//Напишите функцию greet(name:), которая принимает имя пользователя и выводит приветствие в формате: "Hello, [имя]!".
func sayHello(name: String) {
    print("Hello, \(name)")
}
sayHello(name: "Polina")

//Task 1.2
//Напишите функцию add(a:b:), которая принимает два числа и возвращает их сумму.
func sumFunc(x: Int, y: Int) -> Int {
    return x + y
}

let sumResult = sumFunc(x: 5, y: 3)
print(sumResult)

//Task 1.3
//Площадь прямоугольника
//Напишите функцию rectangleArea(width:height:), которая вычисляет площадь прямоугольника по его ширине и высоте.

func rectangleArea(width: Int, height: Int) {
    print(width * height)
}

rectangleArea(width: 10, height: 5)

//Task 1.4
//Факториал числа
//Напишите функцию factorial(of:), которая вычисляет факториал заданного числа.

func factorial(of: Int) -> Int{
    if of == 0 {
        return 1
    }
    var numFactorial = 1
    for i in 1...of {
        numFactorial *= i
    }
    return numFactorial
}
let factorialResult = factorial(of: 10)
print(factorialResult)


//Task 1.5
//Проверка четности
//Напишите функцию isEven(number:), которая проверяет, является ли число четным, и возвращает true или false.

func isEven(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}
let isEvenResult = isEven(number: 6)
print(isEvenResult)


//Task 2.1
//Напишите функцию calculate(a:b:operation:), которая принимает два числа и операцию (+, -, *, /) и возвращает результат вычисления.Обработайте случай деления на ноль.
func calculate(a: Int, b: Int, operation: String) -> Int? {
    guard b != 0 else {
        return nil
    }
    switch operation {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        return a / b
    default:
        return nil
    }
}
if let calcResult = calculate(a: 12, b: 0, operation: "/") {
    print(calcResult)
} else {
    print("На 0 делить нельзя")
}

//Task 2.2
//Напишите функцию findMax(numbers:), которая принимает массив чисел и возвращает максимальное значение.
//Если массив пустой, функция должна вернуть nil.

func findMax(numbers: [Int]) -> Int? {
    guard !numbers.isEmpty else {
        return nil
    }
    var maxValue = numbers[0]
    for number in numbers {
        if number > maxValue {
            maxValue = number
        }
    }
    return maxValue
}
if let maxResult = findMax(numbers: [-10,-5,-2,-6,-1,-7,-5]) {
    print(maxResult)
} else{
    print("Массив пустой")
}

//Task 2.3
// Генерация таблицы умножения
//Напишите функцию multiplicationTable(for:), которая принимает число и выводит таблицу умножения для этого числа.

func multiplicationTable(number: Int) -> [Int]? {
    guard number != 0 else {
        return nil
    }
    var multArr = [Int]()
    for i in 0...number {
        multArr.append(number * i)
    }
    return multArr
}
if let multResult = multiplicationTable(number: 0) {
    for (i, number) in multResult.enumerated() {
        print("\(multResult[1]) x \(multResult[i]) = \(number)")
    }
} else {
    print("Введен 0")
}

//Task 2.4
//Напишите функцию reverseString(_:), которая принимает строку и возвращает ее в обратном порядке.
//Например, для строки "hello" результат должен быть

func reverseString(word: String) -> String? {
    guard !word.isEmpty else{
        return nil
    }
    let reversedWord = String(word.reversed())
    return reversedWord
}

if let reverseResul = reverseString(word: "Hello") {
    print(reverseResul)
} else {
    print("Строка пустая")
}

//Task 2.5
//Напишите функцию isPalindrome(_:), которая проверяет, является ли строка палиндромом (читается одинаково слева направо и справа налево).

func isPalindrome(word: String) -> Bool? {
    guard !word.isEmpty else{
        return nil
    }
    if word.lowercased() == String(word.lowercased().reversed()) {
        return true
    } else {
        return false
    }
}
if let palindromeResult = isPalindrome(word: "Radar") {
    print(palindromeResult)
} else {
    print("Строка пустая")
}

// Task 3.1
//Напишите функцию fibonacciSequence(count:), которая возвращает массив из первых N чисел последовательности Фибоначчи.

func fibonacciSequence(numberOfFibonacci: Int) -> [Int]? {
    var fibonacciArr = [Int]()
    guard numberOfFibonacci != 0 else {
        return nil
    }
    if numberOfFibonacci > 1 {
        fibonacciArr.append(contentsOf: 0...1)
        for i in 1..<numberOfFibonacci - 1 {
            fibonacciArr.append(fibonacciArr[i] + fibonacciArr[i-1])
        }
    } else if numberOfFibonacci == 1 {
        fibonacciArr.append(0)
        return fibonacciArr
    }
  return fibonacciArr
}

if let fibonacciRes = fibonacciSequence(numberOfFibonacci: 2) {
    print(fibonacciRes)
} else {
    print("Вы ввели 0")
}

//Task 3.2
//Поиск простых чисел
//Напишите функцию findPrimes(upTo:), которая возвращает массив всех простых чисел до заданного числа.

func findPrimes(upTo: Int) -> [Int]? {
    guard upTo != 0 else{
        return nil
    }
    var primeArr = [1]
    if upTo == 1 {
        return primeArr
    } else {
        for i in 2..<upTo {
            if upTo % i != 0 {
                primeArr.append(i)
            }
        }
    }
    return primeArr
}

if let primeRes = findPrimes(upTo: 1) {
    print(primeRes)
} else {
    print("Вы ввели 0")
}

//Task 3.3
//Рекурсивный факториал
//Реализуйте функцию factorialRecursive(of:), которая вычисляет факториал числа рекурсивно.
func factorialRecursive(_ of: Int) -> Int{
    if of == 0 {
        return 1
    }
    
    return of * factorialRecursive(of - 1)
}
print(factorialRecursive(6))


//Task 3.4
//Напишите функцию splitString(by:), которая разбивает строку на подстроки по заданному разделителю и возвращает массив строк.
//Например, для строки "apple,banana,cherry" и разделителя "," результат должен быть ["apple", "banana", "cherry"].

func splitString(mark: String, line: String) -> [String] {
    let splitedLine = line.components(separatedBy: mark)
    return splitedLine
}
print(splitString(mark: ".", line: "apple.mango.banana"))

//Task 3.5
//Напишите функцию countLettersAndDigits(_:), которая принимает строку и возвращает количество букв и цифр в ней.
//Например, для строки "abc123!@#" результат должен быть (letters: 3, digits: 3).
func countLettersAndDigits(line: String) -> (Int, Int) {
    var tuple = (letters: 0, digits: 0)
    for character in line{
            if character.isNumber{
                tuple.1 += 1
            } else if character.isLetter {
                tuple.0 += 1
            }
        }
    return tuple
}
let countResult = countLettersAndDigits(line: "abcd125552")
print("letters: \(countResult.0), digits: \(countResult.1) ")
