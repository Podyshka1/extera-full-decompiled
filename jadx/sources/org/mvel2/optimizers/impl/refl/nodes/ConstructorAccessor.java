package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Constructor;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ConstructorAccessor extends InvokableAccessor {
    private Constructor constructor;

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            if (!this.coercionNeeded) {
                try {
                    AccessorNode accessorNode = this.nextNode;
                    if (accessorNode != null) {
                        return accessorNode.getValue(this.constructor.newInstance(executeAll(obj2, variableResolverFactory)), obj2, variableResolverFactory);
                    }
                    return this.constructor.newInstance(executeAll(obj2, variableResolverFactory));
                } catch (IllegalArgumentException unused) {
                    this.coercionNeeded = true;
                    return getValue(obj, obj2, variableResolverFactory);
                }
            }
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                Constructor constructor = this.constructor;
                return accessorNode2.getValue(constructor.newInstance(executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, constructor.isVarArgs())), obj2, variableResolverFactory);
            }
            Constructor constructor2 = this.constructor;
            return constructor2.newInstance(executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, constructor2.isVarArgs()));
        } catch (Exception e) {
            throw new RuntimeException("cannot construct object", e);
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

    public ConstructorAccessor(Constructor constructor, ExecutableStatement[] executableStatementArr) {
        this.constructor = constructor;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        this.parameterTypes = parameterTypes;
        this.length = parameterTypes.length;
        this.parms = executableStatementArr;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.constructor.getClass();
    }

    public Constructor getConstructor() {
        return this.constructor;
    }

    public ExecutableStatement[] getParameters() {
        return this.parms;
    }
}
