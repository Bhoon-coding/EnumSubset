import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import EnumSubsetMacros

let testMacros: [String: Macro.Type] = [
    "EnumSubset": EnumSubsetMacro.self
]

final class EnumSubsetTests: XCTestCase {
    func testEnumSubset() {
        assertMacroExpansion(
            """
            @EnumSubset
            enum 한식 {
              case 떡국, 불고기
            }
            """
            , expandedSource:
            """
            enum 한식 {
              case 떡국, 불고기
            }
            """
                , macros: testMacros)
    }
}
