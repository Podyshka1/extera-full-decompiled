package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class DynamicSetterAccessor implements AccessorNode {
    public static final Object[] EMPTY = new Object[0];
    private final Method method;
    private Class targetType;

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return null;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        return null;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        try {
            return this.method.invoke(obj, DataConversion.convert(obj3, this.targetType));
        } catch (Exception e) {
            throw new RuntimeException("error binding property", e);
        }
    }

    public DynamicSetterAccessor(Method method) {
        this.method = method;
        this.targetType = method.getParameterTypes()[0];
    }

    public Method getMethod() {
        return this.method;
    }

    public String toString() {
        return this.method.getDeclaringClass().getName() + "." + this.method.getName();
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.targetType;
    }
}
