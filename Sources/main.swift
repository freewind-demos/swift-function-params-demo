// swift-function-params-demo.swift

// ============ 默认参数 ============
func greet(name: String, greeting: String = "你好") {
    print("\(greeting), \(name)!")
}
greet(name: "小明")
greet(name: "小红", greeting: "早上好")

// ============ 可变参数 ============
func sum(numbers: Int...) -> Int {
    var total = 0
    for n in numbers {
        total += n
    }
    return total
}
print("sum: \(sum())")
print("sum: \(sum(numbers: 1, 2, 3))")
print("sum: \(sum(numbers: 1, 2, 3, 4, 5))")

// ============ 外部参数名 ============
func createUser(name userName: String, age userAge: Int) {
    print("用户: \(userName), 年龄: \(userAge)")
}
createUser(name: "Tom", age: 25)

// 省略外部参数名
func createUser2(_ name: String, _ age: Int) {
    print("用户: \(name), 年龄: \(age)")
}
createUser2("Jerry", 30)

// ============ inout 参数 ============
func swap(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}
var x = 10, y = 20
swap(&x, &y)
print("x = \(x), y = \(y)")

// ============ 参数标签 ============
func run(from start: Int, to end: Int) {
    for i in start...end {
        print("  \(i)", terminator: " ")
    }
    print()
}
run(from: 1, to: 5)
