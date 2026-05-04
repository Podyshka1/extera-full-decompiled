package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.DataConversion;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class InvokableAccessor extends BaseAccessor {
    protected boolean coercionNeeded = false;
    protected int length;
    protected Class[] parameterTypes;
    protected ExecutableStatement[] parms;

    protected Object[] executeAndCoerce(Class[] clsArr, Object obj, VariableResolverFactory variableResolverFactory, boolean z) {
        int i;
        Object objNewInstance;
        Object[] objArr = new Object[this.length];
        int i2 = 0;
        while (true) {
            i = this.length;
            if (i2 >= i || (z && i2 >= i - 1)) {
                break;
            }
            objArr[i2] = DataConversion.convert(this.parms[i2].getValue(obj, variableResolverFactory), clsArr[i2]);
            i2++;
        }
        if (z) {
            Class<?> componentType = clsArr[i - 1].getComponentType();
            ExecutableStatement[] executableStatementArr = this.parms;
            if (executableStatementArr == null) {
                objNewInstance = Array.newInstance(componentType, 0);
            } else {
                Object objNewInstance2 = Array.newInstance(componentType, (executableStatementArr.length - this.length) + 1);
                int i3 = this.length - 1;
                while (true) {
                    ExecutableStatement[] executableStatementArr2 = this.parms;
                    if (i3 >= executableStatementArr2.length) {
                        break;
                    }
                    Array.set(objNewInstance2, (i3 - this.length) + 1, DataConversion.convert(executableStatementArr2[i3].getValue(obj, variableResolverFactory), componentType));
                    i3++;
                }
                objNewInstance = objNewInstance2;
            }
            objArr[this.length - 1] = objNewInstance;
        }
        return objArr;
    }

    public Class[] getParameterTypes() {
        return this.parameterTypes;
    }
}
