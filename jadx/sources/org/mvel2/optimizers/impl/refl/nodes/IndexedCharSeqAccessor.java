package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class IndexedCharSeqAccessor implements AccessorNode {
    private int index;
    private AccessorNode nextNode;

    public IndexedCharSeqAccessor() {
    }

    public IndexedCharSeqAccessor(int i) {
        this.index = i;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.getValue(Character.valueOf(((String) obj).charAt(this.index)), obj2, variableResolverFactory);
        }
        return Character.valueOf(((String) obj).charAt(this.index));
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextNode.setValue(Character.valueOf(((String) obj).charAt(this.index)), obj2, variableResolverFactory, obj3);
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
        return Character.class;
    }
}
