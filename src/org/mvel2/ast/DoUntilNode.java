package org.mvel2.ast;

import java.util.HashMap;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class DoUntilNode extends BlockNode {
    protected ExecutableStatement condition;
    protected String item;

    public DoUntilNode(char[] cArr, int i, int i2, int i3, int i4, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
        this.condition = executableStatement;
        CompilerTools.expectType(parserContext, executableStatement, Boolean.class, (this.fields & 16) != 0);
        if (parserContext != null) {
            parserContext.pushVariableScope();
        }
        this.compiledBlock = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i3, i4, parserContext);
        if (parserContext != null) {
            parserContext.popVariableScope();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
        do {
            this.compiledBlock.getValue(obj, obj2, mapVariableResolverFactory);
        } while (!((Boolean) this.condition.getValue(obj, obj2, mapVariableResolverFactory)).booleanValue());
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
        do {
            this.compiledBlock.getValue(obj, obj2, mapVariableResolverFactory);
        } while (!((Boolean) this.condition.getValue(obj, obj2, mapVariableResolverFactory)).booleanValue());
        return null;
    }
}
