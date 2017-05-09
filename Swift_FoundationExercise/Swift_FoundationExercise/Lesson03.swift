import Foundation

func lesson03() {
    execute03_1()
    execute03_2()
    execute03_3()
    execute03_4()
    execute03_5()
    execute03_6()
    execute03_7()
    execute03_8()
    execute03_9()
    execute03_10()
    execute03_11()
    execute03_12()
    execute03_13()
}

func execute03_1() {
    print("This is Lesson 03 - 1 ===============================")
    //1a) Initialize the array, cuteAnimals. It should be of type CuddlyCreature. Type your answer below.
    let cuteAnimals = [CuddlyCreature(name: "Cat"), CuddlyCreature(name: "Dog")]
    print(cuteAnimals)
    
    //1b) Initialize an array of 5 bools using array literal syntax.
    
    
}

struct CuddlyCreature {
    let name:String
    init(name:String) {
        self.name = name
    }
}

func execute03_2() {
    print("This is Lesson 03 - 2 ===============================")
    let spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]
    //Print out the number of spaniels in the array below.

    for spaniel in spaniels {
        print(spaniel)
    }
}

func execute03_3() {
    print("This is Lesson 03 - 3 ===============================")
    //Insert "indigo" into the array below so that its index is after "blue" and before "violet".
    var colors = ["red", "orange", "yellow", "green", "blue", "violet"]

    if let insertIndex = colors.index(of: "violet") {
        colors.insert("indigo", at: insertIndex)
    }
    for color in colors {
        print(color)
    }
}

func execute03_4() {
    print("This is Lesson 03 - 4 ===============================")
    //Insert "English Cocker" into the spaniels array so that its index is before "English Springer".
    var spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]
    
    if let insertIndex = spaniels.index(of: "English Springer") {
        spaniels.insert("English Cocker", at: insertIndex)
    }
    for spaniel in spaniels {
        print(spaniel)
    }
}

func execute03_5() {
    print("This is Lesson 03 - 5 ===============================")
    //Append "Barcelona" to the end of the olympicHosts array.
    var olympicHosts = ["London", "Beijing","Athens", "Sydney", "Atlanta"]
    
    olympicHosts.append("Barcelona")
    for host in olympicHosts {
        print(host)
    }
}

func execute03_6() {
    print("This is Lesson 03 - 6 ===============================")
    //Remove "Lyla" and "Daniel" from the waitingList array and add them to the end  of the admitted array.
    var admitted = ["Jennifer", "Vijay", "James"]
    let waitingList = ["Lyla", "Daniel", "Isabel", "Eric"]
    
    waitingList.forEach{admitted.append($0)}
    admitted.forEach{print($0)}
}

func execute03_7() {
    print("This is Lesson 03 - 7 ===============================")
    //Using subscript syntax, print out the 2nd and 3rd names from the admitted array.
    let subscriptSample = SubscriptSample()
    print(subscriptSample[1])
    print(subscriptSample[2])
}

class SubscriptSample {
    var admitted = ["Jennifer", "Vijay", "James"]
    
    subscript(index: Int) -> String {
        get {
            assert(admitted.count > index, "index out of range")
            return admitted[index];
        }
        set(name) {
            assert(admitted.count > index, "index out of range")
            admitted[index] = name
        }
    }
}

func execute03_8() {
    print("This is Lesson 03 - 8 ===============================")
    //a) Initialize an empty dictionary which holds Strings as keys and Bools as values.
    // let testDict:Dictionary = [String:Bool]()
    var testDict:[String:Bool] = [:]

//    b) Initialize a dictionary using array literal syntax. The keys should be the Strings:
    //"Anchovies", "Coconut", "Cilantro", "Liver"  and each value should be a Bool representing whether you like the food or not.
    testDict["Anchovies"] = true;
    testDict["Coconut"] = false;
    testDict["Cilantro"] = true;
    testDict["Liver"] = false;
    
    if let like = testDict["Anchovies"] {
        print("Anchovies:\(like)");
    }
}

func execute03_9() {
    print("This is Lesson 03 - 9 ===============================")
    //Insert an entry for George H.W. Bush to the dictionary below.
    var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]
    
    //desired output
    // ["Barack Obama":"Bo", "George Bush": "Miss Beazley","Bill Clinton": "Socks", "George H. W. Bush": "Millie", "Ronald Reagan": "Lucky"]
    presidentialPetsDict["George H. W. Bush"] = "Millie"
    
    for (name, nickName) in presidentialPetsDict {
        print(name + ", " + nickName)
    }
    
}

func execute03_10() {
    print("This is Lesson 03 - 10 ===============================")
    //Remove the entry for "George Bush" and replace it with an entry for "George W. Bush".
    var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]

    presidentialPetsDict.removeValue(forKey: "George Bush")
    presidentialPetsDict.forEach {print($0 + "," + $1)}
}

func execute03_11() {
    print("This is Lesson 03 - 11 ===============================")
    //We've initialized a new dictionary of presidentialDogs with the entries from presidentialPets.
    //Update the entry for Bill Clinton by replacing "Socks" the cat with "Buddy" the dog.
    let presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]
    var presidentialDogs = presidentialPetsDict
    presidentialDogs["Bill Clinton"] = "Buddy"
    
    
    print("<presidentialPetsDict>")
    presidentialPetsDict.forEach {print($0 + "," + $1)}
    print("<presidentialDogs>")
    presidentialDogs.forEach {print($0 + "," + $1)}
}

func execute03_12() {
    print("This is Lesson 03 - 12 ===============================")
//    Use subscript syntax to fill in the println statement below and produce the following string: "Michele Obama walks Bo every morning." You'll need to retrieve a value from the presidentialDogs dictionary and unwrap it using if let.
    
    let testPresident = TestPresident()
    print(testPresident["Bill Clinton"])
}

class TestPresident {
    var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]
    
    subscript(presidentName: String) -> String {
        get {
            if let pet = presidentialPetsDict[presidentName] {
                return presidentName + " walks " + pet + " every morning."
            }
            return "unknown key";
        }
        set(pet) {
            presidentialPetsDict[presidentName] = pet;
        }
    }
}

func execute03_13() {
    print("This is Lesson 03 - 13 ===============================")
    // How many studio albums did Led Zeppelin release?
    let studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II": 1969, "Led Zeppelin III": 1970, "Led Zeppelin IV": 1971, "Houses of the Holy":1973, "Physical Graffiti": 1975, "Presence":1976, "In Through the Out Door":1979, "Coda":1982]
    
    print("released " + studioAlbums.filter{$0.key.contains("Led Zeppelin")}.count.description)
    //同じことしてる
//    var count = 0;
//    for (name, _) in studioAlbums {
//        if name.contains("Led Zeppelin") {
//            count += 1;
//        }
//    }
//    print("released \(count)")
}
