// Definição do protocolo Animal
protocol Animal {
    var name: String { get }
    var numberOfLegs: Int { get }
    
    func makeSound()
}

// Implementação do protocolo Animal para a classe Dog
class Dog: Animal {
    var name: String
    var numberOfLegs: Int
    
    init(name: String) {
        self.name = name
        self.numberOfLegs = 4
    }
    
    func makeSound() {
        print("Woof!")
    }
}

// Implementação do protocolo Animal para a classe Cat
class Cat: Animal {
    var name: String
    var numberOfLegs: Int
    
    init(name: String) {
        self.name = name
        self.numberOfLegs = 4
    }
    
    func makeSound() {
        print("Meow!")
    }
}

// Implementação do protocolo Animal para a classe Bird
class Bird: Animal {
    var name: String
    var numberOfLegs: Int
    
    init(name: String) {
        self.name = name
        self.numberOfLegs = 2
    }
    
    func makeSound() {
        print("Chirp!")
    }
}

// Uso dos animais e chamada dos métodos
let dog = Dog(name: "Rex")
let cat = Cat(name: "Whiskers")
let bird = Bird(name: "Tweety")
