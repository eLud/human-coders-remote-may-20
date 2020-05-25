
let str = "Hello, playground"
//str = "Hello Swift!"

var height: Float = 1
height = 1.80

let maxHeight = 2.30

height = Float(maxHeight)

print(str, height, terminator: "")

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

guard test > 0 else {
    print("error")
    fatalError()
}
