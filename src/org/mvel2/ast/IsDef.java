package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.PropertyTools;

/* JADX INFO: loaded from: classes5.dex */
public class IsDef extends ASTNode {
    public IsDef(char[] cArr, int i, int i2, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.nameCache = new String(cArr, i, i2);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(variableResolverFactory.isResolveable(this.nameCache) || !(obj2 == null || PropertyTools.getFieldOrAccessor(obj2.getClass(), this.nameCache) == null));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(variableResolverFactory.isResolveable(this.nameCache) || !(obj2 == null || PropertyTools.getFieldOrAccessor(obj2.getClass(), this.nameCache) == null));
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }
}
