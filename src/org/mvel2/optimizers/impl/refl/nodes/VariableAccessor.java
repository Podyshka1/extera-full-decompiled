package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ast.Instance$$ExternalSyntheticBUOutline0;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class VariableAccessor implements AccessorNode {
    private AccessorNode nextNode;
    private String property;

    public VariableAccessor(String str) {
        this.property = str;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (variableResolverFactory == null) {
            Instance$$ExternalSyntheticBUOutline0.m865m("cannot access property in optimized accessor: ", this.property);
            return null;
        }
        AccessorNode accessorNode = this.nextNode;
        String str = this.property;
        if (accessorNode != null) {
            return accessorNode.getValue(variableResolverFactory.getVariableResolver(str).getValue(), obj2, variableResolverFactory);
        }
        return variableResolverFactory.getVariableResolver(str).getValue();
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        String str = this.property;
        if (accessorNode != null) {
            return accessorNode.setValue(variableResolverFactory.getVariableResolver(str).getValue(), obj2, variableResolverFactory, obj3);
        }
        variableResolverFactory.getVariableResolver(str).setValue(obj3);
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
