package org.mvel2.ast;

import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class FunctionInstance {
    protected final Function function;

    public FunctionInstance(Function function) {
        this.function = function;
    }

    public Function getFunction() {
        return this.function;
    }

    public Object call(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
        return this.function.call(obj, obj2, variableResolverFactory, objArr);
    }
}
