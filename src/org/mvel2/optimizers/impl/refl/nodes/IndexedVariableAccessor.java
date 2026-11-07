package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class IndexedVariableAccessor implements AccessorNode {
    private AccessorNode nextNode;
    private int register;

    public IndexedVariableAccessor(int i) {
        this.register = i;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        int i = this.register;
        if (accessorNode != null) {
            return accessorNode.getValue(variableResolverFactory.getIndexedVariableResolver(i).getValue(), obj2, variableResolverFactory);
        }
        return variableResolverFactory.getIndexedVariableResolver(i).getValue();
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        int i = this.register;
        if (accessorNode != null) {
            return accessorNode.setValue(variableResolverFactory.getIndexedVariableResolver(i).getValue(), obj2, variableResolverFactory, obj3);
        }
        variableResolverFactory.getIndexedVariableResolver(i).setValue(obj3);
        return obj3;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Object.class;
    }
}
