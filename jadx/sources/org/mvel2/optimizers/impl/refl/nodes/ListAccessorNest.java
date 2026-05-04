package org.mvel2.optimizers.impl.refl.nodes;

import java.util.List;
import org.mvel2.DataConversion;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class ListAccessorNest implements AccessorNode {
    private Class conversionType;
    private ExecutableStatement index;
    private AccessorNode nextNode;

    public ListAccessorNest() {
    }

    public ListAccessorNest(String str, Class cls) {
        this.index = (ExecutableStatement) ParseTools.subCompileExpression(str.toCharArray());
        this.conversionType = cls;
    }

    public ListAccessorNest(ExecutableStatement executableStatement, Class cls) {
        this.index = executableStatement;
        this.conversionType = cls;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.getValue(((List) obj).get(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()), obj2, variableResolverFactory);
        }
        return ((List) obj).get(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue());
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(((List) obj).get(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()), obj2, variableResolverFactory, obj3);
        }
        if (this.conversionType != null) {
            List list = (List) obj;
            int iIntValue = ((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue();
            Object objConvert = DataConversion.convert(obj3, this.conversionType);
            list.set(iIntValue, objConvert);
            return objConvert;
        }
        ((List) obj).set(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue(), obj3);
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

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return Object.class;
    }
}
