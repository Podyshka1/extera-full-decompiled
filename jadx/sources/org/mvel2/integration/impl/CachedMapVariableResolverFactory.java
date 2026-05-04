package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class CachedMapVariableResolverFactory extends BaseVariableResolverFactory {
    protected Map<String, Object> variables;

    public CachedMapVariableResolverFactory() {
    }

    public CachedMapVariableResolverFactory(Map<String, Object> map) {
        this.variables = map;
        this.variableResolvers = new HashMap(map.size() * 2);
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            this.variableResolvers.put(entry.getKey(), new PrecachedMapVariableResolver(entry, entry.getKey()));
        }
    }

    public CachedMapVariableResolverFactory(Map<String, Object> map, VariableResolverFactory variableResolverFactory) {
        this.variables = map;
        this.variableResolvers = new HashMap(map.size() * 2);
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            this.variableResolvers.put(entry.getKey(), new PrecachedMapVariableResolver(entry, entry.getKey()));
        }
        this.nextFactory = variableResolverFactory;
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
        Map<String, VariableResolver> map = this.variableResolvers;
        if (map != null && map.containsKey(str)) {
            return true;
        }
        Map<String, Object> map2 = this.variables;
        if (map2 != null && map2.containsKey(str)) {
            return true;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        return variableResolverFactory != null && variableResolverFactory.isResolveable(str);
    }

    protected VariableResolver addResolver(String str, VariableResolver variableResolver) {
        if (this.variableResolvers == null) {
            this.variableResolvers = new HashMap();
        }
        this.variableResolvers.put(str, variableResolver);
        return variableResolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        Map<String, VariableResolver> map = this.variableResolvers;
        return map != null && map.containsKey(str);
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        return this.nextFactory == null ? this.variables != null ? new HashSet(this.variables.keySet()) : new HashSet(0) : this.variables != null ? new HashSet(this.variables.keySet()) : new HashSet(0);
    }
}
