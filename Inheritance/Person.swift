import Foundation

class Person {
    func sayHi() {
        print("hello")
    }
}

class LoudPerson: Person {
    override func sayHi() {
        print("HELLO")
    }
}

Person().sayHi()
LoudPerson().sayHi()
