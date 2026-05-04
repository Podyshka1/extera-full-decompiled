package org.mvel2.util;

import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.IndexVariableResolver;
import org.mvel2.integration.impl.IndexedVariableResolverFactory;
import org.mvel2.integration.impl.SimpleValueResolver;

/* JADX INFO: loaded from: classes5.dex */
public class SharedVariableSpaceModel extends VariableSpaceModel {
    private VariableResolver[] cachedGlobalResolvers;

    public SharedVariableSpaceModel(String[] strArr, Object[] objArr) {
        super(strArr);
        this.cachedGlobalResolvers = new VariableResolver[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            this.cachedGlobalResolvers[i] = new IndexVariableResolver(i, objArr);
        }
    }

    public VariableResolverFactory createFactory() {
        int length = this.allVars.length;
        VariableResolver[] variableResolverArr = new VariableResolver[length];
        for (int i = 0; i < length; i++) {
            VariableResolver[] variableResolverArr2 = this.cachedGlobalResolvers;
            if (i >= variableResolverArr2.length) {
                variableResolverArr[i] = new SimpleValueResolver(null);
            } else {
                variableResolverArr[i] = variableResolverArr2[i];
            }
        }
        return new IndexedVariableResolverFactory(this.allVars, variableResolverArr);
    }
}
