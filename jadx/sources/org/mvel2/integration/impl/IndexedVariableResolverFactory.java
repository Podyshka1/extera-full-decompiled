package org.mvel2.integration.impl;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class IndexedVariableResolverFactory extends BaseVariableResolverFactory {
    public void clear() {
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return true;
    }

    public IndexedVariableResolverFactory(String[] strArr, VariableResolver[] variableResolverArr) {
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = variableResolverArr;
    }

    public IndexedVariableResolverFactory(String[] strArr, Object[] objArr) {
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = createResolvers(objArr, strArr.length);
    }

    public IndexedVariableResolverFactory(String[] strArr, Object[] objArr, VariableResolverFactory variableResolverFactory) {
        this.indexedVariableNames = strArr;
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory();
        this.nextFactory = mapVariableResolverFactory;
        mapVariableResolverFactory.setNextFactory(variableResolverFactory);
        this.indexedVariableResolvers = createResolvers(objArr, strArr.length);
    }

    private static VariableResolver[] createResolvers(Object[] objArr, int i) {
        VariableResolver[] variableResolverArr = new VariableResolver[i];
        int i2 = 0;
        while (i2 < i) {
            variableResolverArr[i2] = i2 >= objArr.length ? new SimpleValueResolver(null) : new IndexVariableResolver(i2, objArr);
            i2++;
        }
        return variableResolverArr;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj) {
        VariableResolver variableResolver = this.indexedVariableResolvers[i];
        variableResolver.setValue(obj);
        return variableResolver;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getIndexedVariableResolver(int i) {
        return this.indexedVariableResolvers[i];
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            resolver.setValue(obj);
        }
        return resolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            if (resolver instanceof SimpleSTValueResolver) {
                ((SimpleSTValueResolver) resolver).setStaticType(cls);
            }
            resolver.setValue(obj);
        }
        return resolver;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            return resolver;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory != null) {
            return variableResolverFactory.getVariableResolver(str);
        }
        throw new UnresolveablePropertyException("unable to resolve variable '" + str + "'");
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        if (isTarget(str)) {
            return true;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        return variableResolverFactory != null && variableResolverFactory.isResolveable(str);
    }

    protected VariableResolver addResolver(String str, VariableResolver variableResolver) {
        this.variableResolvers.put(str, variableResolver);
        return variableResolver;
    }

    private VariableResolver getResolver(String str) {
        int i = 0;
        while (true) {
            String[] strArr = this.indexedVariableNames;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return this.indexedVariableResolvers[i];
            }
            i++;
        }
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        for (String str2 : this.indexedVariableNames) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        return new HashSet(Arrays.asList(this.indexedVariableNames));
    }
}
