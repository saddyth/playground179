
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
