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

class Person: Greetable {
    
}

class LoudPerson: Person {
    func sayHi() {
        print("HELLO")
    }
}

greetings(greeter: LoudPerson()) // prints 'Hello'