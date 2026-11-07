package org.mvel2.ast;

import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.math.MathProcessor;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class OperativeAssign extends ASTNode {
    private int knownInType;
    private final int operation;
    private ExecutableStatement statement;
    private String varName;

    public OperativeAssign(String str, char[] cArr, int i, int i2, int i3, int i4, ParserContext parserContext) {
        super(parserContext);
        this.knownInType = -1;
        this.varName = str;
        this.operation = i3;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        if ((i4 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
            if (parserContext.isStrongTyping()) {
                this.knownInType = ParseTools.__resolveType(this.egressType);
            }
            if (parserContext.hasVarOrInput(this.varName)) {
                return;
            }
            parserContext.addInput(this.varName, this.egressType);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver variableResolver = variableResolverFactory.getVariableResolver(this.varName);
        Object objDoOperations = MathProcessor.doOperations(variableResolver.getValue(), this.operation, this.knownInType, this.statement.getValue(obj, obj2, variableResolverFactory));
        variableResolver.setValue(objDoOperations);
        return objDoOperations;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver variableResolver = variableResolverFactory.getVariableResolver(this.varName);
        Object objDoOperations = MathProcessor.doOperations(variableResolver.getValue(), this.operation, MVEL.eval(this.expr, this.start, this.offset, obj, variableResolverFactory));
        variableResolver.setValue(objDoOperations);
        return objDoOperations;
    }
}
