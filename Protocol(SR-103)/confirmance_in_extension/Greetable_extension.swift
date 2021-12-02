import Foundation

protocol Greetable {
    func sayHi()
}

extension Greetable {
    func sayHi() {
        print("Hello")
    }
}

func greetings(greeter: Greetable) {
    greeter.sayHi()
}

class Person { }

extension Person: Greetable {
    @objc func sayHi() {
        print("hello")
    }
}

class LoudPerson: Person {
    override func sayHi() {
        print("HELLO")
    }
}

greetings(greeter: Person()) // prints 'hello'
greetings(greeter: LoudPerson()) // prints 'Hello'