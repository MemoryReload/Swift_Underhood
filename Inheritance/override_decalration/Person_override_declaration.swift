import Foundation

class Person {
    @objc dynamic func sayHi() {
        print("hello")
    }
}

class LoudPerson: Person {
    override func sayHi() {
        print("HELLO")
    }
}

class GentlePerson: Person { }

extension GentlePerson {
    override func sayHi() {
        print("Hello")
    }
}

Person().sayHi()
LoudPerson().sayHi()
GentlePerson().sayHi()