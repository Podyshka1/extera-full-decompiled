package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseVariableResolverFactory implements VariableResolverFactory {
    protected String[] indexedVariableNames;
    protected VariableResolver[] indexedVariableResolvers;
    protected VariableResolverFactory nextFactory;
    private boolean tiltFlag;
    protected Map<String, VariableResolver> variableResolvers = new HashMap();
    protected int indexOffset = 0;

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return false;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolverFactory getNextFactory() {
        return this.nextFactory;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolverFactory setNextFactory(VariableResolverFactory variableResolverFactory) {
        if (variableResolverFactory != this) {
            this.nextFactory = variableResolverFactory;
        }
        return this.nextFactory;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        if (isResolveable(str)) {
            if (this.variableResolvers.containsKey(str)) {
                return this.variableResolvers.get(str);
            }
            VariableResolverFactory variableResolverFactory = this.nextFactory;
            if (variableResolverFactory != null) {
                return variableResolverFactory.getVariableResolver(str);
            }
        }
        throw new UnresolveablePropertyException("unable to resolve variable '" + str + "'");
    }

    public boolean isNextResolveable(String str) {
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        return variableResolverFactory != null && variableResolverFactory.isResolveable(str);
    }

    public void appendFactory(VariableResolverFactory variableResolverFactory) {
        VariableResolverFactory nextFactory = this.nextFactory;
        if (nextFactory == null) {
            this.nextFactory = variableResolverFactory;
            return;
        }
        while (nextFactory.getNextFactory() != null) {
            nextFactory = nextFactory.getNextFactory();
        }
        nextFactory.setNextFactory(this.nextFactory);
    }

    public void insertFactory(VariableResolverFactory variableResolverFactory) {
        if (this.nextFactory == null) {
            this.nextFactory = variableResolverFactory;
        } else {
            this.nextFactory = variableResolverFactory;
            variableResolverFactory.setNextFactory(variableResolverFactory);
        }
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        if (this.nextFactory == null) {
            return new HashSet(this.variableResolvers.keySet());
        }
        HashSet hashSet = new HashSet(this.variableResolvers.keySet());
        hashSet.addAll(this.nextFactory.getKnownVariables());
        return hashSet;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj) {
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory != null) {
            return variableResolverFactory.createIndexedVariable(i - this.indexOffset, str, obj);
        }
        throw new RuntimeException("cannot create indexed variable: " + str + "(" + i + "). operation not supported by resolver: " + getClass().getName());
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver getIndexedVariableResolver(int i) {
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory != null) {
            return variableResolverFactory.getIndexedVariableResolver(i - this.indexOffset);
        }
        throw new RuntimeException("cannot access indexed variable: " + i + ".  operation not supported by resolver: " + getClass().getName());
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj, Class<?> cls) {
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory != null) {
            return variableResolverFactory.createIndexedVariable(i - this.indexOffset, str, obj, cls);
        }
        throw new RuntimeException("cannot access indexed variable: " + str + "(" + i + ").  operation not supported by resolver.: " + getClass().getName());
    }

    public Map<String, VariableResolver> getVariableResolvers() {
        return this.variableResolvers;
    }

    public void setVariableResolvers(Map<String, VariableResolver> map) {
        this.variableResolvers = map;
    }

    public String[] getIndexedVariableNames() {
        return this.indexedVariableNames;
    }

    public void setIndexedVariableNames(String[] strArr) {
        this.indexedVariableNames = strArr;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public int variableIndexOf(String str) {
        if (this.indexedVariableNames == null) {
            return -1;
        }
        int i = 0;
        while (true) {
            String[] strArr = this.indexedVariableNames;
            if (i >= strArr.length) {
                return -1;
            }
            if (str.equals(strArr[i])) {
                return i;
            }
            i++;
        }
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver setIndexedVariableResolver(int i, VariableResolver variableResolver) {
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        if (variableResolverArr == null) {
            VariableResolver[] variableResolverArr2 = new VariableResolver[this.indexedVariableNames.length];
            this.indexedVariableResolvers = variableResolverArr2;
            variableResolverArr2[i - this.indexOffset] = variableResolver;
            return variableResolver;
        }
        variableResolverArr[i - this.indexOffset] = variableResolver;
        return variableResolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean tiltFlag() {
        return this.tiltFlag;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public void setTiltFlag(boolean z) {
        this.tiltFlag = z;
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory != null) {
            variableResolverFactory.setTiltFlag(z);
        }
    }
}
