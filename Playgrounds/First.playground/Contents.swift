
let str = "Hello, playground"
//str = "Hello Swift!"

var height: Float = 1
height = 1.80

let maxHeight = 2.30

height = Float(maxHeight)

print(str, height, terminator: "\n")

let a = 5
let b = 2

let c = Double(a) / Double(b)

//2
//2.5
//Crash execution
//Compile pas ++


var test: Int = 0

switch test {
case 0:
    break
default:
    break
}

//guard test > 0 else {
//    print("error")
//    fatalError()
//}


let dico = ["France": "Paris", "UK": "London"]


if let paris = dico["France"] {
    print(paris)
} else {
    print("Je ne connais pas la capitale")
}

if let intValue = Int("42") {
    print(intValue * 2)
} else {
    print("veuillez rentrer un nombre")
}

// nil coalescing operator
// Optional<String> ?? String (default value)
let capitaleFrance = dico["France"] ?? "Inconnu"
