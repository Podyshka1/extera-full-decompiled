package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;
import org.mvel2.util.MethodStub;

/* JADX INFO: loaded from: classes5.dex */
public class StaticMethodImportResolver implements VariableResolver {
    private MethodStub method;
    private String name;

    @Override // org.mvel2.integration.VariableResolver
    public int getFlags() {
        return 0;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Class getType() {
        return null;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setStaticType(Class cls) {
    }

    public StaticMethodImportResolver(String str, MethodStub methodStub) {
        this.name = str;
        this.method = methodStub;
    }

    @Override // org.mvel2.integration.VariableResolver
    public String getName() {
        return this.name;
    }

    @Override // org.mvel2.integration.VariableResolver
    public MethodStub getValue() {
        return this.method;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setValue(Object obj) {
        this.method = (MethodStub) obj;
    }
}
