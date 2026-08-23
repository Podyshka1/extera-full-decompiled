package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.MVELRuntime;
import org.mvel2.ParserConfiguration;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.TypeCast;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.OptimizerFactory;
import org.mvel2.util.ASTLinkedList;

/* JADX INFO: loaded from: classes.dex */
public class CompiledExpression implements Serializable, ExecutableStatement {
    private boolean convertableIngressEgress;
    private final ASTNode firstNode;
    private Class knownEgressType;
    private Class knownIngressType;
    private final boolean literalOnly;
    private boolean optimized = false;
    private final ParserConfiguration parserConfiguration;
    private final String sourceName;

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean intOptimized() {
        return false;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    public CompiledExpression(ASTLinkedList aSTLinkedList, String str, Class cls, ParserConfiguration parserConfiguration, boolean z) {
        this.firstNode = aSTLinkedList.firstNode();
        this.sourceName = str;
        this.knownEgressType = aSTLinkedList.isSingleNode() ? aSTLinkedList.firstNonSymbol().getEgressType() : cls;
        this.literalOnly = z;
        this.parserConfiguration = parserConfiguration;
    }

    public ASTNode getFirstNode() {
        return this.firstNode;
    }

    public boolean isSingleNode() {
        ASTNode aSTNode = this.firstNode;
        return aSTNode != null && aSTNode.nextASTNode == null;
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.knownEgressType;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownEgressType(Class cls) {
        this.knownEgressType = cls;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Class getKnownIngressType() {
        return this.knownIngressType;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownIngressType(Class cls) {
        this.knownIngressType = cls;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isConvertableIngressEgress() {
        return this.convertableIngressEgress;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void computeTypeConversionRule() {
        Class<?> cls;
        Class cls2 = this.knownIngressType;
        if (cls2 == null || (cls = this.knownEgressType) == null) {
            return;
        }
        this.convertableIngressEgress = cls2.isAssignableFrom(cls);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.optimized) {
            setupOptimizers();
            try {
                return getValue(obj, variableResolverFactory);
            } finally {
                OptimizerFactory.clearThreadAccessorOptimizer();
            }
        }
        return getValue(obj, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        if (!this.optimized) {
            setupOptimizers();
            try {
                return getValue(obj, variableResolverFactory);
            } finally {
                OptimizerFactory.clearThreadAccessorOptimizer();
            }
        }
        return getDirectValue(obj, variableResolverFactory);
    }

    public Object getDirectValue(Object obj, VariableResolverFactory variableResolverFactory) {
        return MVELRuntime.execute(false, this, obj, this.parserConfiguration.getVariableFactory(variableResolverFactory));
    }

    private void setupOptimizers() {
        this.optimized = true;
    }

    public ParserConfiguration getParserConfiguration() {
        return this.parserConfiguration;
    }

    public boolean isImportInjectionRequired() {
        return this.parserConfiguration.hasImports();
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isLiteralOnly() {
        return this.literalOnly;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isEmptyStatement() {
        return this.firstNode == null;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isExplicitCast() {
        ASTNode aSTNode = this.firstNode;
        return aSTNode != null && (aSTNode instanceof TypeCast);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (ASTNode aSTNode = this.firstNode; aSTNode != null; aSTNode = aSTNode.nextASTNode) {
            sb.append(aSTNode);
            sb.append(";\n");
        }
        return sb.toString();
    }
}
