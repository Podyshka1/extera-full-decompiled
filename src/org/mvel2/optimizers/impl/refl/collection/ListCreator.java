package org.mvel2.optimizers.impl.refl.collection;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ListCreator implements Accessor {
    private Accessor[] values;

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object[] objArr = new Object[getValues().length];
        for (int i = 0; i < getValues().length; i++) {
            objArr[i] = getValues()[i].getValue(obj, obj2, variableResolverFactory);
        }
        return new ArrayList(Arrays.asList(objArr));
    }

    public ListCreator(Accessor[] accessorArr) {
        this.values = accessorArr;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return List.class;
    }

    public Accessor[] getValues() {
        return this.values;
    }
}
