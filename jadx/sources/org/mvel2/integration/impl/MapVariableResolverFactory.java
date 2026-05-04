package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class MapVariableResolverFactory extends BaseVariableResolverFactory {
    protected Map<String, Object> variables;

    public MapVariableResolverFactory() {
        this.variables = new HashMap();
    }

    public MapVariableResolverFactory(Map map) {
        this.variables = map;
    }

    public MapVariableResolverFactory(Map<String, Object> map, VariableResolverFactory variableResolverFactory) {
        this.variables = map;
        this.nextFactory = variableResolverFactory;
    }

    public MapVariableResolverFactory(Map<String, Object> map, boolean z) {
        this.variables = map;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        try {
            VariableResolver variableResolver = getVariableResolver(str);
            variableResolver.setValue(obj);
            return variableResolver;
        } catch (UnresolveablePropertyException unused) {
            MapVariableResolver mapVariableResolver = new MapVariableResolver(this.variables, str);
            addResolver(str, mapVariableResolver).setValue(obj);
            return mapVariableResolver;
        }
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        VariableResolver variableResolver;
        try {
            variableResolver = getVariableResolver(str);
        } catch (UnresolveablePropertyException unused) {
            variableResolver = null;
        }
        if (variableResolver != null && variableResolver.getType() != null) {
            throw new RuntimeException("variable already defined within scope: " + variableResolver.getType() + " " + str);
        }
        MapVariableResolver mapVariableResolver = new MapVariableResolver(this.variables, str, cls);
        addResolver(str, mapVariableResolver).setValue(obj);
        return mapVariableResolver;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        VariableResolver variableResolver = this.variableResolvers.get(str);
        if (variableResolver != null) {
            return variableResolver;
        }
        if (this.variables.containsKey(str)) {
            Map<String, VariableResolver> map = this.variableResolvers;
            MapVariableResolver mapVariableResolver = new MapVariableResolver(this.variables, str);
            map.put(str, mapVariableResolver);
            return mapVariableResolver;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory != null) {
            return variableResolverFactory.getVariableResolver(str);
        }
        throw new UnresolveablePropertyException("unable to resolve variable '" + str + "'");
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        if (this.variableResolvers.containsKey(str)) {
            return true;
        }
        Map<String, Object> map = this.variables;
        if (map != null && map.containsKey(str)) {
            return true;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        return variableResolverFactory != null && variableResolverFactory.isResolveable(str);
    }

    protected VariableResolver addResolver(String str, VariableResolver variableResolver) {
        this.variableResolvers.put(str, variableResolver);
        return variableResolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.variableResolvers.containsKey(str);
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        return this.nextFactory == null ? this.variables != null ? new HashSet(this.variables.keySet()) : new HashSet(0) : this.variables != null ? new HashSet(this.variables.keySet()) : new HashSet(0);
    }

    public void clear() {
        this.variableResolvers.clear();
        this.variables.clear();
    }
}
