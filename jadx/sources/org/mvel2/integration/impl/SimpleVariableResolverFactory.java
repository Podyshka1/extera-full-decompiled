package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class SimpleVariableResolverFactory extends BaseVariableResolverFactory {
    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj) {
        return null;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj, Class<?> cls) {
        return null;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return false;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver setIndexedVariableResolver(int i, VariableResolver variableResolver) {
        return null;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public int variableIndexOf(String str) {
        return 0;
    }

    public SimpleVariableResolverFactory(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            createVariable(entry.getKey(), entry.getValue());
        }
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        if (this.variableResolvers == null) {
            this.variableResolvers = new HashMap(5, 0.6f);
        }
        SimpleValueResolver simpleValueResolver = new SimpleValueResolver(obj);
        this.variableResolvers.put(str, simpleValueResolver);
        return simpleValueResolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        if (this.variableResolvers == null) {
            this.variableResolvers = new HashMap(5, 0.6f);
        }
        SimpleSTValueResolver simpleSTValueResolver = new SimpleSTValueResolver(obj, cls);
        this.variableResolvers.put(str, simpleSTValueResolver);
        return simpleSTValueResolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.variableResolvers.containsKey(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        if (this.variableResolvers.containsKey(str)) {
            return true;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        return variableResolverFactory != null && variableResolverFactory.isResolveable(str);
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        VariableResolver variableResolver = this.variableResolvers.get(str);
        if (variableResolver != null) {
            return variableResolver;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory == null) {
            return null;
        }
        return variableResolverFactory.getVariableResolver(str);
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        return this.variableResolvers.keySet();
    }
}
