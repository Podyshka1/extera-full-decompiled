package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.Function;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class FunctionVariableResolverFactory extends BaseVariableResolverFactory implements LocalVariableResolverFactory {
    private Function function;
    private boolean noTilt = false;

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return true;
    }

    public FunctionVariableResolverFactory(Function function, VariableResolverFactory variableResolverFactory, String[] strArr, Object[] objArr) {
        this.function = function;
        this.variableResolvers = new HashMap();
        this.nextFactory = variableResolverFactory;
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = new VariableResolver[strArr.length];
        for (int i = 0; i < objArr.length; i++) {
            this.variableResolvers.put(this.indexedVariableNames[i], null);
            this.indexedVariableResolvers[i] = new SimpleValueResolver(objArr[i]);
        }
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        if (this.variableResolvers.containsKey(str)) {
            return true;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        return variableResolverFactory != null && variableResolverFactory.isResolveable(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        VariableResolver variableResolver = getVariableResolver(str);
        if (variableResolver == null) {
            int iIncreaseRegisterTableSize = increaseRegisterTableSize();
            this.indexedVariableNames[iIncreaseRegisterTableSize] = str;
            this.indexedVariableResolvers[iIncreaseRegisterTableSize] = new SimpleValueResolver(obj);
            this.variableResolvers.put(str, null);
            return this.indexedVariableResolvers[iIncreaseRegisterTableSize];
        }
        variableResolver.setValue(obj);
        return variableResolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        Map<String, VariableResolver> map = this.variableResolvers;
        VariableResolver variableResolver = map != null ? map.get(str) : null;
        if (variableResolver != null && variableResolver.getType() != null) {
            throw new RuntimeException("variable already defined within scope: " + variableResolver.getType() + " " + str);
        }
        return createIndexedVariable(variableIndexOf(str), str, obj);
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj) {
        int i2 = i - this.indexOffset;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i2];
        if (variableResolver != null) {
            variableResolver.setValue(obj);
        } else {
            variableResolverArr[i2] = new SimpleValueResolver(obj);
        }
        this.variableResolvers.put(str, null);
        return this.indexedVariableResolvers[i2];
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i, String str, Object obj, Class<?> cls) {
        int i2 = i - this.indexOffset;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i2];
        if (variableResolver != null) {
            variableResolver.setValue(obj);
        } else {
            variableResolverArr[i2] = new SimpleValueResolver(obj);
        }
        return this.indexedVariableResolvers[i2];
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getIndexedVariableResolver(int i) {
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i];
        if (variableResolver != null) {
            return variableResolver;
        }
        VariableResolver variableResolver2 = super.getVariableResolver(this.indexedVariableNames[i]);
        variableResolverArr[i] = variableResolver2;
        return variableResolver2;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        int iVariableIndexOf = variableIndexOf(str);
        if (iVariableIndexOf != -1) {
            VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
            if (variableResolverArr[iVariableIndexOf] == null) {
                variableResolverArr[iVariableIndexOf] = new SimpleValueResolver(null);
            }
            this.variableResolvers.put(this.indexedVariableNames[iVariableIndexOf], null);
            return this.indexedVariableResolvers[iVariableIndexOf];
        }
        return super.getVariableResolver(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.variableResolvers.containsKey(str) || variableIndexOf(str) != -1;
    }

    private int increaseRegisterTableSize() {
        String[] strArr = this.indexedVariableNames;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        int length = strArr.length;
        int i = length + 1;
        this.indexedVariableNames = new String[i];
        this.indexedVariableResolvers = new VariableResolver[i];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            this.indexedVariableNames[i2] = strArr[i2];
            this.indexedVariableResolvers[i2] = variableResolverArr[i2];
        }
        return length;
    }

    public void updateParameters(Object[] objArr) {
        for (int i = 0; i < objArr.length; i++) {
            this.indexedVariableResolvers[i] = new SimpleValueResolver(objArr[i]);
        }
    }

    public VariableResolver[] getIndexedVariableResolvers() {
        return this.indexedVariableResolvers;
    }

    public void setIndexedVariableResolvers(VariableResolver[] variableResolverArr) {
        this.indexedVariableResolvers = variableResolverArr;
    }

    public Function getFunction() {
        return this.function;
    }

    public void setIndexOffset(int i) {
        this.indexOffset = i;
    }

    public VariableResolverFactory setNoTilt(boolean z) {
        this.noTilt = z;
        return this;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public void setTiltFlag(boolean z) {
        if (this.noTilt) {
            return;
        }
        super.setTiltFlag(z);
    }
}
