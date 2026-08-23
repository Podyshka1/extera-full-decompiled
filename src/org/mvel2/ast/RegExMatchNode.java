package org.mvel2.ast;

import java.util.regex.Pattern;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class RegExMatchNode extends ASTNode {
    private ASTNode node;
    private ASTNode patternNode;

    public RegExMatchNode(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.node = aSTNode;
        this.patternNode = aSTNode2;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(Pattern.compile(String.valueOf(this.patternNode.getReducedValueAccelerated(obj, obj2, variableResolverFactory))).matcher(String.valueOf(this.node.getReducedValueAccelerated(obj, obj2, variableResolverFactory))).matches());
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        char[] cArr = this.expr;
        ASTNode aSTNode = this.patternNode;
        Pattern patternCompile = Pattern.compile(String.valueOf(MVEL.eval(cArr, aSTNode.start, aSTNode.offset, obj, variableResolverFactory)));
        char[] cArr2 = this.expr;
        ASTNode aSTNode2 = this.node;
        return Boolean.valueOf(patternCompile.matcher(String.valueOf(MVEL.eval(cArr2, aSTNode2.start, aSTNode2.offset, obj, variableResolverFactory))).matches());
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }
}
