package org.mvel2.ast;

import java.util.HashMap;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class NewObjectPrototype extends ASTNode {
    private Function function;

    public NewObjectPrototype(ParserContext parserContext, Function function) {
        super(parserContext);
        this.function = function;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(), variableResolverFactory);
        this.function.getCompiledBlock().getValue(obj, obj2, mapVariableResolverFactory);
        return new PrototypalFunctionInstance(this.function, mapVariableResolverFactory);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValue(obj, obj2, variableResolverFactory);
    }
}
