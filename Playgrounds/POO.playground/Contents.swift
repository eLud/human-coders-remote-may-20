

struct Book {

    let title: String
    var nbPage: Int

    func open() {

    }

    func text(at: Int) -> (text: String, page: Int) {

        print(nbPage)

        return ("Sans language", at)
    }

    func text(at: Int, language: String = "FR") -> String {
        return "Language"
    }

//    func text(replace: String = "", at: Int) {
//        print("Replace")
//    }
}


let myBook = Book(title: "Swift for dummies", nbPage: 600)
var yourBook = myBook
yourBook.nbPage = 300

let text = myBook.text(at: 5)
//text.page

//myBook.text(at: 5, 6, 8)
print(myBook.nbPage)
print(yourBook.nbPage)

class Vehicule {

    var color: String = ""
    let brand: String = ""
}

class Car: Vehicule {

    class var numberOfWheels: Int {
        return 4
    }
}

class WeirdCar: Car {
    override class var numberOfWheels: Int {
        return 3
    }
}


let myCar = Car()
var yourCar = myCar


myCar.color = "Blanc"
print(myCar.color)
print(yourCar.color)

myBook.title

Car.numberOfWheels

func remove(at: Int) {

}

///Insert an element at index
func insert(_ element: String, at index: Int) {

    index
    index
}

remove(at: 6)
insert("Test", at: 6)
