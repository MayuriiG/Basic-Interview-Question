import UIKit

var greeting = "Hello, playground"


//Question: Inpit = "AABAB" Length = 2  OUTPUT = 7 let result = countUniqueSubstrings(input, length)
// MARK: -   Count Unique Substrings  (input, length)
func countUniqueSubstring(_ input : String, _ length: Int) -> Int{
    
    var count = 0
    for i in 0...(input.count - length){
        let subStr = String(input.dropFirst(i).prefix(length))
        if hasUniqueCha(subStr){
            count += 1
        }
    }
    return count
}

func hasUniqueCha(_ str: String) -> Bool{
    
    var charSet = Set<Character>()
    for i  in str{
        if charSet.contains(i){
            return false
           }
            charSet.insert(i)
        }
    return true
    }

let input = "AABAB"
let output = countUniqueSubstring(input, 2)
    print(output)
    


// MARK: 1-   Alternative  Count Unique Substrings  (input, length)- -- - - -- - - -- -- - -- - - -
func countrString(_ input: String, _ length : Int)-> Int{
    var countSubstring = Set<String>()
    
    for i in 0...(input.count-length){
          let startIndex = input.index(input.startIndex, offsetBy: i)
            let endIndex = input.index(startIndex, offsetBy: length)
        
            let substring = String(input[startIndex..<endIndex])
        countSubstring.insert(substring)
    }
    return countSubstring.count
}
let result = countrString(input, 2)
print("Output:", result) // Output: 7




//MARK: 2-  Input "abcabcbb", return 3, as the longest substring without repeating characters is "abc
    func longestSubstring(_Input :String) ->Int{

        var maxLength = 0
        var charIndex = [Character:Int]()
        var start = 0

        for (index, out) in input.enumerated(){
            if let lastIndex = charIndex[out],lastIndex >= start{
                start = lastIndex + 1
                print(start)
            }
               charIndex[out] = index
                   maxLength = max(maxLength,index-start+1)
          }
         return maxLength
    }

let result3 = longestSubstring(_Input: "abcabcbb")
print(result3)




//MARK: 3-  Input  "A man, a plan, a canal: Panama"  isPalindrome
    func palidrome(_ input :String) ->Bool{
        
        let alpha = input.lowercased().filter { $0.isLetter || $0.isNumber }
        return alpha == String(alpha.reversed())
    }
let inputResult = palidrome("A man, a plan, a canal: Panama")
print(inputResult)
 

//MARK: 4- Find Maximum Element in an Array

//Int? to handle cases where the input array might be empty. || HAndle with  assigning Default value
    func maxElementInArray(in array: [Int])->Int?{
        
        if array.isEmpty{
            return nil
        }else {
            
            var maxElement =  array[0]
            
            for i in array{
                
                if i > maxElement{
                        maxElement = i
                }
            }
            return maxElement
        }
    }
        
let num  = [1,2,6,8,9,10]
let resultCall = maxElementInArray(in: num)  ?? 0
print(resultCall)


//MARK: 5 - Sorting
func sorting(){
    let number  = [5,6,7,9,10,12]
    var sortted = number.sorted { $0 <  $1}
    print(sortted)
    var desc = number.sorted {$0 > $1 }
}

let res: () = sorting()

//MARK: 6- Single Number
func singleNum(_ num : [Int]) -> Int {
    var result  = 0
  
    for i in num{
        result  ^= i
    }
    return result
}

let numberRes = [1,2,1,2,4]
var resul = singleNum(numberRes)
print(resul)

//MARK: 7- Merge two Sorted Array
func mergeTwoSorttedArra(_ a : [Int], _ b : [Int]) ->  [Int]{
    
    var arr =  a + b
    let sort = arr.sorted()
    print(sort)
    return arr
}

let a = [0,2,3,4]
let b = [5,6,7,8,1]
let merge = mergeTwoSorttedArra(a, b)
print(merge)


//MARK: 8 -  Prefix and sort by lowercase

func sortByName(_ a : [String]) -> [String]{
    
    return a.filter { $0.lowercased().hasPrefix("ab")
    }
}

let name =  ["Abay ","Amay","Ayush","Ajay","Ashish","Akshay","Abhish","Abhiyush","Abc","Abekul"]
let callFun = sortByName(name)
print(callFun)

func sortAgain(_ b :[String]) -> [String]{
    
    return b.filter { $0.lowercased().hasPrefix("ab")
    }
    
    
}
