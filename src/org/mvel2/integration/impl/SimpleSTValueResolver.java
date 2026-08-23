package org.mvel2.integration.impl;

import org.mvel2.DataConversion;
import org.mvel2.integration.VariableResolver;

/* JADX INFO: loaded from: classes.dex */
public class SimpleSTValueResolver implements VariableResolver {
    private Class type;
    private boolean updated;
    private Object value;

    @Override // org.mvel2.integration.VariableResolver
    public String getName() {
        return null;
    }

    public SimpleSTValueResolver(Object obj, Class cls) {
        this.updated = false;
        this.value = handleTypeCoercion(cls, obj);
        this.type = cls;
    }

    public SimpleSTValueResolver(Object obj, Class cls, boolean z) {
        this.updated = false;
        this.value = handleTypeCoercion(cls, obj);
        this.type = cls;
        this.updated = z;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Class getType() {
        return this.type;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setStaticType(Class cls) {
        this.type = cls;
    }

    @Override // org.mvel2.integration.VariableResolver
    public int getFlags() {
        return this.updated ? -1 : 0;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Object getValue() {
        return this.value;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setValue(Object obj) {
        this.updated = true;
        this.value = handleTypeCoercion(this.type, obj);
    }

    public static Object handleTypeCoercion(Class cls, Object obj) {
        if (cls == null || obj == null || obj.getClass() == cls) {
            return obj;
        }
        if (!DataConversion.canConvert(cls, obj.getClass())) {
            throw new RuntimeException("cannot assign " + obj.getClass().getName() + " to type: " + cls.getName());
        }
        try {
            return DataConversion.convert(obj, cls);
        } catch (Exception unused) {
            throw new RuntimeException("cannot convert value of " + obj.getClass().getName() + " to: " + cls.getName());
        }
    }
}
