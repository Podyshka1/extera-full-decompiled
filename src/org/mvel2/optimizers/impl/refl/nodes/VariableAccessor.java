package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes.dex */
public class VariableAccessor implements AccessorNode {
    private AccessorNode nextNode;
    private String property;

    public VariableAccessor(String str) {
        this.property = str;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (variableResolverFactory == null) {
            throw new RuntimeException("cannot access property in optimized accessor: " + this.property);
        }
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.getValue(variableResolverFactory.getVariableResolver(this.property).getValue(), obj2, variableResolverFactory);
        }
        return variableResolverFactory.getVariableResolver(this.property).getValue();
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(variableResolverFactory.getVariableResolver(this.property).getValue(), obj2, variableResolverFactory, obj3);
        }
        variableResolverFactory.getVariableResolver(this.property).setValue(obj3);
        return obj3;
    }

    public Object getProperty() {
        return this.property;
    }

    public void setProperty(String str) {
        this.property = str;
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
