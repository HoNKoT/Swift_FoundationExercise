import Foundation


func lesson01() {
    execute_1()
    execute_2()
    execute_3()
    execute_4()
    execute_5()
    execute_6()
    execute_7()
    execute_8()
    execute_9()
    execute_10()
    execute_11()
}

func execute_1() {
    print("This is Lesson 01 - 1 ===============================")
    // Example: Here I've declared one String that forms a sentence that makes sense.
    // I've declared a second String that forms a silly sentence when random words are chosen.
    
    let nounArray = ["puppy", "laptop", "ocean","app", "cow", "skateboard", "developer", "coffee", "moon"]
    
    let index1 = Int(arc4random_uniform(9))  // 0-8
    let index2 = Int(arc4random() % 9)       // ランダム数 % 9 だから、結果的に 0-8
    
    let sentence = "The \(nounArray[6]) spilled her \(nounArray[7])."
    let sillySentence = "The \(nounArray[index1]) jumped over the \(nounArray[index2])."
    
    print("\(sentence)")
    print("\(sillySentence)")
    
    // Now try it yourself! Declare a new string that incorporates objects from the noun array above.
    // Write one sentence that makes sense and one "Madlib" sentence with randomly chosen words.
    // Feel free to add words to the noun array or declare a new array.
    
    let yourSentence = "incorporates object \(nounArray[index1] + nounArray[index2])"
    let yourSillySentence = "What is Madlib!!?. >> \(nounArray[index1])"
    
    print("\(yourSentence)")
    print("\(yourSillySentence)")
}

func execute_2() {
    print("This is Lesson 01 - 2 ===============================")
    // Recreate the shoutString by using the didYouKnowString as a stem.
    
    let didYouKnowString = "Did you know that the Swift String class comes with lots of useful methods?"
//    let whisperString = "psst" + ", " + didYouKnowString.lowercased()
//    let shoutString =  "HEY! DID YOU KNOW THAT THE SWIFT STRING CLASS COMES WITH LOTS OF USEFUL METHODS?"
    print(didYouKnowString.uppercased())
}

func execute_3() {
    print("This is Lesson 01 - 3 ===============================")
    //How many characters are in this string?
    
    let howManyCharacters = "How much" // NOTE: include space
    print(howManyCharacters.characters.count)
}

func execute_4() {
    print("This is Lesson 01 - 4 ===============================")
    //How many times does the letter "g" or "G" appear in the following string? Use a for-in loop to find out!
    
    let gString = "Gary's giraffe gobbled gooseberries greedily"
    var count = 0
    for char in gString.characters {
        if (char == "g" || char == "G") {
            count += 1
        }
    }
    print(count)
}

func execute_5() {
    print("This is Lesson 01 - 5 ===============================")
    // Write a program that tells you whether or not this string contains the substring "tuna".
    
    let word = "fortunate"
    print(word.contains("tuna"))
}

func execute_6() {
    print("This is Lesson 01 - 6 ===============================")
    // Write a program that deletes all occurrences of the word "like" in the following string.
    
    let lottaLikes = "If like, you wanna learn Swift, like, you should build lots of small apps, cuz it's like, a good way to practice."
    let noLikes = lottaLikes.replacingOccurrences(of: "like", with: "hate")
    print(noLikes)
}

