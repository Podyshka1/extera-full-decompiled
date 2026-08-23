package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes.dex */
public class MethodAccessor extends InvokableAccessor {
    private Method method;

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Method bestCandidate;
        if (!this.coercionNeeded) {
            try {
                AccessorNode accessorNode = this.nextNode;
                if (accessorNode != null) {
                    Method method = this.method;
                    return accessorNode.getValue(method.invoke(obj, executeAll(obj2, variableResolverFactory, method)), obj2, variableResolverFactory);
                }
                Method method2 = this.method;
                return method2.invoke(obj, executeAll(obj2, variableResolverFactory, method2));
            } catch (IllegalArgumentException unused) {
                if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (bestCandidate = ParseTools.getBestCandidate(this.parameterTypes, this.method.getName(), (Class) obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                    return executeOverrideTarget(ParseTools.getWidenedTarget(bestCandidate), obj, obj2, variableResolverFactory);
                }
                this.coercionNeeded = true;
                return getValue(obj, obj2, variableResolverFactory);
            } catch (Exception e) {
                throw new RuntimeException("cannot invoke method: " + this.method.getName(), e);
            }
        }
        try {
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                Method method3 = this.method;
                return accessorNode2.getValue(method3.invoke(obj, executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, method3.isVarArgs())), obj2, variableResolverFactory);
            }
            Method method4 = this.method;
            return method4.invoke(obj, executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, method4.isVarArgs()));
        } catch (IllegalArgumentException e2) {
            Method widenedTarget = ParseTools.getWidenedTarget(ParseTools.getBestCandidate(executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, false), this.method.getName(), (Class) obj.getClass(), obj.getClass().getMethods(), false));
            if (widenedTarget != null) {
                return executeOverrideTarget(widenedTarget, obj, obj2, variableResolverFactory);
            }
            throw e2;
        } catch (Exception e3) {
            throw new RuntimeException("cannot invoke method: " + this.method.getName(), e3);
        }
    }

    private Object executeOverrideTarget(Method method, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        boolean z = this.coercionNeeded;
        try {
            if (!z) {
                try {
                    AccessorNode accessorNode = this.nextNode;
                    if (accessorNode != null) {
                        return accessorNode.getValue(method.invoke(obj, executeAll(obj2, variableResolverFactory, method)), obj2, variableResolverFactory);
                    }
                    return method.invoke(obj, executeAll(obj2, variableResolverFactory, method));
                } catch (IllegalArgumentException e) {
                    if (z) {
                        throw e;
                    }
                    this.coercionNeeded = true;
                    return executeOverrideTarget(method, obj, obj2, variableResolverFactory);
                }
            }
            try {
                AccessorNode accessorNode2 = this.nextNode;
                if (accessorNode2 != null) {
                    return accessorNode2.getValue(method.invoke(obj, executeAndCoerce(method.getParameterTypes(), obj2, variableResolverFactory, method.isVarArgs())), obj2, variableResolverFactory);
                }
                return method.invoke(obj, executeAndCoerce(method.getParameterTypes(), obj2, variableResolverFactory, method.isVarArgs()));
            } catch (IllegalAccessException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("unable to invoke method (expected target: ");
                sb.append(this.method.getDeclaringClass().getName());
                sb.append("::");
                sb.append(this.method.getName());
                sb.append("; actual target: ");
                sb.append(obj.getClass().getName());
                sb.append("::");
                sb.append(this.method.getName());
                sb.append("; coercionNeeded=");
                sb.append(this.coercionNeeded ? "yes" : "no");
                sb.append(")");
                throw new RuntimeException(sb.toString());
            } catch (Exception unused2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unable to invoke method (expected target: ");
                sb2.append(this.method.getDeclaringClass().getName());
                sb2.append("::");
                sb2.append(this.method.getName());
                sb2.append("; actual target: ");
                sb2.append(obj.getClass().getName());
                sb2.append("::");
                sb2.append(this.method.getName());
                sb2.append("; coercionNeeded=");
                sb2.append(this.coercionNeeded ? "yes" : "no");
                sb2.append(")");
                throw new RuntimeException(sb2.toString());
            }
        } catch (Exception e2) {
            throw new RuntimeException("unable to invoke method", e2);
        }
    }

    private Object[] executeAll(Object obj, VariableResolverFactory variableResolverFactory, Method method) {
        int i = this.length;
        if (i == 0) {
            return GetterAccessor.EMPTY;
        }
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < this.length - (method.isVarArgs() ? 1 : 0); i2++) {
            objArr[i2] = this.parms[i2].getValue(obj, variableResolverFactory);
        }
        if (method.isVarArgs()) {
            ExecutableStatement[] executableStatementArr = this.parms;
            if (executableStatementArr == null) {
                objArr[this.length - 1] = new Object[0];
                return objArr;
            }
            int length = executableStatementArr.length;
            int i3 = this.length;
            if (length == i3) {
                Object value = executableStatementArr[i3 - 1].getValue(obj, variableResolverFactory);
                int i4 = this.length - 1;
                Object obj2 = value;
                if (value != null) {
                    boolean zIsArray = value.getClass().isArray();
                    obj2 = value;
                    if (!zIsArray) {
                        obj2 = new Object[]{value};
                    }
                }
                objArr[i4] = obj2;
                return objArr;
            }
            int length2 = (executableStatementArr.length - i3) + 1;
            Object[] objArr2 = new Object[length2];
            for (int i5 = 0; i5 < length2; i5++) {
                objArr2[i5] = this.parms[(this.length - 1) + i5].getValue(obj, variableResolverFactory);
            }
            objArr[this.length - 1] = objArr2;
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

    public MethodAccessor() {
    }

    public MethodAccessor(Method method, ExecutableStatement[] executableStatementArr) {
        setMethod(method);
        this.parms = executableStatementArr;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        Method bestCandidate;
        try {
            AccessorNode accessorNode = this.nextNode;
            Method method = this.method;
            return accessorNode.setValue(method.invoke(obj, executeAll(obj2, variableResolverFactory, method)), obj2, variableResolverFactory, obj3);
        } catch (IllegalArgumentException unused) {
            if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (bestCandidate = ParseTools.getBestCandidate(this.parameterTypes, this.method.getName(), (Class) obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                return this.nextNode.setValue(executeOverrideTarget(bestCandidate, obj, obj2, variableResolverFactory), obj2, variableResolverFactory, obj3);
            }
            this.coercionNeeded = true;
            return setValue(obj, obj2, variableResolverFactory, obj3);
        } catch (Exception e) {
            throw new RuntimeException("cannot invoke method", e);
        }
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.method.getReturnType();
    }
}
