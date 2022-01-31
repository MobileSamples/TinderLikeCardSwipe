![Excellent Webworld Company Logo](https://eww-wp-new.s3.ap-south-1.amazonaws.com/wp-content/uploads/2021/10/21124036/Excellent-Webworld-logo-svg.jpg)

# How to Create a Tinder-like Swipe Card Stack for iPhone?

With introducing Tinder in the market, we saw new patterns of viewing and sorting data. Using these tinder way libraries you can create swipeable, clickable cards in your app.

Here we will update you with how you can implement this card swipe pattern for anything you are building. Our developers are always up-to-date with libraries whenever a new concept of iOS is released.



## Requirement
Supported OS 13.0 to 15.0 

## Implementation of Card Swipe like Feature in iOS
It’s actually an easy process to implement this for you. Let’s get started with how it can be implemented for you.

### 1 - Getting Started
Download and include the SwipeableClass folder in your Project.

### 2 - Installation

Install pod in your project  “pod 'pop’”.

### 3 - Kolada 

Drag View and Drop in your ViewController in Storyboard and Give its superclass as KolodaView.

### 4 - Delegation

Take an outlet of your KolodaView to ViewController, then set dataSource and delegate the below coding in it.

    class ViewController: UIViewController {
    @IBOutlet weak var kolodaView: KolodaView!

    override func viewDidLoad() {
        super.viewDidLoad()

        kolodaView.dataSource = self
        kolodaView.delegate = self
    }


### 5 - Adding an Extension
Confirm your ViewController to KolodaViewDelegate protocol and override some methods if you need.

    extension ViewController: KolodaViewDelegate {
   
    // this method will show if card out of rang 
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        let position = kolodaView.currentCardIndex
        for i in 1...numberOfCards {
          dataSource.append(UIImage(named: "Card_like_\(i)")!)
        }
        kolodaView.insertCardAtIndexRange(position..<position + numberOfCards, animated: true)
    }

     // This method will work when you want to open something on a card click.
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
    }

### 6 - Allocate Numbers to the Cards

Confirm ViewController to KolodaViewDataSource protocol and implement all the methods

    extension ViewController: KolodaViewDataSource {
    
    // In this you have to give number of cards
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return dataSource.count
    }
    
     // this will help to maintain card drag speed.
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }
    
    // this will show card data of particular index
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        return UIImageView(image: dataSource[Int(index)])
    }


### 7 - Run the Project

Now run the project and swipe the view to left to right or right to left you will be able to see the swipe effect on tinder and many other apps 

**Credits:- The code was developed by our extremely talented developer Nishee.**


## Support
If you have any questions, issues, or propositions, please create a new issue in this repository.
If you any questions regarding <a href="https://www.excellentwebworld.com/iphone-application-development-services/?utm_source=github&utm_campaign=iphone-app-development">iPhone application development services</a> or want to <a href="https://www.excellentwebworld.com/hire-iphone-app-developers/?utm_source=github&utm_campaign=hire+iphone-developers">hire iphone app developer</a>, then send an email to biz@excellentwebworld.com or fill out the form on the contact page.
