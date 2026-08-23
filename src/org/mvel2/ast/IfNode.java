package org.mvel2.ast;

import java.util.HashMap;
import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class IfNode extends BlockNode implements NestedStatement {
    protected ExecutableStatement condition;
    protected ExecutableStatement elseBlock;
    protected IfNode elseIf;
    protected boolean idxAlloc;
    protected ExecutableStatement nestedStatement;

    public IfNode(char[] cArr, int i, int i2, int i3, int i4, int i5, ParserContext parserContext) {
        super(parserContext);
        boolean z = false;
        this.idxAlloc = false;
        this.expr = cArr;
        if (cArr == null || i2 == 0) {
            throw new CompileException("statement expected", cArr, i);
        }
        this.start = i;
        this.offset = i2;
        this.blockStart = i3;
        this.blockOffset = i4;
        if (parserContext != null && parserContext.isIndexAllocation()) {
            z = true;
        }
        this.idxAlloc = z;
        if ((i5 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            this.condition = executableStatement;
            CompilerTools.expectType(parserContext, (Accessor) executableStatement, Boolean.class, true);
            if (parserContext != null) {
                parserContext.pushVariableScope();
            }
            this.nestedStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i3, i4, parserContext);
            if (parserContext != null) {
                parserContext.popVariableScope();
            }
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (((Boolean) this.condition.getValue(obj, obj2, variableResolverFactory)).booleanValue()) {
            ExecutableStatement executableStatement = this.nestedStatement;
            if (!this.idxAlloc) {
                variableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
            }
            return executableStatement.getValue(obj, obj2, variableResolverFactory);
        }
        IfNode ifNode = this.elseIf;
        if (ifNode != null) {
            if (!this.idxAlloc) {
                variableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
            }
            return ifNode.getReducedValueAccelerated(obj, obj2, variableResolverFactory);
        }
        ExecutableStatement executableStatement2 = this.elseBlock;
        if (executableStatement2 == null) {
            return null;
        }
        if (!this.idxAlloc) {
            variableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
        }
        return executableStatement2.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (((Boolean) MVEL.eval(this.expr, this.start, this.offset, obj, variableResolverFactory)).booleanValue()) {
            return MVEL.eval(this.expr, this.blockStart, this.blockOffset, obj, new MapVariableResolverFactory(new HashMap(0), variableResolverFactory));
        }
        IfNode ifNode = this.elseIf;
        if (ifNode != null) {
            return ifNode.getReducedValue(obj, obj2, new MapVariableResolverFactory(new HashMap(0), variableResolverFactory));
        }
        ExecutableStatement executableStatement = this.elseBlock;
        if (executableStatement != null) {
            return executableStatement.getValue(obj, obj2, new MapVariableResolverFactory(new HashMap(0), variableResolverFactory));
        }
        return null;
    }

    @Override // org.mvel2.ast.NestedStatement
    public ExecutableStatement getNestedStatement() {
        return this.nestedStatement;
    }

    public IfNode setElseIf(IfNode ifNode) {
        this.elseIf = ifNode;
        return ifNode;
    }

    public ExecutableStatement getElseBlock() {
        return this.elseBlock;
    }

    public IfNode setElseBlock(char[] cArr, int i, int i2, ParserContext parserContext) {
        this.elseBlock = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
        return this;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return new String(this.expr, this.start, this.offset);
    }
}
