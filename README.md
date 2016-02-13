# Hacking with Swift - Project 12 - Saving user settings

How to save user settings and data for later use.

## Setup

- Xcode 7.2.1
- Swift 2.0
- iOS 9.2
- iPad

## Topics covered

- Using ```NSUserDefaults.standardUserDefaults()``` to store data.
- ```NSUserDefaults``` should not be used for large volume of data (<100Kb).
- Using the nil coalescing operator ```??``` to retrieve an object.
```let array = defaults.objectForKey("SavedArray") as? [String] ?? [String]()```.
- Adding ```NSCoding``` to a class to save/load in ```NSUserDefaults```.
- Using ```NSKeyedArchiver.archivedDataWithRootObject``` to save objects into ```NSUserDefaults```.
- Using ```NSKeyedUnarchiver.unarchiveObjectWithData``` to load data from ```NSUserDefaults```.
- Checking for existing data in ```NSUserDefaults```:
```NSUserDefaults.standardUserDefaults().bjectForKey("people") as? NSData```.
- Explanation why we need to use a class inheriting from ```NSObject``` and implementing the ```NSCoding``` protocol instead of a ```struct```.
