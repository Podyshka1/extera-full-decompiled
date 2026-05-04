package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.PropertyHandler;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class MethodAccessorNH implements AccessorNode {
    private boolean coercionNeeded = false;
    private int length;
    private Method method;
    private AccessorNode nextNode;
    private PropertyHandler nullHandler;
    private Class[] parameterTypes;
    private ExecutableStatement[] parms;

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Method bestCandidate;
        if (!this.coercionNeeded) {
            try {
                Object objInvoke = this.method.invoke(obj, executeAll(obj2, variableResolverFactory));
                if (objInvoke == null) {
                    this.nullHandler.getProperty(this.method.getName(), obj, variableResolverFactory);
                }
                AccessorNode accessorNode = this.nextNode;
                return accessorNode != null ? accessorNode.getValue(objInvoke, obj2, variableResolverFactory) : objInvoke;
            } catch (IllegalArgumentException unused) {
                if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (bestCandidate = ParseTools.getBestCandidate(this.parameterTypes, this.method.getName(), (Class) obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                    return executeOverrideTarget(bestCandidate, obj, obj2, variableResolverFactory);
                }
                this.coercionNeeded = true;
                return getValue(obj, obj2, variableResolverFactory);
            } catch (Exception e) {
                throw new RuntimeException("cannot invoke method", e);
            }
        }
        try {
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                return accessorNode2.getValue(this.method.invoke(obj, executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory)), obj2, variableResolverFactory);
            }
            return this.method.invoke(obj, executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory));
        } catch (Exception e2) {
            throw new RuntimeException("cannot invoke method", e2);
        }
    }

    private Object executeOverrideTarget(Method method, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            Object objInvoke = method.invoke(obj, executeAll(obj2, variableResolverFactory));
            if (objInvoke == null) {
                objInvoke = this.nullHandler.getProperty(method.getName(), obj, variableResolverFactory);
            }
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(objInvoke, obj2, variableResolverFactory) : objInvoke;
        } catch (Exception e) {
            throw new RuntimeException("unable to invoke method", e);
        }
    }

    private Object[] executeAll(Object obj, VariableResolverFactory variableResolverFactory) {
        int i = this.length;
        if (i == 0) {
            return GetterAccessor.EMPTY;
        }
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < this.length; i2++) {
            objArr[i2] = this.parms[i2].getValue(obj, variableResolverFactory);
        }
        return objArr;
    }

    private Object[] executeAndCoerce(Class[] clsArr, Object obj, VariableResolverFactory variableResolverFactory) {
        Object[] objArr = new Object[this.length];
        for (int i = 0; i < this.length; i++) {
            objArr[i] = DataConversion.convert(this.parms[i].getValue(obj, variableResolverFactory), clsArr[i]);
        }
        return objArr;
    }

    public Method getMethod() {
        return this.method;
    }

    public void setMethod(Method method) {
        this.method = method;
        Class<?>[] parameterTypes = method.getParameterTypes();
        this.parameterTypes = parameterTypes;
        this.length = parameterTypes.length;
    }

    public ExecutableStatement[] getParms() {
        return this.parms;
    }

    public void setParms(ExecutableStatement[] executableStatementArr) {
        this.parms = executableStatementArr;
    }

    public MethodAccessorNH() {
    }

    public MethodAccessorNH(Method method, ExecutableStatement[] executableStatementArr, PropertyHandler propertyHandler) {
        this.method = method;
        Class<?>[] parameterTypes = method.getParameterTypes();
        this.parameterTypes = parameterTypes;
        this.length = parameterTypes.length;
        this.parms = executableStatementArr;
        this.nullHandler = propertyHandler;
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
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextNode.setValue(obj, obj2, variableResolverFactory, obj3);
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.method.getReturnType();
    }
}
