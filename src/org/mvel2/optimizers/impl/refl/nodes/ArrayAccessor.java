package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayAccessor implements AccessorNode {
    private int index;
    private AccessorNode nextNode;

    public ArrayAccessor() {
    }

    public ArrayAccessor(int i) {
        this.index = i;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        int i = this.index;
        if (accessorNode != null) {
            return accessorNode.getValue(Array.get(obj, i), obj2, variableResolverFactory);
        }
        try {
            return Array.get(obj, i);
        } catch (IllegalArgumentException unused) {
            throw new ClassCastException("Argument of type '" + obj.getClass() + "' is not an Array");
        }
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        int i = this.index;
        if (accessorNode != null) {
            return accessorNode.setValue(Array.get(obj, i), obj2, variableResolverFactory, obj3);
        }
        Array.set(obj, i, obj3);
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

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Object[].class;
    }

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }
}
