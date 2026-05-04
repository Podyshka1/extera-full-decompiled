package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;
import org.mvel2.util.ReflectionUtil;

/* JADX INFO: loaded from: classes.dex */
public class GetterAccessor implements AccessorNode {
    public static final Object[] EMPTY = new Object[0];
    private final Method method;
    private AccessorNode nextNode;

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Method bestCandidate;
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.getValue(this.method.invoke(obj, EMPTY), obj2, variableResolverFactory);
            }
            return this.method.invoke(obj, EMPTY);
        } catch (IllegalArgumentException unused) {
            if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (bestCandidate = ParseTools.getBestCandidate(EMPTY, this.method.getName(), (Class) obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                return executeOverrideTarget(bestCandidate, obj, obj2, variableResolverFactory);
            }
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                return accessorNode2.getValue(MVEL.getProperty(ReflectionUtil.getPropertyFromAccessor(this.method.getName()), obj), obj2, variableResolverFactory);
            }
            return MVEL.getProperty(ReflectionUtil.getPropertyFromAccessor(this.method.getName()), obj);
        } catch (NullPointerException e) {
            if (obj != null) {
                throw new RuntimeException("cannot invoke getter: " + this.method.getName() + " (see trace)", e);
            }
            throw new RuntimeException("unable to invoke method: " + this.method.getDeclaringClass().getName() + "." + this.method.getName() + ": target of method is null", e);
        } catch (Exception e2) {
            StringBuilder sb = new StringBuilder();
            sb.append("cannot invoke getter: ");
            sb.append(this.method.getName());
            sb.append(" [declr.class: ");
            sb.append(this.method.getDeclaringClass().getName());
            sb.append("; act.class: ");
            sb.append(obj != null ? obj.getClass().getName() : "null");
            sb.append("] (see trace)");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    public GetterAccessor(Method method) {
        this.method = method;
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
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.setValue(this.method.invoke(obj, EMPTY), obj2, variableResolverFactory, obj3);
            }
            throw new RuntimeException("bad payload");
        } catch (IllegalArgumentException unused) {
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                return accessorNode2.setValue(MVEL.getProperty(ReflectionUtil.getPropertyFromAccessor(this.method.getName()), obj), obj2, variableResolverFactory, obj3);
            }
            return MVEL.getProperty(ReflectionUtil.getPropertyFromAccessor(this.method.getName()), obj);
        } catch (CompileException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException("error " + this.method.getName() + ": " + e2.getClass().getName() + ":" + e2.getMessage(), e2);
        }
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.method.getReturnType();
    }

    private Object executeOverrideTarget(Method method, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.getValue(method.invoke(obj, EMPTY), obj2, variableResolverFactory);
            }
            return method.invoke(obj, EMPTY);
        } catch (Exception e) {
            throw new RuntimeException("unable to invoke method", e);
        }
    }
}
