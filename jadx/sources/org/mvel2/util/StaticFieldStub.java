package org.mvel2.util;

import java.lang.reflect.Field;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class StaticFieldStub implements StaticStub {
    private final Object cachedValue;
    private final Field field;

    public StaticFieldStub(Field field) {
        this.field = field;
        if (!field.isAccessible() || (field.getModifiers() & 8) == 0) {
            throw new RuntimeException("not an accessible static field: " + field.getDeclaringClass().getName() + "." + field.getName());
        }
        try {
            this.cachedValue = field.get(null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("error accessing static field", e);
        }
    }

    @Override // org.mvel2.util.StaticStub
    public Object call(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
        return this.cachedValue;
    }
}
