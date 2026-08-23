package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;
import org.mvel2.util.PropertyTools;

/* JADX INFO: loaded from: classes5.dex */
public class SetterAccessor implements AccessorNode {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final Object[] EMPTY = new Object[0];
    private boolean coercionRequired = false;
    private final Method method;
    private AccessorNode nextNode;
    private boolean primitive;
    private Class<?> targetType;

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        Method bestCandidate;
        boolean z = this.coercionRequired;
        try {
            if (z) {
                return this.method.invoke(obj, DataConversion.convert(obj3, this.targetType));
            }
            return this.method.invoke(obj, (obj3 == null && this.primitive) ? PropertyTools.getPrimitiveInitialValue(this.targetType) : obj3);
        } catch (IllegalArgumentException e) {
            if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (bestCandidate = ParseTools.getBestCandidate(EMPTY, this.method.getName(), (Class) obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                return executeOverrideTarget(bestCandidate, obj, obj3);
            }
            if (!z) {
                this.coercionRequired = true;
                return setValue(obj, obj2, variableResolverFactory, obj3);
            }
            throw new RuntimeException("unable to bind property", e);
        } catch (Exception e2) {
            throw new RuntimeException("error calling method: " + this.method.getDeclaringClass().getName() + "." + this.method.getName(), e2);
        }
    }

    public SetterAccessor(Method method) {
        this.method = method;
        Class<?> cls = method.getParameterTypes()[0];
        this.targetType = cls;
        this.primitive = cls.isPrimitive();
    }

    public Method getMethod() {
        return this.method;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    public String toString() {
        return this.method.getDeclaringClass().getName() + "." + this.method.getName();
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.method.getReturnType();
    }

    private Object executeOverrideTarget(Method method, Object obj, Object obj2) {
        try {
            return method.invoke(obj, DataConversion.convert(obj2, this.targetType));
        } catch (Exception e) {
            throw new RuntimeException("unable to invoke method", e);
        }
    }
}
