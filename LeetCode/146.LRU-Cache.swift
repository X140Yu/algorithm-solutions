/*
 Design and implement a data structure for Least Recently Used (LRU) cache. It should support the following operations: get and put.

get(key) - Get the value (will always be positive) of the key if the key exists in the cache, otherwise return -1.
put(key, value) - Set or insert the value if the key is not already present. When the cache reached its capacity, it should invalidate the least recently used item before inserting a new item.

Follow up:
Could you do both operations in O(1) time complexity?

Example:

LRUCache cache = new LRUCache( 2 /* capacity */ );

cache.put(1, 1);
cache.put(2, 2);
cache.get(1);       // returns 1
cache.put(3, 3);    // evicts key 2
cache.get(2);       // returns -1 (not found)
cache.put(4, 4);    // evicts key 1
cache.get(1);       // returns -1 (not found)
cache.get(3);       // returns 3
cache.get(4);       // returns 4

*/


import Foundation


class Node<V>: CustomStringConvertible {
    var next: Node<V>?
    var pre: Node<V>?
    var val: V
    let key: V

    init(_ value: V, _ key: V) {
        val = value
        self.key = key
    }

    var description: String {
        return "\( val )"
    }
}

class LRUCache {

    private var cache = [Int: Node<Int>]()
    private var head = Node(-1, -1)
    private var tail = Node(-1, -1)
    private let capacity: Int

    init(_ capacity: Int) {
        self.capacity = capacity
        head.next = tail
        tail.pre = head
    }

    func removeNode(_ node: Node<Int>) {
        let prev = node.pre
        let next = node.next

        prev?.next = next
        next?.pre = prev
    }

    func addNodeToFront(_ node: Node<Int>) {
        let headNext = head.next

        head.next = node
        node.pre = head

        node.next = headNext
        headNext?.pre = node
    }

    func get(_ key: Int) -> Int {
        guard let v = cache[key] else {
            return -1
        }

        removeNode(v)
        addNodeToFront(v)

        return v.val
    }

    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            removeNode(node)
            cache.removeValue(forKey: node.key)
        } else if cache.count == capacity, let node = tail.pre {
            removeNode(node)
            cache.removeValue(forKey: node.key)
        }

        let node = Node(value, key)
        addNodeToFront(node)
        cache[key] = node
    }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */

import XCTest

class MyTestCase: XCTestCase {

    func testExample() {
        let cache = LRUCache(2)
        cache.put(1, 1);
        cache.put(2, 2);
        XCTAssertEqual(cache.get(1), 1)
        cache.put(3, 3);    // evicts key 2
        XCTAssertEqual(cache.get(2), -1)
        cache.put(4, 4);    // evicts key 1
        XCTAssertEqual(cache.get(1), -1)
        XCTAssertEqual(cache.get(3), 3)
        XCTAssertEqual(cache.get(4), 4)
    }

    func testAnother() {
        let cache1 = LRUCache(1)
        cache1.put(2, 1)
        XCTAssertEqual(cache1.get(2), 1)
        cache1.put(3, 2) // null
        XCTAssertEqual(cache1.get(2), -1)
        XCTAssertEqual(cache1.get(3), 2)
    }

    func test3() {
        let cache2 = LRUCache(2)
        XCTAssertEqual(cache2.get(2), -1)
        cache2.put(2, 6)
        XCTAssertEqual(cache2.get(1), -1)
        cache2.put(1, 5)
        cache2.put(1, 2)
        XCTAssertEqual(cache2.get(1), 2)
        XCTAssertEqual(cache2.get(2), 6)
    }
}

MyTestCase.defaultTestSuite.run()
