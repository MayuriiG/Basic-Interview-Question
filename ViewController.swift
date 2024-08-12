    //
    //  ViewController.swift
    //  DSAA
    //
    //  Created by MAYURAA on 10/04/24.
    //

    import UIKit
    struct Product : Equatable{
        let name,brand, category,Price : String
    }

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        quesCommon()
        quesUncommonAscDesc()
        quesEquatable()
        quesGeneric()
        quesGenericBasic()
        quesDict()
        quesMissing()
        quesRangeOperator()
        quesTuples()
        
        
        quesBinaryTress()
        quesFilter()
        
        quesReturn()
        quesInout()
        quesCountOfCharacter()
        
        quesArr()
        
        
    }
    
    func quesArr(){
        
        let arr = [4,5,7,8,9,1]
        let uniq = arr.reduce(0, ^)
        print(uniq)
    }
    
    //Ques 1: FIND the Common Element
    func quesCommon(){
        
        let a = [1,2,3,4,5]
        let b : [Int?] = [2,3,nil ,7]
        
        let co = b.compactMap {$0}
        let intersection  = Set(a).intersection(Set(co))
        print("intersection;\(intersection)")
        let optionalTo = intersection.compactMap { $0 }
        print(optionalTo)
    }
    
    func quesUncommonAscDesc(){
        
        let arr = [1,2,3,4,5,8,9,10,2,3]
        let arr2 = [2,3,7,0]
        
        let arrSet =  Set(arr)
        let arrSetOf =  Set(arr2)
        
        print("arrSet :\(arrSet)")
        let inter  =  Array(arrSet.symmetricDifference(arrSetOf))
        print("inter: \(inter)")
        
        let Descending = inter.sorted(by: >)
        print("descending: \(Descending)")
        
        let ascending = inter.sorted(by: <)
        print("ascending: \(ascending)")
    }
    
    //Ques 2: FIND the Int & String in Same Func in Generic
    func quesGeneric(){
        
        if let intCall = xyz(10, 20){
            print(intCall)
        }
        if let stringCall = xyz("MY", "Name"){
            print(stringCall)
        }
    }
    
    func xyz<T> (_ a :T , _ b : T) -> T? {
        
        if let integerA = a as?Int,  let integerB = b as?Int  {
            return integerA + integerB as? T
        }
        else  if let strA = a as?String,  let strB = b as?String  {
            return strA + strB as? T
        }else {
            print("Erro")
        }
        return nil
    }
    
    //Ques 3: Basic Generic
    func quesGenericBasic(){
        let intArray = [1, 2, 3, 4]
        let callIT: () = printInts(array: intArray)
        print("CallGenericBasic: \(callIT)")
        
        func printInts(array: [Int]) {
            let x = intArray.map { $0 * 2  }
            print( "print : \(x)")
        }
    }
    
    //Ques 4: Equatable for Compare in (BOOL)
    func quesEquatable(){
        
        let product1 = Product(name: "Macbook", brand: "Apple", category: "Laptop", Price: "1L")
        let product2 = Product(name: "Macbook", brand: "Apple", category: "Laptop", Price: "1L")
        
        let result  = product1 == product2
        print(result)
        
    }
    
    //Ques 5: MAke Dictionary through two Array
    func quesDict(){
        let arrOfInt = [1, 2, 3, 4, 5]
        let arrOfString = ["Key", "Lock", "Handle", "Brass", "Latch"]
        
        let  makeInDicFormat = zip(arrOfInt,arrOfString)
        
        let dictFormat  = Dictionary(uniqueKeysWithValues: makeInDicFormat)
        print("Print Dictonary ; \(dictFormat)")
        
    }
    
    //Ques 6:  Find the Missing Number
    
    func quesMissing(){
        
        let arrOfInt = [1, 2, 3, 4, 5,6,8,9,10]
        let callOF = quesMissingNumber(arrOfInt)
        if let missNum = callOF{
            print("missNum: -->>> \(missNum)")
        }else{
            print("No Missing Number")
        }
    }
    
    
    func quesMissingNumber(_ input: [Int]) -> Int?{
        
        //            guard let maxNumber  = input.max() else { return nil }
        //            let numSet = Set(input)
        //            let fullSet = Set(1...maxNumber)
        //            return  fullSet.first {!numSet.contains($0)}
        //            for i in  fullSet{
        //                if !numSet.contains(input){
        //                    return i
        //         } }
        
        
        guard let inputNumber  = input.max() else { return nil }
        let num  =  Set(input)
        let fullNum  = Set(1...inputNumber)
        return fullNum.first{!num.contains($0)}
    }
    
    
    
    func quesRangeOperator(){
        
        let  closeRange  = 1...5
        print("closeRange:\(closeRange)")
        
        
        let  halfRange  = 1..<5
        print("halfRange:\(closeRange)")
        
        
        for number in 1...5 {
            print(number) // 1, 2, 3, 4, 5
        }
        
        // open hAlf range
        for number in 2..<5 {
            print(number) // 1, 2, 3, 4
        }
        
        let colors = ["Red", "Green", "Blue", "Yellow", "Orange"]
        
        for index in 0..<colors.count {
            print(colors[index])
        }
        
        let numbers = [1, 2, 3, 4, 5, 6, 7]
        let subset = numbers[2..<5] // [3, 4, 5]
        
        let text = "Swift Programming"
        //   let subString = text[6..<12]
        let startIndex = text.index(text.startIndex, offsetBy: 6)
        let endIndex = text.index(text.startIndex, offsetBy: 17)
        let subString = text[startIndex..<endIndex]
        print(subString)
        
        
        
        
        
    }
    
    
    
    //https://medium.com/@nimjea/tuple-in-swift-d28a68ada312
    func quesTuples(){
        
        let person: (String, Int) = ("John", 30)
        print(person)
        
        //Nested
        var alphaNum = ("x", 1, 2, ("y", 3, "z"))
        print("alphaNum:\(alphaNum)")
        
        
        //Advanced Tuple
        let advanTupleProviders = (["name": "Joy"], ["John", "Kelly"], "Joy",  1000, false)
        print("advanTupleProviders:\(advanTupleProviders.2)")
        //  advanTupleProviders.0    // ["name": "Joy"]
        
        
        //Trail :------ > > > > > > >
        
        var a  =  [1,2,3,4,5,6,7,3]
        var b  = [nil,4,6,7,8,9]
        
        var removeb  = b.compactMap {$0}
        print("removeb:\(removeb)")
        var combine =  Set(a).union(Set(removeb))
        print(combine)
        var common = Set(a).sorted(by: >)
        print(common)
        
        var comm = Set(a).intersection(Set(removeb))
        print(comm)
    }
    
    
    
    
    /*  4. Write Code to Determine if two binary trees are Identical
     Time Complexity: O(m) where m < n, m & n are tree elements
     Auxiliary Space: O(1)*/
    func quesBinaryTress(){
        
        class TreeNode {
            var value: Int
            var leftChild: TreeNode?
            var rightChild: TreeNode?
            
            init(value: Int, leftChild: TreeNode?, rightChild: TreeNode?) {
                self.value = value
                self.leftChild = leftChild
                self.rightChild = rightChild
            }
        }
        
        // Define the tree nodes
        let ten = TreeNode(value: 10, leftChild: nil, rightChild: nil)
        let thirdCall = TreeNode(value: 3, leftChild: nil, rightChild: nil)
        let five = TreeNode(value: 5, leftChild: ten, rightChild: thirdCall)
        
        
        
        func isIdentical(_ root1: TreeNode?, _ root2: TreeNode?)->Bool{
            
            if  root1 == nil && root2 == nil{
                return true
            }
            if (root1 == nil && root2 != nil) ||   (root1 != nil && root2 == nil){
                return false
            }
            if root1?.value == root2?.value && isIdentical(root1?.leftChild, root1?.leftChild) && isIdentical(root1?.rightChild, root1?.rightChild) {
                return true
            }
            
            return false
            
        }
        
        //      let c =   isIdentical(root, root2)
    }
    
    func quesFilter(){
        
        
        let menuItems: [String: Double] = ["Burger": 5.99, "Pizza": 8.99, "Pasta": 7.49, "Salad": 4.99, "Soda": 1.99]
        let selectedItemsArr: [String] = ["Burger", "Pizza", "Soda"]
        
        //Dictionary
        var restaurantMenu: [String: Double] = [:]
        
        //            for i in selectedItemsArr{
        //                if let menuPrice = menuItems[i]{
        //                    restaurantMenu[i] = menuPrice
        //                }
        //           *?   print(restaurantMenu)
        //
        let filter = menuItems.filter { selectedItemsArr.contains($0.key)}
        print(filter)
        
        
        /* In a midnight, me and my family need to cross a narrow bridge to catch the last train.
         The bridge can hold maximum of two persons at a time. Its very dark and they must carry the lamp while crossing the bridge.
         We have just 17 minutes to cross it. I can cross it in 1 minute, my sister takes 2 minutes to cross, my father takes 5 minutes and grandfather takes 10 minutes to cross the bridge.*/
        
        var personOnBridge = ["SOn":1,"Daughter":2,"Dad":5,"GrandFather":10]
        //Dictionary
        var personToCrossed = [String:Int]()     //Dictionary
        let timeLimit   = 17  //1+2+5+10 =   || 3+ 12 + 2
        var timeTaken = 0
        var travelCount = 0
        //  let miniPerson = findMinTwoCrossingTime(time)
        
        func findTwoCross(times:[String:Int],asc: Bool)->[String:Int]{
            
            let sortedByTime = times.sorted{ asc ? $0.value < $1.value : $0.value > $1.value }
            let minPersonDic = [String:Int]()
             return  minPersonDic
        }
   
    }
    
    
    
    
    func quesReturn() {
        
        
        func isUppercase(string: String) -> Bool {
            string == string.uppercased()
        }
        
        let isCall = isUppercase(string: "WORTHY")
        print(isCall)
        
        func getUser() -> [String] {
            ["Tim", "Cook"]
        }
       
        func getUserDic() -> [String: String] {
            [
                "firstName": "leonardo",
                "lastName": "Di"
            ]
        }

        func getUserMulti() -> (firstName: String, lastName: String) {
            (firstName: "Anthony", lastName: "Edward")
        }

        func getUserReturn() -> (firstName: String, lastName: String) {
            ("Mark", "Ruffalo")
        }
        
        func getUserStringMulti() -> (String, String) {
            ("Jackie", "chan")
        }
        

        let userStringMulti = getUserStringMulti()
        print("userStringMulti: \(userStringMulti.0) \(userStringMulti.1)")
        
        let user = getUser()
        Swift.print("NameUser: \(user[0]) \(user[1])")
        
        let userDic = getUserDic()
        print("userDic: \(userDic["firstName", default: "Anonymous"]) \(userDic["lastName", default: "Anonymous"])")
        
        let usermulti = getUserMulti()
        print("usermulti: \(usermulti.firstName) \(usermulti.lastName)")
        
    }
    
    
    func quesInout(){
        var firstname = "John"
        var lastname = "G"
        var callf: () = quesInput(firstName: &firstname, lastName: &lastname)
       
        print("callf:\( callf)")
    }
    
    func quesInput( firstName: inout String, lastName:inout String){
        
        firstName = firstName.capitalized
        lastName = lastName.capitalized

    }
    
    //https://charlieinden.github.io/Interview-Experience/2019-06-11_Data-structure-interview-questions--Swift--I-f5613f537ec9.html
    func quesCountOfCharacter(){
        
        let name = "Harry Hurry"
        let list = Array(name)
        
        let ones = repeatElement(1, count: list.count)
        let counted = Dictionary(zip(list, ones),uniquingKeysWith: +)
        print("counted:->>>>>>.,\(counted)")
        
    }
    
    
    
    
    
}

