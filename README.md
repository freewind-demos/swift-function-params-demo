# Swift 函数参数 Demo

## 简介

展示 Swift 函数参数的各种特性：默认参数、可变参数、外部参数名、inout 参数。

## 启动和使用

```bash
cd swift-function-params-demo
swift run
```

## 教程

### 默认参数

```swift
func greet(name: String, greeting: String = "你好")
```

### 可变参数

```swift
func sum(numbers: Int...) -> Int
```

### inout 参数

可以修改传入的参数值：
```swift
func swap(_ a: inout Int, _ b: inout Int)
```
