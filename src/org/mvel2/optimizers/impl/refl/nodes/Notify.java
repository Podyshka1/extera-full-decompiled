package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.GlobalListenerFactory;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class Notify implements AccessorNode {
    private String name;
    private AccessorNode nextNode;

    public Notify(String str) {
        this.name = str;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        GlobalListenerFactory.notifyGetListeners(obj, this.name, variableResolverFactory);
        return this.nextNode.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        GlobalListenerFactory.notifySetListeners(obj, this.name, variableResolverFactory, obj3);
        return this.nextNode.setValue(obj, obj2, variableResolverFactory, obj3);
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
