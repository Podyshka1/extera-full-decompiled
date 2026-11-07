package org.mvel2.optimizers.impl.refl.nodes;

import java.util.Map;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class MapAccessor implements AccessorNode {
    private AccessorNode nextNode;
    private Object property;

    public MapAccessor() {
    }

    public MapAccessor(Object obj) {
        this.property = obj;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.getValue(((Map) obj).get(this.property), obj2, variableResolverFactory);
        }
        return ((Map) obj).get(this.property);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(((Map) obj).get(this.property), obj2, variableResolverFactory, obj3);
        }
        ((Map) obj).put(this.property, obj3);
        return obj3;
    }

    public Object getProperty() {
        return this.property;
    }

    public void setProperty(Object obj) {
        this.property = obj;
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
        return "Map Accessor -> [" + this.property + "]";
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Object.class;
    }
}
