package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.PropertyHandler;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class FieldAccessorNH implements AccessorNode {
    private boolean coercionRequired = false;
    private Field field;
    private AccessorNode nextNode;
    private PropertyHandler nullHandler;

    public FieldAccessorNH(Field field, PropertyHandler propertyHandler) {
        this.field = field;
        this.nullHandler = propertyHandler;
    }

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
            throw new RuntimeException("unable to access field", e);
        }
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        boolean z = this.coercionRequired;
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.setValue(obj, obj2, variableResolverFactory, obj3);
            }
            if (z) {
                Field field = this.field;
                Object objConvert = DataConversion.convert(obj, field.getClass());
                field.set(obj, objConvert);
                return objConvert;
            }
            this.field.set(obj, obj3);
            return obj3;
        } catch (IllegalArgumentException e) {
            if (!z) {
                this.coercionRequired = true;
                return setValue(obj, obj2, variableResolverFactory, obj3);
            }
            throw new RuntimeException("unable to bind property", e);
        } catch (Exception e2) {
            throw new RuntimeException("unable to access field", e2);
        }
    }

    public Field getField() {
        return this.field;
    }

    public void setField(Field field) {
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
    public Class getKnownEgressType() {
        return this.field.getClass();
    }
}
