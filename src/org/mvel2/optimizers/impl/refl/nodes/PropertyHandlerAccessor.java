package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.MVEL;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.PropertyHandler;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class PropertyHandlerAccessor extends BaseAccessor {
    private Class conversionType;
    private PropertyHandler propertyHandler;
    private String propertyName;

    public PropertyHandlerAccessor(String str, Class cls, PropertyHandler propertyHandler) {
        this.propertyName = str;
        this.conversionType = cls;
        this.propertyHandler = propertyHandler;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.conversionType.isAssignableFrom(obj.getClass())) {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.getValue(MVEL.getProperty(this.propertyName, obj), obj2, variableResolverFactory);
            }
            return MVEL.getProperty(this.propertyName, obj);
        }
        try {
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                return accessorNode2.getValue(this.propertyHandler.getProperty(this.propertyName, obj, variableResolverFactory), obj2, variableResolverFactory);
            }
            return this.propertyHandler.getProperty(this.propertyName, obj, variableResolverFactory);
        } catch (Exception e) {
            throw new RuntimeException("unable to access field", e);
        }
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(this.propertyHandler.getProperty(this.propertyName, obj, variableResolverFactory), obj, variableResolverFactory, obj3);
        }
        return this.propertyHandler.setProperty(this.propertyName, obj, variableResolverFactory, obj3);
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Object.class;
    }
}