func execute_7() {
    print("This is Lesson 01 - 7 ===============================")
    // Repeat the above string manipulation, but this time using a for-in loop.
    // You can start off with this dictionary and string.
    
    // Example
    let sillyMonkeyString = "A monkey stole my iPhone"
    let newString = sillyMonkeyString.replacingOccurrences(of: "monkey", with: "🐒")
    let newerString = newString.replacingOccurrences(of: "iPhone", with: "📱")
    print("output emoji > " + newString + newerString)
    
    // your own
    // [_]は「なにか」、never used のときはこれがいい
    // 1...5 は 1 to 5,  1 < 5 にしたいときは 1..<5
    for _ in 1..<5 {
        let dictionary = ["monkey": "🐒", "iPhone":"📱"]
        let even = Int(arc4random()) % 2 == 0
//        print(even ? dictionary["monkey"] : dictionary["iPhone"]) //怒られる
        // dictionaryから取り出せなかった場合どうすんの？っていう警告がでてる。
        // ここでは３パターン紹介、で、iPhoneのケースだけやる
        //パターン１  : as Any : AnyはjavaでいうObject。as はアップキャスト。
        //            Anyはnilがありえないので、こうする。もし、nilだと「nil」が出力される
        //            Optionalがついてしまうよ（Stringに限らず、? の型を出力するとOptionalがつく）
        //let hoge = dictionary["monkey"] ようするに、このhogeがString? だ
        //＝let hoge = dictionary["monkey"] as Any これのdescriptionがString? を戻り値にしてる
        print(even ? dictionary["monkey"] : dictionary["iPhone"] as Any)
        
        //パターン２　：　??  : nilだったときのデフォルトを指定
        print(even ? dictionary["monkey"] : dictionary["iPhone"] ?? "Unknown")
        
        // パターン３　：　!  : 警告無視（nilでもdictionaryから取り出す、という意味） もしnilなら、エラーで落ちる
        print(even ? dictionary["monkey"] : dictionary["iPhone"]!)
    }
}

func execute_8() {
    print("This is Lesson 01 - 8 ===============================")
    // Josie has been saving her pennies and has them all counted up.
    // Write a program that, given a number of pennies, prints out how much money Josie has in dollars and cents.
    
    // Example
    let numOfPennies = 567
    let price = numOfPennies as NSNumber
    //desired output = "$5.67"
    
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    //formatter.locale = NSLocale.current // This is the default
    print(formatter.string(from: price) ?? "Unknown") // "$123.44"
    
    formatter.locale = Locale(identifier: "es_CL")
    print(formatter.string(from: price) ?? "Unknown") // $123"
    
    formatter.locale = Locale(identifier: "es_ES")
    print(formatter.string(from: price) ?? "Unknown") // "123,44 €"
}

func execute_9() {
    print("This is Exercise 01 - 9 ===============================")
    // Below is the code to find all the numbers present in an array,
    // convert them to Ints, and calculate their sum. Have a look at the entities declared below:
    // array, sum, and intToAdd. Think about whether each should be a constant or
    // a variable and choose whether to declare them with let or var.
    // When you're finished uncomment the code and see if the compiler agrees with your choices!
    
    let array = ["A", "13", "B","5","87", "t", "41"]
    var sum = 0
    for string in array {
        if Int(string) != nil {
            let intToAdd = Int(string)!
            sum += intToAdd
        }
    }
    print(sum)
    
}

func execute_10() {
    print("This is Lesson 01 - 10 ===============================")
    // For each of the following pairs, choose whether to declare a constant or a variable.
    // Example: Two hikers are climbing up to the summit of a mountain. Along the way, they stop a few times to check their current elevation.
    // Example response:
    
    let summitElevation: Int
    var currentElevation: Int
    
    // 10a) Imagine you are writing a quiz app, and you need to program a timer 
    // that will stop a quiz after 20 min. Declare four entities: startTime, 
    // currentTime, maximumTimeAllowed, and timeRemaining. Don't worry about encoding their values.
    
    let startTime: NSDate
    var currentTime: NSDate
    let maximumTimeAllowed: Int
    let timeRemaining: Int
    
    // 10b) Imagine you are writing an app for a credit card company. Declare two entities: creditLimit and balance.
    
    let creditLimit: NSNumber
    var balance: NSNumber
}

func execute_11() {
    print("This is Lesson 01 - 11 ===============================")
    // Below is the code to reverse a string.
    // Have a look at the entities declared: stringToReverse and reversedString.
    // Choose whether to declare each with let or var. 
    // When you're finished uncomment the code and see
    // if the compiler agrees with your choices!
    
    let stringToReverse = "Mutable or Immutable? That is the question."
    var reversedString = ""
    for character in stringToReverse.characters {
        reversedString = "\(character)" + reversedString
    }
    print(reversedString, terminator: "")
}

