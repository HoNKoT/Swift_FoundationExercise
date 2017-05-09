import Foundation


func lesson02() {
    execute02_1()
    execute02_2()
    execute02_3()
    execute02_4()
    execute02_5()
    execute02_6()
    execute02_7()
    execute02_8()
    execute02_9()
    execute02_10()
}

func execute02_1() {
    print("This is Lesson 02 - 1 ===============================")
//    When retrieving a value from a dictionary, Swift returns an optional.
//    
//    1a) The variable, director, is an optional type. Its value cannot be used until it is unwrapped. Use if let to carefully unwrap the value returned by moviesDict[movie]
    var moviesDict:Dictionary = [ "Star Wars":"George Lucas", "Point Break":"Kathryn Bigelow"]
    var movie = "Point Break"
    var director = moviesDict[movie]
    
    print(director)
    
//    1b) Test your code by inserting different values for the variable movie.
    let musicDic:Dictionary = ["Ikimonogakari":"Arigato", "Glay":"jealousy"]
    let artist = "Glay"
    let musicTitle = musicDic[artist]
    
    print(musicTitle ?? "unknown")
}

func execute02_2() {
    print("This is Lesson 02 - 2 ===============================")
//    The LoginViewController class below needs a UITextField to hold a user's name.
//    Declare a variable for this text field as a property of the class LoginViewController.
//    Keep in mind that the textfield property will not be initialized until after the view controller is constructed.
    let loginViewController = LoginViewController(savedUserId: "A", savedPassword: "B")
    print("userId:" + loginViewController.savedUserId + ", password:" + loginViewController.savedPassword)
}

class LoginViewController {
    let savedUserId:String
    let savedPassword:String
    
    init(savedUserId:String, savedPassword:String) {
        self.savedUserId = savedUserId
        self.savedPassword = savedPassword
    }
}

func execute02_3() {
    print("This is Lesson 02 - 3 ===============================")
//    The Swift Int type has an initializer that takes a string as a parameter and returns an optional of type Int?.
//    
//    3a) Finish the code below by safely unwrapping the constant, number.
    var numericalString = "three"//"3"
    //var number = Int(numericalString)
    var number = Int(numericalString) ?? 0
    print("\(number) is the magic number.")
    
    //: 3b) Change the value of numericalString to "three" and execute the playground again.
    
}

func execute02_4() {
    print("This is Lesson 02 - 4 ===============================")
//    The class UIViewController has a property called tabBarController.
//    The tabBarController property is an optional of type UITabBarController?.
//    The tabBarController itself holds a tabBar as a property.
//    Complete the code below by filling in the appropriate use of optional chaining to access the tab bar property.
    // NOTE: comment out because the UIKit(UIViewController) can use in iOS project.
//    var viewController = UIViewController();
//    if let tabBar = viewController.tabBarController.xxx {
//        print("Here's the tab bar.")
//    } else {
//        print("No tab bar controller found.")
//    }
}

func execute02_5() {
    print("This is Lesson 02 - 5 ===============================")
//    Below is a dictionary of paintings and artists.
//    
//    5a) The variable, artist, is an optional type. Its value cannot be used until it is unwrapped. Use if let to carefully unwrap the value returned by paintingDict[painting].
    let paintingDict:Dictionary = [ "Guernica":"Picasso", "Mona Lisa": "da Vinci", "No. 5": "Pollock"]
    let painting = "Mona Lisa"
    var artist = paintingDict[painting] ?? "Unknown"

//    5b) Test your code by inserting different values for the variable painting.
    print(artist)
    artist = paintingDict["tekitou"] ?? "Unknown"
    print(artist)
}

func execute02_6() {
    print("This is Lesson 02 - 6 ===============================")
//    Set the width of the cancel button below.  Notice that the cancelButton variable is declared as an implicitly unwrapped optional.
    // NOTE: comment out because the UIKit(UIViewController) can use in iOS project.
//    var anotherViewController = UIViewController()
//    var cancelButton: UIBarButtonItem!
//    cancelButton = UIBarButtonItem()
//    cancelButton.width = 11;
}

func execute02_7() {
    print("This is Lesson 02 - 7 ===============================")
//    The class UIViewController has a property called parent.
//    The parent property is an optional of type UIViewController?.
//    We can't always be sure that a given view controller has a parent view controller.
//    Safely unwrap the parent property below using if let.

//
//    var childViewController = UIViewController()
    
//    これ（？つけるやり方）と
//    childViewController.parent?.addChildViewController(chidlViewController);
//    これ（if let）は同じことをしてる
//    if let a = childViewController.parent {
//        a.addChildViewController(chidlViewController)
//    }
//    xxxx? 、つまりnilになりえる型の中身を安全に取り出す、という方法がこれだけある。（正確にはもうひとつ、!をつけるというのもあるが、実行時にnilだとエラーがでるのでオススメしない）
//    これをiOSではOptional Tuningという
    // TODO: Safely unwrap childViewController.parent
}

func execute02_8() {}
func execute02_9() {}
func execute02_10() {}
