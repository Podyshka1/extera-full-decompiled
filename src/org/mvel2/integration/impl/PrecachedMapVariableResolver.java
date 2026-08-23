package org.mvel2.integration.impl;

import java.util.Map;
import org.mvel2.DataConversion;
import org.mvel2.integration.VariableResolver;

/* JADX INFO: loaded from: classes5.dex */
public class PrecachedMapVariableResolver implements VariableResolver {
    private Map.Entry entry;
    private Class<?> knownType;
    private String name;

    @Override // org.mvel2.integration.VariableResolver
    public int getFlags() {
        return 0;
    }

    public PrecachedMapVariableResolver(Map.Entry entry, String str) {
        this.entry = entry;
        this.name = str;
    }

    public PrecachedMapVariableResolver(Map.Entry entry, String str, Class cls) {
        this.name = str;
        this.knownType = cls;
        this.entry = entry;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setStaticType(Class cls) {
        this.knownType = cls;
    }

    @Override // org.mvel2.integration.VariableResolver
    public String getName() {
        return this.name;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Class getType() {
        return this.knownType;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setValue(Object obj) {
        if (this.knownType != null && obj != null && obj.getClass() != this.knownType) {
            if (!DataConversion.canConvert(this.knownType, obj.getClass())) {
                throw new RuntimeException("cannot assign " + obj.getClass().getName() + " to type: " + this.knownType.getName());
            }
            try {
                obj = DataConversion.convert(obj, this.knownType);
            } catch (Exception unused) {
                throw new RuntimeException("cannot convert value of " + obj.getClass().getName() + " to: " + this.knownType.getName());
            }
        }
        this.entry.setValue(obj);
    }

    @Override // org.mvel2.integration.VariableResolver
    public Object getValue() {
        return this.entry.getValue();
    }
}
