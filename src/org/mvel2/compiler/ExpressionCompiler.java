package org.mvel2.compiler;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.ErrorDetail;
import org.mvel2.MVEL;
import org.mvel2.Operator;
import org.mvel2.ParserContext;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.Assignment;
import org.mvel2.ast.DeepOperativeAssignmentNode;
import org.mvel2.ast.LiteralNode;
import org.mvel2.ast.Negation$$ExternalSyntheticBUOutline0;
import org.mvel2.ast.NewObjectNode;
import org.mvel2.ast.OperatorNode;
import org.mvel2.ast.Sign$$ExternalSyntheticBUOutline0;
import org.mvel2.ast.Substatement;
import org.mvel2.ast.Union;
import org.mvel2.util.ASTLinkedList;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ErrorUtil;
import org.mvel2.util.ExecutionStack;
import org.mvel2.util.ParseTools;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class ExpressionCompiler extends AbstractParser {
    private Class returnType;
    private boolean secondPassOptimization;
    private boolean verifyOnly;
    private boolean verifying;

    private static boolean isBooleanOperator(int i) {
        return i == 21 || i == 22 || i == 29 || i == 30;
    }

    public CompiledExpression compile() {
        try {
            this.debugSymbols = this.pCtx.isDebugSymbols();
            CompiledExpression compiledExpression_compile = _compile();
            if (!this.pCtx.isFatalError()) {
                return compiledExpression_compile;
            }
            StringAppender stringAppender = new StringAppender();
            Iterator<ErrorDetail> it = this.pCtx.getErrorList().iterator();
            while (it.hasNext()) {
                ErrorDetail errorDetailRewriteIfNeeded = ErrorUtil.rewriteIfNeeded(it.next(), this.expr, this.cursor);
                if (errorDetailRewriteIfNeeded.getExpr() != this.expr) {
                    it.remove();
                } else {
                    stringAppender.append("\n - ").append("(").append(Integer.valueOf(errorDetailRewriteIfNeeded.getLineNumber())).append(",").append(Integer.valueOf(errorDetailRewriteIfNeeded.getColumn())).append(")").append(" ").append(errorDetailRewriteIfNeeded.getMessage());
                }
            }
            throw new CompileException("Failed to compileShared: " + this.pCtx.getErrorList().size() + " compilation error(s): " + stringAppender.toString(), this.pCtx.getErrorList(), this.expr, this.cursor, this.pCtx);
        } catch (Throwable th) {
            if (this.pCtx.isFatalError()) {
                StringAppender stringAppender2 = new StringAppender();
                Iterator<ErrorDetail> it2 = this.pCtx.getErrorList().iterator();
                while (it2.hasNext()) {
                    ErrorDetail errorDetailRewriteIfNeeded2 = ErrorUtil.rewriteIfNeeded(it2.next(), this.expr, this.cursor);
                    if (errorDetailRewriteIfNeeded2.getExpr() != this.expr) {
                        it2.remove();
                    } else {
                        stringAppender2.append("\n - ").append("(").append(Integer.valueOf(errorDetailRewriteIfNeeded2.getLineNumber())).append(",").append(Integer.valueOf(errorDetailRewriteIfNeeded2.getColumn())).append(")").append(" ").append(errorDetailRewriteIfNeeded2.getMessage());
                    }
                }
                throw new CompileException("Failed to compileShared: " + this.pCtx.getErrorList().size() + " compilation error(s): " + stringAppender2.toString(), this.pCtx.getErrorList(), this.expr, this.cursor, this.pCtx);
            }
            throw th;
        }
    }

    public CompiledExpression _compile() {
        this.cursor = this.start;
        ASTLinkedList aSTLinkedList = new ASTLinkedList();
        this.stk = new ExecutionStack();
        this.dStack = new ExecutionStack();
        this.compileMode = true;
        try {
            try {
                if (this.verifying) {
                    this.pCtx.initializeTables();
                }
                this.fields |= 16;
                int iIntValue = -1;
                while (true) {
                    ASTNode aSTNodeNextToken = nextToken();
                    if (aSTNodeNextToken != null) {
                        if (aSTNodeNextToken.fields == -1) {
                            aSTLinkedList.addTokenNode(aSTNodeNextToken);
                        } else {
                            this.returnType = aSTNodeNextToken.getEgressType();
                            if (aSTNodeNextToken instanceof Substatement) {
                                String str = new String(this.expr, aSTNodeNextToken.getStart(), aSTNodeNextToken.getOffset());
                                Map<String, CompiledExpression> compiledExpressionCache = this.pCtx.getCompiledExpressionCache();
                                Map<String, Class> returnTypeCache = this.pCtx.getReturnTypeCache();
                                CompiledExpression compiledExpression = compiledExpressionCache.get(str);
                                Class cls = returnTypeCache.get(str);
                                if (compiledExpression == null) {
                                    ExpressionCompiler expressionCompiler = new ExpressionCompiler(this.expr, aSTNodeNextToken.getStart(), aSTNodeNextToken.getOffset(), this.pCtx);
                                    CompiledExpression compiledExpression_compile = expressionCompiler._compile();
                                    Class returnType = expressionCompiler.getReturnType();
                                    compiledExpressionCache.put(str, compiledExpression_compile);
                                    returnTypeCache.put(str, returnType);
                                    cls = returnType;
                                    compiledExpression = compiledExpression_compile;
                                }
                                aSTNodeNextToken.setAccessor(compiledExpression);
                                this.returnType = cls;
                            }
                            if (!this.verifyOnly && aSTNodeNextToken.isLiteral()) {
                                if (this.literalOnly == -1) {
                                    this.literalOnly = 1;
                                }
                                ASTNode aSTNodeNextTokenSkipSymbols = nextTokenSkipSymbols();
                                if (aSTNodeNextTokenSkipSymbols != null && aSTNodeNextTokenSkipSymbols.isOperator() && !aSTNodeNextTokenSkipSymbols.isOperator(29) && !aSTNodeNextTokenSkipSymbols.isOperator(30)) {
                                    ASTNode aSTNodeNextTokenSkipSymbols2 = nextTokenSkipSymbols();
                                    if (aSTNodeNextTokenSkipSymbols2 != null && aSTNodeNextTokenSkipSymbols2.isLiteral() && !isBooleanOperator(aSTNodeNextTokenSkipSymbols.getOperator().intValue()) && aSTNodeNextTokenSkipSymbols.getOperator().intValue() < 34) {
                                        if (iIntValue != -1) {
                                            int[] iArr = Operator.PTABLE;
                                            if (iIntValue >= iArr.length || iArr[iIntValue] >= iArr[aSTNodeNextTokenSkipSymbols.getOperator().intValue()]) {
                                            }
                                        }
                                        ExecutionStack executionStack = this.stk;
                                        Object literalValue = aSTNodeNextToken.getLiteralValue();
                                        Object literalValue2 = aSTNodeNextTokenSkipSymbols2.getLiteralValue();
                                        Integer operator = aSTNodeNextTokenSkipSymbols.getOperator();
                                        int iIntValue2 = operator.intValue();
                                        executionStack.push(literalValue, literalValue2, operator);
                                        if (AbstractParser.isArithmeticOperator(iIntValue2)) {
                                            if (!compileReduce(iIntValue2, aSTLinkedList)) {
                                            }
                                        } else {
                                            reduce();
                                        }
                                        boolean z = true;
                                        while (true) {
                                            ASTNode aSTNodeNextTokenSkipSymbols3 = nextTokenSkipSymbols();
                                            if (aSTNodeNextTokenSkipSymbols3 == null) {
                                                break;
                                            }
                                            if (isBooleanOperator(aSTNodeNextTokenSkipSymbols3.getOperator().intValue())) {
                                                aSTLinkedList.addTokenNode(new LiteralNode(this.stk.pop(), this.pCtx), verify(this.pCtx, aSTNodeNextTokenSkipSymbols3));
                                                break;
                                            }
                                            ASTNode aSTNodeNextTokenSkipSymbols4 = nextTokenSkipSymbols();
                                            if (aSTNodeNextTokenSkipSymbols4 != null) {
                                                boolean zIsLiteral = aSTNodeNextTokenSkipSymbols4.isLiteral();
                                                ExecutionStack executionStack2 = this.stk;
                                                if (zIsLiteral) {
                                                    Object literalValue3 = aSTNodeNextTokenSkipSymbols4.getLiteralValue();
                                                    Integer operator2 = aSTNodeNextTokenSkipSymbols3.getOperator();
                                                    int iIntValue3 = operator2.intValue();
                                                    executionStack2.push(literalValue3, operator2);
                                                    if (AbstractParser.isArithmeticOperator(iIntValue3)) {
                                                        if (!compileReduce(iIntValue3, aSTLinkedList)) {
                                                            break;
                                                        }
                                                    } else {
                                                        reduce();
                                                    }
                                                    this.literalOnly = 0;
                                                    z = false;
                                                } else {
                                                    if (!executionStack2.isEmpty()) {
                                                        aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx));
                                                    }
                                                    aSTLinkedList.addTokenNode(new OperatorNode(aSTNodeNextTokenSkipSymbols3.getOperator(), this.expr, this.st, this.pCtx), verify(this.pCtx, aSTNodeNextTokenSkipSymbols4));
                                                }
                                            } else if (z) {
                                                aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx));
                                            } else {
                                                aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx), aSTNodeNextTokenSkipSymbols3);
                                                if (aSTNodeNextTokenSkipSymbols4 != null) {
                                                    aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextTokenSkipSymbols4));
                                                }
                                            }
                                        }
                                        if (!this.stk.isEmpty()) {
                                            aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx));
                                        }
                                    }
                                    aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextToken), verify(this.pCtx, aSTNodeNextTokenSkipSymbols));
                                    if (aSTNodeNextTokenSkipSymbols2 != null) {
                                        aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextTokenSkipSymbols2));
                                    }
                                } else {
                                    if (aSTNodeNextTokenSkipSymbols != null && !aSTNodeNextTokenSkipSymbols.isOperator() && !(aSTNodeNextToken.getLiteralValue() instanceof Class)) {
                                        throw new CompileException("unexpected token: " + aSTNodeNextTokenSkipSymbols.getName(), this.expr, aSTNodeNextTokenSkipSymbols.getStart());
                                    }
                                    this.literalOnly = 0;
                                    aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextToken));
                                    if (aSTNodeNextTokenSkipSymbols != null) {
                                        aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextTokenSkipSymbols));
                                    }
                                }
                            } else {
                                if (aSTNodeNextToken.isOperator()) {
                                    iIntValue = aSTNodeNextToken.getOperator().intValue();
                                } else {
                                    this.literalOnly = 0;
                                }
                                aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextToken));
                            }
                        }
                    } else {
                        aSTLinkedList.finish();
                        if (this.verifying && !this.verifyOnly) {
                            this.pCtx.processTables();
                        }
                        if (!this.stk.isEmpty()) {
                            throw new CompileException("COMPILE ERROR: non-empty stack after compileShared.", this.expr, this.cursor);
                        }
                        if (!this.verifyOnly) {
                            try {
                                return new CompiledExpression(CompilerTools.finalizePayload(aSTLinkedList, this.secondPassOptimization, this.pCtx), this.pCtx.getSourceFile(), this.returnType, this.pCtx.getParserConfiguration(), this.literalOnly == 1);
                            } catch (RuntimeException e) {
                                throw new CompileException(e.getMessage(), this.expr, this.st, e);
                            }
                        }
                        try {
                            this.returnType = CompilerTools.getReturnType(aSTLinkedList, this.pCtx.isStrongTyping());
                            return null;
                        } catch (RuntimeException e2) {
                            throw new CompileException(e2.getMessage(), this.expr, this.st, e2);
                        }
                    }
                }
            } catch (Throwable th) {
                if (th instanceof RuntimeException) {
                    throw th;
                }
                Negation$$ExternalSyntheticBUOutline0.m1010m(th.getMessage(), this.expr, this.st, th);
                return null;
            }
        } catch (NullPointerException e3) {
            Negation$$ExternalSyntheticBUOutline0.m1010m("not a statement, or badly formed structure", this.expr, this.st, e3);
            return null;
        } catch (CompileException e4) {
            throw ErrorUtil.rewriteIfNeeded(e4, this.expr, this.st);
        }
    }

    private Object getStackValueResult() {
        int i = this.fields & 524288;
        Object objPop = this.stk.pop();
        return i == 0 ? objPop : CompilerTools.signNumber(objPop);
    }

    private boolean compileReduce(int i, ASTLinkedList aSTLinkedList) {
        int iArithmeticFunctionReduction = arithmeticFunctionReduction(i);
        if (iArithmeticFunctionReduction == -3) {
            ASTNode aSTNode = (ASTNode) this.stk.pop();
            Integer num = (Integer) this.stk.pop();
            aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx));
            aSTLinkedList.addTokenNode(new OperatorNode(num, this.expr, this.st, this.pCtx), verify(this.pCtx, aSTNode));
            return false;
        }
        if (iArithmeticFunctionReduction != -2) {
            if (iArithmeticFunctionReduction != -1) {
                return true;
            }
            this.stk.xswap_op();
            aSTLinkedList.addTokenNode(new LiteralNode(this.stk.pop(), this.pCtx));
            aSTLinkedList.addTokenNode((OperatorNode) this.splitAccumulator.pop(), verify(this.pCtx, (ASTNode) this.splitAccumulator.pop()));
            return false;
        }
        LiteralNode literalNode = new LiteralNode(this.stk.pop(), this.pCtx);
        aSTLinkedList.addTokenNode(new LiteralNode(this.stk.pop(), this.pCtx), new OperatorNode((Integer) this.stk.pop(), this.expr, this.st, this.pCtx));
        aSTLinkedList.addTokenNode(literalNode, (OperatorNode) this.splitAccumulator.pop());
        aSTLinkedList.addTokenNode(verify(this.pCtx, (ASTNode) this.splitAccumulator.pop()));
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x019f, code lost:
    
        if (org.mvel2.util.ParseTools.unboxPrimitive(r3.getKnownEgressType()).equals(r6.returnType) != false) goto L105;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0215  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ASTNode verify(ParserContext parserContext, ASTNode aSTNode) {
        if (aSTNode.isOperator() && (aSTNode.getOperator().equals(21) || aSTNode.getOperator().equals(22))) {
            this.secondPassOptimization = true;
        }
        if (!aSTNode.isDiscard() && !aSTNode.isOperator()) {
            if (aSTNode.isLiteral()) {
                if ((this.fields & 16) != 0 && aSTNode.getClass() == ASTNode.class) {
                    return new LiteralNode(aSTNode.getLiteralValue(), parserContext);
                }
            } else if (this.verifying) {
                if (aSTNode.isIdentifier()) {
                    PropertyVerifier propertyVerifier = new PropertyVerifier(this.expr, aSTNode.getStart(), aSTNode.getOffset(), parserContext);
                    if (aSTNode instanceof Union) {
                        propertyVerifier.setCtx(((Union) aSTNode).getLeftEgressType());
                        Class clsAnalyze = propertyVerifier.analyze();
                        this.returnType = clsAnalyze;
                        aSTNode.setEgressType(clsAnalyze);
                    } else {
                        Class clsAnalyze2 = propertyVerifier.analyze();
                        this.returnType = clsAnalyze2;
                        aSTNode.setEgressType(clsAnalyze2);
                        if (propertyVerifier.isFqcn()) {
                            aSTNode.setAsFQCNReference();
                        }
                        if (propertyVerifier.isClassLiteral()) {
                            return new LiteralNode(this.returnType, parserContext);
                        }
                        if (propertyVerifier.isInput()) {
                            parserContext.addInput(aSTNode.getAbsoluteName(), propertyVerifier.isDeepProperty() ? Object.class : this.returnType);
                        }
                        if (!propertyVerifier.isMethodCall() && !this.returnType.isEnum() && !parserContext.isOptimizerNotified() && parserContext.isStrongTyping() && !parserContext.isVariableVisible(aSTNode.getAbsoluteName()) && !aSTNode.isFQCN()) {
                            Sign$$ExternalSyntheticBUOutline0.m1012m("no such identifier: " + aSTNode.getAbsoluteName(), this.expr, aSTNode.getStart());
                            return null;
                        }
                    }
                } else if (aSTNode.isAssignment()) {
                    Assignment assignment = (Assignment) aSTNode;
                    if (assignment.getAssignmentVar() != null) {
                        PropertyVerifier propertyVerifier2 = new PropertyVerifier(assignment.getAssignmentVar(), parserContext);
                        Class clsAnalyze3 = propertyVerifier2.analyze();
                        this.returnType = clsAnalyze3;
                        aSTNode.setEgressType(clsAnalyze3);
                        if (!assignment.isNewDeclaration() && propertyVerifier2.isResolvedExternally()) {
                            parserContext.addInput(aSTNode.getAbsoluteName(), this.returnType);
                        }
                        ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(this.expr, aSTNode.getStart(), aSTNode.getOffset(), parserContext);
                        if (parserContext.isStrictTypeEnforcement() && !this.returnType.isAssignableFrom(executableStatement.getKnownEgressType()) && executableStatement.isLiteralOnly()) {
                            if (DataConversion.canConvert(executableStatement.getKnownEgressType(), this.returnType)) {
                                try {
                                    if (!(assignment instanceof DeepOperativeAssignmentNode)) {
                                        assignment.setValueStatement(new ExecutableLiteral(DataConversion.convert(executableStatement.getValue(null, null), this.returnType)));
                                        return aSTNode;
                                    }
                                } catch (Exception unused) {
                                }
                            } else {
                                if (this.returnType.isPrimitive()) {
                                }
                                Sign$$ExternalSyntheticBUOutline0.m1012m("cannot assign type " + executableStatement.getKnownEgressType().getName() + " to " + this.returnType.getName(), this.expr, this.st);
                                return null;
                            }
                        }
                    }
                } else if (aSTNode instanceof NewObjectNode) {
                    List<char[]> methodOrConstructor = ParseTools.parseMethodOrConstructor(aSTNode.getNameAsArray());
                    if (methodOrConstructor != null) {
                        Iterator<char[]> it = methodOrConstructor.iterator();
                        while (it.hasNext()) {
                            MVEL.analyze(it.next(), parserContext);
                        }
                    }
                }
                this.returnType = aSTNode.getEgressType();
                if (!aSTNode.isLiteral()) {
                    if (parserContext.isStrongTyping()) {
                    }
                    aSTNode.storePctx();
                    aSTNode.storeInLiteralRegister(parserContext);
                }
            } else if (!aSTNode.isLiteral() && aSTNode.getClass() == ASTNode.class && (aSTNode.getFields() & 67108864) == 0) {
                if (parserContext.isStrongTyping()) {
                    aSTNode.strongTyping();
                }
                aSTNode.storePctx();
                aSTNode.storeInLiteralRegister(parserContext);
            }
        }
        return aSTNode;
    }

    public ExpressionCompiler(String str) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(str);
    }

    public ExpressionCompiler(String str, boolean z) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(str);
        this.verifying = z;
    }

    public ExpressionCompiler(char[] cArr) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(cArr);
    }

    public ExpressionCompiler(String str, ParserContext parserContext) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(str);
        this.pCtx = parserContext;
    }

    public ExpressionCompiler(char[] cArr, int i, int i2) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        this.expr = cArr;
        this.start = i;
        int i3 = i2 + i;
        this.end = i3;
        int iTrimLeft = trimLeft(i3);
        this.end = iTrimLeft;
        this.length = iTrimLeft - i;
    }

    public ExpressionCompiler(String str, int i, int i2, ParserContext parserContext) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        this.expr = str.toCharArray();
        this.start = i;
        int i3 = i2 + i;
        this.end = i3;
        int iTrimLeft = trimLeft(i3);
        this.end = iTrimLeft;
        this.length = iTrimLeft - i;
        this.pCtx = parserContext;
    }

    public ExpressionCompiler(char[] cArr, int i, int i2, ParserContext parserContext) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        this.expr = cArr;
        this.start = i;
        int i3 = i2 + i;
        this.end = i3;
        int iTrimLeft = trimLeft(i3);
        this.end = iTrimLeft;
        this.length = iTrimLeft - i;
        this.pCtx = parserContext;
    }

    public ExpressionCompiler(char[] cArr, ParserContext parserContext) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(cArr);
        this.pCtx = parserContext;
    }

    public boolean isVerifying() {
        return this.verifying;
    }

    public void setVerifying(boolean z) {
        this.verifying = z;
    }

    public boolean isVerifyOnly() {
        return this.verifyOnly;
    }

    public void setVerifyOnly(boolean z) {
        this.verifyOnly = z;
    }

    public Class getReturnType() {
        return this.returnType;
    }

    public void setReturnType(Class cls) {
        this.returnType = cls;
    }

    public ParserContext getParserContextState() {
        return this.pCtx;
    }

    public boolean isLiteralOnly() {
        return this.literalOnly == 1;
    }
}
