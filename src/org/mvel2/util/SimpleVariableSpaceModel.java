package org.mvel2.util;

import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.IndexVariableResolver;
import org.mvel2.integration.impl.IndexedVariableResolverFactory;
import org.mvel2.integration.impl.SimpleSTValueResolver;

/* JADX INFO: loaded from: classes5.dex */
public class SimpleVariableSpaceModel extends VariableSpaceModel {
    public SimpleVariableSpaceModel(String[] strArr) {
        super(strArr);
    }

    public VariableResolverFactory createFactory(Object[] objArr) {
        int length = this.allVars.length;
        VariableResolver[] variableResolverArr = new VariableResolver[length];
        for (int i = 0; i < length; i++) {
            if (i >= objArr.length) {
                variableResolverArr[i] = new SimpleSTValueResolver(null, null);
            } else {
                variableResolverArr[i] = new IndexVariableResolver(i, objArr);
            }
        }
        return new IndexedVariableResolverFactory(this.allVars, variableResolverArr);
    }
}
