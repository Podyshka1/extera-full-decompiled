package org.mvel2.compiler;

import org.mvel2.ast.ASTNode;
import org.mvel2.ast.Safe;
import org.mvel2.ast.TypeCast;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ExecutableAccessorSafe implements ExecutableStatement, Safe {
    private boolean convertable;
    private Class egress;
    private Class ingress;
    private ASTNode node;

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean intOptimized() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isLiteralOnly() {
        return false;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    public ExecutableAccessorSafe(ASTNode aSTNode) {
        this.node = aSTNode;
    }

    public ExecutableAccessorSafe(ASTNode aSTNode, Class cls) {
        this.node = aSTNode;
        this.egress = cls;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.node.getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        return this.node.getReducedValueAccelerated(obj, obj, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownIngressType(Class cls) {
        this.ingress = cls;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownEgressType(Class cls) {
        this.egress = cls;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Class getKnownIngressType() {
        return this.ingress;
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.egress;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isConvertableIngressEgress() {
        return this.convertable;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void computeTypeConversionRule() {
        Class<?> cls;
        Class cls2 = this.ingress;
        if (cls2 == null || (cls = this.egress) == null) {
            return;
        }
        this.convertable = cls2.isAssignableFrom(cls);
    }

    public ASTNode getNode() {
        return this.node;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isEmptyStatement() {
        return this.node == null;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isExplicitCast() {
        ASTNode aSTNode = this.node;
        return aSTNode != null && (aSTNode instanceof TypeCast);
    }
}
