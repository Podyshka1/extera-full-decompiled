package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAccessor implements AccessorNode {
    protected AccessorNode nextNode;

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }
}
