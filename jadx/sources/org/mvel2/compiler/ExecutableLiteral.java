package org.mvel2.compiler;

import org.mvel2.ast.Safe;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ExecutableLiteral implements ExecutableStatement, Safe {
    private boolean intOptimized;
    private int integer32;
    private Object literal;

    @Override // org.mvel2.compiler.ExecutableStatement
    public void computeTypeConversionRule() {
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Class getKnownIngressType() {
        return null;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isConvertableIngressEgress() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isEmptyStatement() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isExplicitCast() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isLiteralOnly() {
        return true;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownEgressType(Class cls) {
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownIngressType(Class cls) {
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    public ExecutableLiteral(Object obj) {
        this.literal = obj;
        if (obj instanceof Integer) {
            this.integer32 = ((Integer) obj).intValue();
        }
    }

    public ExecutableLiteral(int i) {
        this.integer32 = i;
        this.literal = Integer.valueOf(i);
        this.intOptimized = true;
    }

    public int getInteger32() {
        return this.integer32;
    }

    public void setInteger32(int i) {
        this.integer32 = i;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        return this.literal;
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        Object obj = this.literal;
        return obj == null ? Object.class : obj.getClass();
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.literal;
    }

    public Object getLiteral() {
        return this.literal;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean intOptimized() {
        return this.intOptimized;
    }
}
