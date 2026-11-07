package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.PropertyHandler;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;

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
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("unable to access field", e);
            return null;
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
            Field field = this.field;
            if (z) {
                Object objConvert = DataConversion.convert(obj, field.getClass());
                field.set(obj, objConvert);
                return objConvert;
            }
            field.set(obj, obj3);
            return obj3;
        } catch (IllegalArgumentException e) {
            if (!z) {
                this.coercionRequired = true;
                return setValue(obj, obj2, variableResolverFactory, obj3);
            }
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("unable to bind property", e);
            return null;
        } catch (Exception e2) {
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("unable to access field", e2);
            return null;
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
