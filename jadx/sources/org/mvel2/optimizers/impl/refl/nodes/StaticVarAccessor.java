package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.OptimizationFailure;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class StaticVarAccessor implements AccessorNode {
    Field field;
    private AccessorNode nextNode;

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.getValue(this.field.get(null), obj2, variableResolverFactory);
            }
            return this.field.get(null);
        } catch (Exception e) {
            throw new OptimizationFailure("unable to access static field", e);
        }
    }

    public StaticVarAccessor(Field field) {
        this.field = field;
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
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode == null) {
                this.field.set(null, obj3);
                return obj3;
            }
            return accessorNode.setValue(this.field.get(null), obj2, variableResolverFactory, obj3);
        } catch (Exception e) {
            throw new RuntimeException("error accessing static variable", e);
        }
    }

    public Field getField() {
        return this.field;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.field.getClass();
    }
}
