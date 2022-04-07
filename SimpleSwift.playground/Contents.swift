import Foundation
print("Welcome to the UW Calculator Playground")

func calculate(_ args: [String]) -> Int {
    
    switch args.last {
        case "count":
            return args.count - 1
        case "avg":
            if args.count - 1 == 0{
                return 0
            }
            var sum : Int = 0
            for index in 0...(args.count - 1){
                sum += Int(args[index]) ?? 0
            }
            return sum / (args.count - 1)
        case "fact":
            var output = 1
            if Int(args[0]) == 0 {
                return 1
            }
            else if args.count - 1 == 0{
                return 0
            }
            else {
                for index in 1...Int(args[0])!{
                    output *= index
                }
            }
            return output
            
        default:
            let num1 : Int = Int(args[0])!
            let num2 : Int = Int(args[2])!
            let operand = args[1]
        
            switch operand {
                case "+":
                    return num1 + num2
                case "-":
                    return num1 - num2
                case "*":
                    return num1 * num2
                case "/":
                    return num1 / num2
                case "%":
                    return num1 % num2
                default:
                    return -1
            }
    }
}

// check this
func calculate(_ arg: String) -> Int {
    return calculate(arg.components(separatedBy: " "))
}

// -------------------------------------------
// All of these expressions should return true
// if you have implemented calculate() correctly
//
calculate(["2", "+", "2"]) == 4
calculate(["4", "+", "4"]) == 8
calculate(["2", "-", "2"]) == 0
calculate(["2", "*", "2"]) == 4
calculate(["2", "/", "2"]) == 1
calculate(["2", "%", "2"]) == 0

calculate(["1", "2", "3", "count"]) == 3
calculate(["1", "2", "3", "4", "5", "count"]) == 5
calculate(["count"]) == 0

calculate(["1", "2", "3", "4", "5", "avg"]) == 3
// 15 / 5 = 3
calculate(["2", "2", "4", "4", "avg"]) == 3
// 12 / 4 = 3
calculate(["2", "avg"]) == 2
// 2 / 1 = 2
calculate(["avg"]) == 0
// 0 / 0 = 0 (not really, but it's an edge case
//
calculate(["0", "fact"]) == 1
calculate(["1", "fact"]) == 1
calculate(["2", "fact"]) == 2 // 2*1
calculate(["5", "fact"]) == 120 // 5*4*3*2*1
calculate(["fact"]) == 0
//
calculate("2 + 2") == 4
calculate("2 * 2") == 4
calculate("2 - 2") == 0
calculate("2 / 2") == 1
//
calculate("1 2 3 4 5 count") == 5
calculate("1 2 3 4 5 avg") == 3
calculate("5 fact") == 120

// -------------------------------------------
// These are extra credit tests; commented out
// uncomment them to turn them on for evaluation

// Implement calculate([String]) and calculate(String)
// to handle negative numbers

calculate(["2", "+", "-2"]) == 0
calculate(["2", "-", "-2"]) == 4
calculate(["2", "*", "-2"]) == -4
calculate(["2", "/", "-2"]) == -1
calculate(["-5", "%", "2"]) == -1

calculate(["1", "-2", "3", "-2", "5", "avg"]) == 1

calculate("2 + -2") == 0
calculate("2 * -2") == -4
calculate("2 - -2") == 4
calculate("-2 / 2") == -1

calculate("1 -2 3 -4 5 count") == 5

 
// Implement calculate([String]) and calculate(String)
// to use floating-point values

func calculate(_ args: [String]) -> Double {
    switch args.last {
        case "count":
        return Double(args.count - 1)
        case "avg":
            if args.count - 1 == 0{
                return 0
            }
            var sum : Int = 0
            for index in 0...(args.count - 1){
                sum += Int(args[index]) ?? 0
            }
        return Double(sum / (args.count - 1))
        case "fact":
            var output = 1
            if Int(args[0]) == 0 {
                return 1
            }
            else if args.count - 1 == 0{
                return 0
            }
            else {
                for index in 1...Int(args[0])!{
                    output *= index
                }
            }
        return Double(output)
            
        default:
            let num1 : Double = Double(args[0])!
            let num2 : Double = Double(args[2])!
            let operand = args[1]
        
            switch operand {
                case "+":
                    return Double(num1 + num2)
                case "-":
                    return Double(num1 - num2)
                case "*":
                    return Double(num1 * num2)
                case "/":
                    return Double(num1 / num2)
                case "%":
                    return Double(num1.truncatingRemainder(dividingBy: num2))
                default:
                    return -1.0
            }
    }
}
func calculate(_ arg: String) -> Double {
    return calculate(arg.components(separatedBy: " "))
}

calculate(["2.0", "+", "2.0"]) == 4.0
calculate([".5", "+", "1.5"]) == 2.0
calculate(["12.0", "-", "12.0"]) == 0.0
calculate(["2.5", "*", "2.5"]) == 6.25
calculate(["2.0", "/", "2.0"]) == 1.0
calculate(["2.0", "%", "2.0"]) == 0.0
calculate("1.0 2.0 3.0 4.0 5.0 count") == 5.0

