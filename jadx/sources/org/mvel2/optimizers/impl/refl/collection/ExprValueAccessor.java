package org.mvel2.optimizers.impl.refl.collection;

import org.mvel2.DataConversion;
import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;
import org.mvel2.util.ReflectionUtil;

/* JADX INFO: loaded from: classes5.dex */
public class ExprValueAccessor implements Accessor {
    public ExecutableStatement stmt;

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    public ExprValueAccessor(String str, Class cls, Object obj, VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        this.stmt = (ExecutableStatement) ParseTools.subCompileExpression(str.toCharArray(), parserContext);
        Class subComponentType = ParseTools.getSubComponentType(cls);
        Class knownEgressType = this.stmt.getKnownEgressType();
        if (this.stmt.getKnownEgressType() == null || ReflectionUtil.isAssignableFrom(subComponentType, knownEgressType)) {
            return;
        }
        if ((this.stmt instanceof ExecutableLiteral) && DataConversion.canConvert(knownEgressType, subComponentType)) {
            try {
                this.stmt = new ExecutableLiteral(DataConversion.convert(this.stmt.getValue(obj, variableResolverFactory), subComponentType));
                return;
            } catch (IllegalArgumentException unused) {
            }
        }
        if (parserContext == null || !parserContext.isStrongTyping()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("was expecting type: ");
        sb.append(subComponentType);
        sb.append("; but found type: ");
        sb.append(knownEgressType == null ? "null" : knownEgressType.getName());
        throw new RuntimeException(sb.toString());
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.stmt.getValue(obj2, variableResolverFactory);
    }

    public ExecutableStatement getStmt() {
        return this.stmt;
    }

    public void setStmt(ExecutableStatement executableStatement) {
        this.stmt = executableStatement;
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.stmt.getKnownEgressType();
    }
}
