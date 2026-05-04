package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.OptimizationFailure;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.PropertyHandler;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class StaticVarAccessorNH implements AccessorNode {
    Field field;
    private AccessorNode nextNode;
    private PropertyHandler nullHandler;

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            Object property = this.field.get(obj);
            if (property == null) {
                property = this.nullHandler.getProperty(this.field.getName(), obj2, variableResolverFactory);
            }
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(property, obj2, variableResolverFactory) : property;
        } catch (Exception e) {
            throw new OptimizationFailure("unable to access static field", e);
        }
    }

    public StaticVarAccessorNH(Field field, PropertyHandler propertyHandler) {
        this.field = field;
        this.nullHandler = propertyHandler;
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

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.field.getClass();
    }
}
