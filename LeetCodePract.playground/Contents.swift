import UIKit

var greeting = "Hello, playground"


//Input: word1 = "abc", word2 = "pqr"
//Output: "apbqcr"

func mergeAlternately(_ word1: String, _ word2: String) -> String {

 return String(zip(word1, word2).flatMap { [$0, $1] } + Array(word1.dropFirst(word2.count)) + Array(word2.dropFirst(word1.count)))

 }
//------------------------------------------------------------
//Input: s = "leetcode"
//Output: "leotcede"
    func reverseVowels(_ s: String) -> String {

 var arr = Array(s)
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var left = 0, right = arr.count - 1
    
    while left < right {
        while left < right && !vowels.contains(arr[left]) { left += 1 }
        while left < right && !vowels.contains(arr[right]) { right -= 1 }
        if left < right {
            arr.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
    
    return String(arr)
       }
 
//------------------------------------------------------------

func reverseWords(_ s :String) -> String{
    return s.split(separator: " ").reversed().joined(separator: " ")
}

let input = "the sky is Blue"
let c = reverseWords(input)
print(c)

//------------------------------------------------------------
//The string “No duplicates” should return true.
//• The string “abcdefghijklmnopqrstuvwxyz” should return true.
//• The string “AaBbCc” should return true because the challenge is case-sensitive.
//• The string “Hello, world” should return false because of the double Ls and double Os.

func hasUniqueChar(_ arr : String) -> Bool {
    
    var setCha = Set<Character>()
    
    for i in arr{
       
        if setCha.contains(i){
        
            return false
    }
        setCha.insert(i)
    }
    return true
}

print(hasUniqueChar("No duplicates"))
print(hasUniqueChar("abcdefghijklmnopqrstuvwxyz"))
print(hasUniqueChar("AaBbCc"))
print(hasUniqueChar("Hello, world"))

//------------------------------------------------------------
//The string “rotator” should return true.
//• The string “Rats live on no evil star” should return true.
//• The string “Never odd or even” should return false; even though the letters are the same in
//reverse the spaces are in different places.
//• The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards

func challengeReverese(_ a :String)  -> Bool{
    
    return String(a.lowercased().reversed()) == a.lowercased()
}
print(challengeReverese("rotator"))
print(challengeReverese("Rats live on no evil star"))


//------------------------------------------------------------
//• The strings “abca” and “abca” should return true.
//• The strings “abc” and “cba” should return true.
//• The strings “abc” and “cbAa” should return false.
//• The strings “abcc” and “abca” should return fals


func compareString(_ str: String , _ str2 : String) -> Bool {
    
    var checkStr = str2
    
    for i in str{
        if let inde = checkStr.firstIndex(of: i){
            checkStr.remove(at: inde)
        }else{
            return false
        }
        
    }
    return checkStr.count == 0
    
}
print(compareString("abca", "abca"))
print(compareString("abc", "Abca"))
print(compareString("abcc", "abca"))



//Question 1: Swap Number---------------------------------
func swapNumbers(_ a: inout Int, _ b: inout Int) {
    (a,b) = (b,a)
}

var x = 5
var y = 10
swapNumbers(&x, &y)
print("A",x); print("B",y)


//Question 2: Swap Number in Array---------------------
var num  = [10,12,5]

func swapArray (_ arr: inout  [Int], i :Int , j : Int){
    arr.swapAt(i, j)
}

swapArray(&num, i: 0, j: 1)
print(num)


//Question 3: Remove Duplicate---------------------------
func removeDuplicate(_ arr: [Int]) -> [Int]{
   
    var temp : [Int] = []
    for i in arr{
        if !temp.contains(i){
            temp.append(i)
        }
    }
    print(temp)
    return temp
}

var number =  [1,2,3,4,1,2,3,4,9]
print(removeDuplicate(number))

//........................
var dictS = ["Apple": "Red",
                     "Banana": "Yellow",
                     "Lime": "Yellow",
                     "Grape": "Green"]

var filterDic : [String:String] = [:]

for (key,value) in dictS{
    if  value == "Yellow"{
        filterDic[key] = value
    }
}
let filterKey = filterDic.keys.map { $0}
print(filterKey)
let filterValue = filterDic.values.map { $0 }
print(filterValue)
//-------------------- -  - - - - - - - -  --- - - - -- -----

var seenValue : Set <String> = []
var duplicate : Set<String> = []


for (key,value ) in dictS{
    
    if seenValue.contains(value){
        duplicate.insert(value)
    }
    else{
        seenValue.insert(value)
    }
}
let res = Array(duplicate)
print(res)


var diction = ["APPl":"RED","Banan":"Yellow","Peach":"PINK","PApaya":"Yellow"]

var filterD : [String:String] = [:]

for (key,value) in diction{
    if value == "Yellow"{
        filterD[key] = value
    }
}
let filterKEY = filterD.keys.map { $0 }
print(filterKEY)
let filterVALUE = filterD.values.map { $0 }
