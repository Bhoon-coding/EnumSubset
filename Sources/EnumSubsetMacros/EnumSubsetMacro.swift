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
        guard let enumDecl = declaration.as(EnumDeclSyntax.self) else {
            // TODO: [에러처리] Emit an error here
            return []
        }
        let members = enumDecl.memberBlock.members
        let caseDecls = members.compactMap { $0.decl.as(EnumCaseDeclSyntax.self) }
        let elements = caseDecls.flatMap { $0.elements }
        
        
        return []
    }
    
}

@main
struct EnumSubsetPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        EnumSubsetMacro.self
    ]
}
