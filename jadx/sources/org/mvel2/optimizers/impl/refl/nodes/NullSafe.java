package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.OptimizerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class NullSafe implements AccessorNode {
    private char[] expr;
    private AccessorNode nextNode;
    private int offset;
    private ParserContext pCtx;
    private int start;

    public NullSafe(char[] cArr, int i, int i2, ParserContext parserContext) {
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.pCtx = parserContext;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object obj3;
        Object obj4;
        VariableResolverFactory variableResolverFactory2;
        if (obj == null) {
            return null;
        }
        if (this.nextNode == null) {
            obj3 = obj;
            obj4 = obj2;
            variableResolverFactory2 = variableResolverFactory;
            final Accessor accessorOptimizeAccessor = OptimizerFactory.getAccessorCompiler(OptimizerFactory.SAFE_REFLECTIVE).optimizeAccessor(this.pCtx, this.expr, this.start, this.offset, obj3, obj4, variableResolverFactory2, true, obj.getClass());
            this.nextNode = new AccessorNode() { // from class: org.mvel2.optimizers.impl.refl.nodes.NullSafe.1
                @Override // org.mvel2.compiler.AccessorNode
                public AccessorNode getNextNode() {
                    return null;
                }

                @Override // org.mvel2.compiler.AccessorNode
                public AccessorNode setNextNode(AccessorNode accessorNode) {
                    return null;
                }

                @Override // org.mvel2.compiler.Accessor
                public Object getValue(Object obj5, Object obj6, VariableResolverFactory variableResolverFactory3) {
                    return accessorOptimizeAccessor.getValue(obj5, obj6, variableResolverFactory3);
                }

                @Override // org.mvel2.compiler.Accessor
                public Object setValue(Object obj5, Object obj6, VariableResolverFactory variableResolverFactory3, Object obj7) {
                    return accessorOptimizeAccessor.setValue(obj5, obj6, variableResolverFactory3, obj7);
                }

                @Override // org.mvel2.compiler.Accessor
                public Class getKnownEgressType() {
                    return accessorOptimizeAccessor.getKnownEgressType();
                }
            };
        } else {
            obj3 = obj;
            obj4 = obj2;
            variableResolverFactory2 = variableResolverFactory;
        }
        return this.nextNode.getValue(obj3, obj4, variableResolverFactory2);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (obj == null) {
            return null;
        }
        return this.nextNode.setValue(obj, obj2, variableResolverFactory, obj3);
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
        return Object.class;
    }
}
