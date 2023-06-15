import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

/// Implementation of th `EnumSubset` macro
public struct EnumSubsetMacro: MemberMacro {
    public static func expansion<Declaration, Context>(
        of node: SwiftSyntax.AttributeSyntax,
        providingMembersOf declaration: Declaration,
        in context: Context
    ) throws -> [SwiftSyntax.DeclSyntax] where Declaration : SwiftSyntax.DeclGroupSyntax, Context : SwiftSyntaxMacros.MacroExpansionContext {
        return []
    }
    
}

@main
struct EnumSubsetPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        EnumSubsetMacro.self
    ]
}
