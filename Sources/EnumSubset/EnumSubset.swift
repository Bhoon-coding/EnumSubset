// The Swift Programming Language
// https://docs.swift.org/swift-book

/// A macro that produces both a value and a string containing the
/// source code that generated the value. For example,

@attached(member, names: named(init))
public macro EnumSubset<Superset>() = #externalMacro(module: "EnumSubsetMacros", type: "EnumSubsetMacro")
