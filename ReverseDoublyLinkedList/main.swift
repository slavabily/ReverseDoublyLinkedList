//
//  main.swift
//  ReverseDoublyLinkedList
//
//  Created by slava bily on 01.12.2021.
//

import Foundation

class DoublyLinkedListNode {
    let data: Int
    var next: DoublyLinkedListNode?
    var prev: DoublyLinkedListNode?
    
    init(value: Int, next: DoublyLinkedListNode?) {
        self.data = value
        self.next = next
    }
}

let threeNode = DoublyLinkedListNode(value: 3, next: nil)
let twoNode = DoublyLinkedListNode(value: 2, next: threeNode)
let oneNode = DoublyLinkedListNode(value: 1, next: twoNode)

// 1<->2<->3->nil

func printList(head: DoublyLinkedListNode?) {
    print("Printing out list of nodes")
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.data ?? -1)
        currentNode = currentNode?.next
    }
}

printList(head: oneNode)

// 1<->2<->3->nil

func reverse(llist: DoublyLinkedListNode?) -> DoublyLinkedListNode? {
    var currentNode = llist
    var temp: DoublyLinkedListNode?
    while currentNode != nil {
        temp = currentNode?.prev
        currentNode?.prev = currentNode?.next
        currentNode?.next = temp
        currentNode = currentNode?.prev
    }
    if temp != nil {
        currentNode = temp?.prev
    }
     
    return currentNode
}
print(reverse(llist: oneNode))

let myReversedList = reverse(llist: oneNode)

 

printList(head: myReversedList)

