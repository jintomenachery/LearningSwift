//: Playground - noun: a place where people can play

import UIKit

struct Item {
    var price : Int
    var remainingItems : Int
}

enum VendingMachineErrors : ErrorType {
    case outofStock
    case invalidItem
    case insufficientFund(totalPrice:Int, reminingNeeded:Int)
}

class VendingMachine {

    var inventory : [String:Item]  = [
        "Munch" : Item(price: 10, remainingItems: 10),
        "Perk" : Item(price: 12, remainingItems: 4),
        "Coke" : Item(price: 20, remainingItems: 40)
    ]

    func getInventory() {
        for (key, value) in inventory {
            print("We have \(value.remainingItems) \(key)")
        }
    }

    func vend(name:String) throws {
    }
}

var vendingMachineObj = VendingMachine()
vendingMachineObj.getInventory()
