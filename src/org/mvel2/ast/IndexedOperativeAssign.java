package org.mvel2.ast;

import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.math.MathProcessor;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class IndexedOperativeAssign extends ASTNode {
    private final int operation;
    private final int register;
    private ExecutableStatement statement;

    public IndexedOperativeAssign(char[] cArr, int i, int i2, int i3, int i4, int i5, ParserContext parserContext) {
        super(parserContext);
        this.operation = i3;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.register = i4;
        if ((i5 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object objDoOperations = MathProcessor.doOperations(indexedVariableResolver.getValue(), this.operation, this.statement.getValue(obj, obj2, variableResolverFactory));
        indexedVariableResolver.setValue(objDoOperations);
        return objDoOperations;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object objDoOperations = MathProcessor.doOperations(indexedVariableResolver.getValue(), this.operation, MVEL.eval(this.expr, this.start, this.offset, obj, variableResolverFactory));
        indexedVariableResolver.setValue(objDoOperations);
        return objDoOperations;
    }
}
