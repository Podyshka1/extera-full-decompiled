package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.PropertyTools;

/* JADX INFO: loaded from: classes.dex */
public class FieldAccessor implements AccessorNode {
    private boolean coercionRequired = false;
    private Field field;
    private AccessorNode nextNode;
    private boolean primitive;

    public FieldAccessor() {
    }

    public FieldAccessor(Field field) {
        this.field = field;
        this.primitive = field.getType().isPrimitive();
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
            throw new RuntimeException("unable to access field: " + this.field.getName(), e);
        }
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            try {
                Object obj4 = this.field.get(obj);
                if (obj3 == null && this.primitive) {
                    obj3 = PropertyTools.getPrimitiveInitialValue(this.field.getType());
                }
                return accessorNode.setValue(obj4, obj2, variableResolverFactory, obj3);
            } catch (Exception e) {
                throw new RuntimeException("unable to access field", e);
            }
        }
        boolean z = this.coercionRequired;
        try {
            if (z) {
                Field field = this.field;
                Object objConvert = DataConversion.convert(obj, field.getClass());
                field.set(obj, objConvert);
                return objConvert;
            }
            this.field.set(obj, obj3);
            return obj3;
        } catch (IllegalArgumentException e2) {
            if (!z) {
                this.coercionRequired = true;
                return setValue(obj, obj2, variableResolverFactory, obj3);
            }
            throw new RuntimeException("unable to bind property", e2);
        } catch (Exception e3) {
            throw new RuntimeException("unable to access field", e3);
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
