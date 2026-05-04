package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.PropertyHandler;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class GetterAccessorNH implements AccessorNode {
    public static final Object[] EMPTY = new Object[0];
    private final Method method;
    private AccessorNode nextNode;
    private PropertyHandler nullHandler;

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        GetterAccessorNH getterAccessorNH;
        Object obj3;
        Object obj4;
        VariableResolverFactory variableResolverFactory2;
        Method bestCandidate;
        try {
            getterAccessorNH = this;
            obj3 = obj;
            obj4 = obj2;
            variableResolverFactory2 = variableResolverFactory;
        } catch (IllegalArgumentException unused) {
            getterAccessorNH = this;
            obj3 = obj;
            obj4 = obj2;
            variableResolverFactory2 = variableResolverFactory;
        } catch (Exception e) {
            e = e;
            getterAccessorNH = this;
            obj3 = obj;
        }
        try {
            return getterAccessorNH.nullHandle(this.method.getName(), this.method.invoke(obj, EMPTY), obj3, obj4, variableResolverFactory2);
        } catch (IllegalArgumentException unused2) {
            if (obj3 != null && getterAccessorNH.method.getDeclaringClass() != obj3.getClass() && (bestCandidate = ParseTools.getBestCandidate(EMPTY, getterAccessorNH.method.getName(), (Class) obj3.getClass(), obj3.getClass().getMethods(), true)) != null) {
                return executeOverrideTarget(bestCandidate, obj3, obj4, variableResolverFactory2);
            }
            return getterAccessorNH.nullHandle(getterAccessorNH.method.getName(), MVEL.getProperty(getterAccessorNH.method.getName() + "()", obj3), obj3, obj4, variableResolverFactory2);
        } catch (Exception e2) {
            e = e2;
            Exception exc = e;
            StringBuilder sb = new StringBuilder();
            sb.append("cannot invoke getter: ");
            sb.append(getterAccessorNH.method.getName());
            sb.append(" [declr.class: ");
            sb.append(getterAccessorNH.method.getDeclaringClass().getName());
            sb.append("; act.class: ");
            sb.append(obj3 != null ? obj3.getClass().getName() : "null");
            sb.append("]");
            throw new RuntimeException(sb.toString(), exc);
        }
    }

    public GetterAccessorNH(Method method, PropertyHandler propertyHandler) {
        this.method = method;
        this.nullHandler = propertyHandler;
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
            Object objInvoke = this.method.invoke(obj, EMPTY);
            if (objInvoke == null) {
                objInvoke = this.nullHandler.getProperty(this.method.getName(), obj, variableResolverFactory);
            }
            return this.nextNode.setValue(objInvoke, obj2, variableResolverFactory, obj3);
        } catch (IllegalArgumentException unused) {
            Object property = MVEL.getProperty(this.method.getName() + "()", obj);
            if (property == null) {
                property = this.nullHandler.getProperty(this.method.getName(), obj, variableResolverFactory);
            }
            return this.nextNode.setValue(property, obj2, variableResolverFactory, obj3);
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
            return nullHandle(method.getName(), method.invoke(obj, EMPTY), obj, obj2, variableResolverFactory);
        } catch (Exception e) {
            throw new RuntimeException("unable to invoke method", e);
        }
    }

    private Object nullHandle(String str, Object obj, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory) {
        if (obj != null) {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(obj, obj3, variableResolverFactory) : obj;
        }
        AccessorNode accessorNode2 = this.nextNode;
        if (accessorNode2 != null) {
            return accessorNode2.getValue(this.nullHandler.getProperty(str, obj2, variableResolverFactory), obj3, variableResolverFactory);
        }
        return this.nullHandler.getProperty(str, obj2, variableResolverFactory);
    }
}
