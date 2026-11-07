package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayAccessorNest implements AccessorNode {
    private Class baseComponentType;
    private ExecutableStatement index;
    private AccessorNode nextNode;
    private boolean requireConversion;

    public ArrayAccessorNest() {
    }

    public ArrayAccessorNest(String str) {
        this.index = (ExecutableStatement) ParseTools.subCompileExpression(str.toCharArray());
    }

    public ArrayAccessorNest(ExecutableStatement executableStatement) {
        this.index = executableStatement;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.getValue(((Object[]) obj)[((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()], obj2, variableResolverFactory);
        }
        return ((Object[]) obj)[((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()];
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(((Object[]) obj)[((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()], obj2, variableResolverFactory, obj3);
        }
        if (this.baseComponentType == null) {
            Class<?> baseComponentType = ParseTools.getBaseComponentType(obj.getClass());
            this.baseComponentType = baseComponentType;
            this.requireConversion = (baseComponentType == obj3.getClass() || this.baseComponentType.isAssignableFrom(obj3.getClass())) ? false : true;
        }
        if (this.requireConversion) {
            Object objConvert = DataConversion.convert(obj3, this.baseComponentType);
            Array.set(obj, ((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue(), objConvert);
            return objConvert;
        }
        Array.set(obj, ((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue(), obj3);
        return obj3;
    }

    public ExecutableStatement getIndex() {
        return this.index;
    }

    public void setIndex(ExecutableStatement executableStatement) {
        this.index = executableStatement;
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
    public Class getKnownEgressType() {
        return this.baseComponentType;
    }

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }
}
