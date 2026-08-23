package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class DynamicFieldAccessor implements AccessorNode {
    private Field field;
    private AccessorNode nextNode;
    private Class targetType;

    public DynamicFieldAccessor() {
    }

    public DynamicFieldAccessor(Field field) {
        setField(field);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.getValue(this.field.get(obj), obj2, variableResolverFactory);
            }
            return this.field.get(obj);
        } catch (Exception e) {
            throw new RuntimeException("unable to access field", e);
        }
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.setValue(this.field.get(obj), obj2, variableResolverFactory, obj3);
            }
            this.field.set(obj, DataConversion.convert(obj3, this.targetType));
            return obj3;
        } catch (Exception e) {
            throw new RuntimeException("unable to access field", e);
        }
    }

    public Field getField() {
        return this.field;
    }

    public void setField(Field field) {
        this.field = field;
        this.targetType = field.getType();
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
        return this.targetType;
    }
}
