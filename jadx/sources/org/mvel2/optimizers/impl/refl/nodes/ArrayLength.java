package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayLength extends BaseAccessor {
    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.getValue(Integer.valueOf(Array.getLength(obj)), obj2, variableResolverFactory);
        }
        return Integer.valueOf(Array.getLength(obj));
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Integer.class;
    }
}
