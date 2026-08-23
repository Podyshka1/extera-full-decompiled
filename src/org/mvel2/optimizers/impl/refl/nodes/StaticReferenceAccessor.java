package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class StaticReferenceAccessor implements AccessorNode {
    Object literal;
    private AccessorNode nextNode;

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        Object obj3 = this.literal;
        return accessorNode != null ? accessorNode.getValue(obj3, obj2, variableResolverFactory) : obj3;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextNode.setValue(this.literal, obj2, variableResolverFactory, obj3);
    }

    public Object getLiteral() {
        return this.literal;
    }

    public void setLiteral(Object obj) {
        this.literal = obj;
    }

    public StaticReferenceAccessor() {
    }

    public StaticReferenceAccessor(Object obj) {
        this.literal = obj;
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
        return this.literal.getClass();
    }
}
