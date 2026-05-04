package org.mvel2.ast;

import java.util.HashMap;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class ForNode extends BlockNode {
    protected ExecutableStatement after;
    protected ExecutableStatement condition;
    protected boolean indexAlloc;
    protected ExecutableStatement initializer;
    protected String item;

    public ForNode(char[] cArr, int i, int i2, int i3, int i4, int i5, ParserContext parserContext) {
        super(parserContext);
        boolean z = false;
        this.indexAlloc = false;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.blockStart = i3;
        this.blockOffset = i4;
        boolean zBuildForEach = buildForEach(cArr, i, i2, i3, i4, i5, parserContext);
        if (parserContext != null && parserContext.isIndexAllocation()) {
            z = true;
        }
        this.indexAlloc = z;
        if ((i5 & 16) != 0 && this.compiledBlock.isEmptyStatement() && !zBuildForEach) {
            throw new RedundantCodeException();
        }
        if (parserContext != null) {
            parserContext.popVariableScope();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.indexAlloc) {
            variableResolverFactory = new MapVariableResolverFactory(new HashMap(1), variableResolverFactory);
        }
        ExecutableStatement executableStatement = this.initializer;
        while (true) {
            executableStatement.getValue(obj, obj2, variableResolverFactory);
            if (!((Boolean) this.condition.getValue(obj, obj2, variableResolverFactory)).booleanValue()) {
                return null;
            }
            Object value = this.compiledBlock.getValue(obj, obj2, variableResolverFactory);
            if (variableResolverFactory.tiltFlag()) {
                return value;
            }
            executableStatement = this.after;
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ExecutableStatement executableStatement = this.initializer;
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(1), variableResolverFactory);
        executableStatement.getValue(obj, obj2, mapVariableResolverFactory);
        while (((Boolean) this.condition.getValue(obj, obj2, mapVariableResolverFactory)).booleanValue()) {
            Object value = this.compiledBlock.getValue(obj, obj2, mapVariableResolverFactory);
            if (mapVariableResolverFactory.tiltFlag()) {
                return value;
            }
            this.after.getValue(obj, obj2, mapVariableResolverFactory);
        }
        return null;
    }

    private boolean buildForEach(char[] cArr, int i, int i2, int i3, int i4, int i5, ParserContext parserContext) {
        ParserContext parserContext2;
        int i6 = i2 + i;
        boolean z = false;
        int iNextCondPart = nextCondPart(cArr, i, i6, false);
        try {
            if (parserContext != null) {
                parserContext2 = parserContext.createSubcontext().createColoringSubcontext();
            } else {
                parserContext2 = new ParserContext();
            }
            this.initializer = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, (iNextCondPart - i) - 1, parserContext2);
            if (parserContext != null) {
                parserContext.pushVariableScope();
            }
        } catch (NegativeArraySizeException unused) {
        }
        try {
            try {
                i = nextCondPart(cArr, iNextCondPart, i6, false);
                ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, iNextCondPart, (i - iNextCondPart) - 1, parserContext2);
                this.condition = executableStatement;
                int i7 = i5 & 16;
                CompilerTools.expectType(parserContext, executableStatement, Boolean.class, i7 != 0);
                this.after = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, nextCondPart(cArr, i, i6, true) - i, parserContext2);
                if (parserContext2 != null && i7 != 0 && parserContext2.isVariablesEscape()) {
                    if (parserContext != parserContext2) {
                        parserContext.addVariables(parserContext2.getVariables());
                    }
                    z = true;
                } else if (parserContext2 != null && parserContext != null) {
                    parserContext.addVariables(parserContext2.getVariables());
                }
                this.compiledBlock = (ExecutableStatement) ParseTools.subCompileExpression(this.expr, i3, i4, parserContext2);
                if (parserContext != null) {
                    parserContext.setInputs(parserContext2.getInputs());
                }
                return z;
            } catch (CompileException e) {
                if (e.getExpr().length == 0) {
                    e.setExpr(this.expr);
                    int i8 = iNextCondPart;
                    while (true) {
                        char[] cArr2 = this.expr;
                        if (i8 >= cArr2.length || !ParseTools.isWhitespace(cArr2[i8])) {
                            break;
                        }
                        i8++;
                    }
                    e.setCursor(i8);
                }
                throw e;
            }
        } catch (NegativeArraySizeException unused2) {
            i = iNextCondPart;
            throw new CompileException("wrong syntax; did you mean to use 'foreach'?", this.expr, i);
        }
    }

    private static int nextCondPart(char[] cArr, int i, int i2, boolean z) {
        while (i < i2) {
            if (cArr[i] == ';') {
                return i + 1;
            }
            i++;
        }
        if (z) {
            return i;
        }
        throw new CompileException("expected ;", cArr, i);
    }
}
