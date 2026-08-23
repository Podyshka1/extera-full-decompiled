package org.mvel2.optimizers.impl.refl.nodes;

import java.util.List;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ListAccessor implements AccessorNode {
    private int index;
    private AccessorNode nextNode;

    public ListAccessor() {
    }

    public ListAccessor(int i) {
        this.index = i;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.getValue(((List) obj).get(this.index), obj2, variableResolverFactory);
        }
        return ((List) obj).get(this.index);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(((List) obj).get(this.index), obj2, variableResolverFactory, obj3);
        }
        ((List) obj).set(this.index, obj3);
        return obj3;
    }

    public int getIndex() {
        return this.index;
    }

    public void setIndex(int i) {
        this.index = i;
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

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Object.class;
    }
}
