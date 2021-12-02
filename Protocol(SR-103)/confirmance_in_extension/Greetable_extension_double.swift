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

class GentlePerson: Person {
    override func sayHi() {
        print("helloha")
    }
}

class Cat { }

extension Cat: Greetable {
    @objc func sayHi() {
        print("miao")
    }
}

class LoudCat: Cat {
    override func sayHi() {
        print("MIAO")
    }
}


greetings(greeter: Person()) // prints 'hello'
greetings(greeter: LoudPerson()) // prints 'Hello'
greetings(greeter: Cat())
greetings(greeter: LoudCat())