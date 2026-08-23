package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;

/* JADX INFO: loaded from: classes5.dex */
public class SimpleValueResolver implements VariableResolver {
    private Object value;

    @Override // org.mvel2.integration.VariableResolver
    public int getFlags() {
        return 0;
    }

    @Override // org.mvel2.integration.VariableResolver
    public String getName() {
        return null;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setStaticType(Class cls) {
    }

    public SimpleValueResolver(Object obj) {
        this.value = obj;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Class getType() {
        return Object.class;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Object getValue() {
        return this.value;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setValue(Object obj) {
        this.value = obj;
    }
}
