package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ast.FunctionInstance;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class FunctionAccessor extends BaseAccessor {
    private FunctionInstance function;
    private Accessor[] parameters;

    public FunctionAccessor(FunctionInstance functionInstance, Accessor[] accessorArr) {
        this.function = functionInstance;
        this.parameters = accessorArr;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object[] objArr;
        Accessor[] accessorArr = this.parameters;
        if (accessorArr == null || accessorArr.length == 0) {
            objArr = null;
        } else {
            int length = accessorArr.length;
            objArr = new Object[length];
            for (int i = 0; i < length; i++) {
                objArr[i] = this.parameters[i].getValue(obj, obj2, variableResolverFactory);
            }
        }
        AccessorNode accessorNode = this.nextNode;
        FunctionInstance functionInstance = this.function;
        if (accessorNode != null) {
            return accessorNode.getValue(functionInstance.call(obj, obj2, variableResolverFactory, objArr), obj2, variableResolverFactory);
        }
        return functionInstance.call(obj, obj2, variableResolverFactory, objArr);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        throw new RuntimeException("can't write to function");
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Object.class;
    }
}
