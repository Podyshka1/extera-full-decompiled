package org.mvel2.ast;

import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class PrototypalFunctionInstance extends FunctionInstance {
    private final VariableResolverFactory resolverFactory;

    public PrototypalFunctionInstance(Function function, VariableResolverFactory variableResolverFactory) {
        super(function);
        this.resolverFactory = variableResolverFactory;
    }

    @Override // org.mvel2.ast.FunctionInstance
    public Object call(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
        return this.function.call(obj, obj2, new InvokationContextFactory(variableResolverFactory, this.resolverFactory), objArr);
    }

    public VariableResolverFactory getResolverFactory() {
        return this.resolverFactory;
    }

    public String toString() {
        return "function_prototype:" + this.function.getName();
    }
}
