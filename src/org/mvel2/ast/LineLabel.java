package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class LineLabel extends ASTNode {
    private int lineNumber;
    private String sourceFile;

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    public LineLabel(String str, int i, ParserContext parserContext) {
        super(parserContext);
        this.lineNumber = i;
        this.sourceFile = str;
        this.fields = -1;
    }

    public String getSourceFile() {
        return this.sourceFile;
    }

    public void setSourceFile(String str) {
        this.sourceFile = str;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public void setLineNumber(int i) {
        this.lineNumber = i;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return "[SourceLine:" + this.lineNumber + "]";
    }
}
