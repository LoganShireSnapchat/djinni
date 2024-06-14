import XCTest
@testable import TextSort;
@testable import TextSortBridge;

class MyListener: TextboxListener {
    deinit {
        print("*** deinit called")
    }
    func update(items: ItemList) {
        print("*** update() called")
        print(items)
    }
}

final class AllTests: XCTestCase {
    func testExample() throws {
        let listener = MyListener()
        let s = SortItems_statics.createWithListener(listener: listener)
        let items = ItemList(items: ["bbb", "ccc", "aaa"])
        s.sort(order: SortOrder.ASCENDING, items: items)
    }
}
