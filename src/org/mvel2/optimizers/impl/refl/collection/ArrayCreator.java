package org.mvel2.optimizers.impl.refl.collection;

import java.lang.reflect.Array;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayCreator implements Accessor {
    private Class arrayType;
    public Accessor[] template;

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        int i = 0;
        if (Object.class.equals(this.arrayType)) {
            int length = this.template.length;
            Object[] objArr = new Object[length];
            while (i < length) {
                objArr[i] = this.template[i].getValue(obj, obj2, variableResolverFactory);
                i++;
            }
            return objArr;
        }
        Object objNewInstance = Array.newInstance((Class<?>) this.arrayType, this.template.length);
        while (true) {
            Accessor[] accessorArr = this.template;
            if (i >= accessorArr.length) {
                return objNewInstance;
            }
            Array.set(objNewInstance, i, accessorArr[i].getValue(obj, obj2, variableResolverFactory));
            i++;
        }
    }

    public Accessor[] getTemplate() {
        return this.template;
    }

    public ArrayCreator(Accessor[] accessorArr, Class cls) {
        this.template = accessorArr;
        this.arrayType = cls;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.arrayType;
    }
}
