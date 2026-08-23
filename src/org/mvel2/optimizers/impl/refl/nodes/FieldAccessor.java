package org.mvel2.optimizers.impl.refl.nodes;

import androidx.room.util.KClassUtil$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Field;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.mvel2.util.PropertyTools;

/* JADX INFO: loaded from: classes5.dex */
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
            KClassUtil$$ExternalSyntheticBUOutline0.m164m("unable to access field: ", this.field.getName(), e);
            return null;
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
                Make$Map$$ExternalSyntheticBUOutline0.m877m("unable to access field", e);
                return null;
            }
        }
        boolean z = this.coercionRequired;
        Field field = this.field;
        try {
            if (z) {
                Object objConvert = DataConversion.convert(obj, field.getClass());
                field.set(obj, objConvert);
                return objConvert;
            }
            field.set(obj, obj3);
            return obj3;
        } catch (IllegalArgumentException e2) {
            if (!z) {
                this.coercionRequired = true;
                return setValue(obj, obj2, variableResolverFactory, obj3);
            }
            Make$Map$$ExternalSyntheticBUOutline0.m877m("unable to bind property", e2);
            return null;
        } catch (Exception e3) {
            Make$Map$$ExternalSyntheticBUOutline0.m877m("unable to access field", e3);
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
