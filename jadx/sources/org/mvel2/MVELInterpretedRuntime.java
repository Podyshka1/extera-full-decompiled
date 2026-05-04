package org.mvel2;

import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.url._UrlKt;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.Substatement;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.ErrorUtil;
import org.mvel2.util.ExecutionStack;

/* JADX INFO: loaded from: classes5.dex */
public class MVELInterpretedRuntime extends AbstractParser {
    private static final Logger LOG = Logger.getLogger(MVELInterpretedRuntime.class.getName());
    private Object holdOverRegister;

    public Object parse() {
        try {
            this.stk = new ExecutionStack();
            this.dStack = new ExecutionStack();
            this.variableFactory.setTiltFlag(false);
            this.cursor = this.start;
            return parseAndExecuteInterpreted();
        } catch (ArrayIndexOutOfBoundsException e) {
            LOG.log(Level.WARNING, _UrlKt.FRAGMENT_ENCODE_SET, (Throwable) e);
            throw new CompileException("unexpected end of statement", this.expr, this.length);
        } catch (NullPointerException e2) {
            LOG.log(Level.WARNING, _UrlKt.FRAGMENT_ENCODE_SET, (Throwable) e2);
            if (this.cursor >= this.length) {
                throw new CompileException("unexpected end of statement", this.expr, this.length);
            }
            throw e2;
        } catch (CompileException e3) {
            throw ErrorUtil.rewriteIfNeeded(e3, this.expr, this.cursor);
        }
    }

    private Object parseAndExecuteInterpreted() {
        this.lastWasIdentifier = false;
        ASTNode aSTNodeNextToken = null;
        while (true) {
            try {
                aSTNodeNextToken = nextToken();
                if (aSTNodeNextToken != null) {
                    this.holdOverRegister = null;
                    if (this.lastWasIdentifier && this.lastNode.isDiscard()) {
                        this.stk.discard();
                    }
                    if (this.stk.isEmpty()) {
                        if ((aSTNodeNextToken.fields & 4194304) != 0) {
                            ExecutionStack executionStack = this.stk;
                            executionStack.push(aSTNodeNextToken.getReducedValue(executionStack, this.ctx, this.variableFactory));
                            Object objPeek = this.stk.peek();
                            if (objPeek instanceof Integer) {
                                arithmeticFunctionReduction(((Integer) objPeek).intValue());
                            }
                        } else {
                            ExecutionStack executionStack2 = this.stk;
                            Object obj = this.ctx;
                            executionStack2.push(aSTNodeNextToken.getReducedValue(obj, obj, this.variableFactory));
                        }
                        if ((aSTNodeNextToken instanceof Substatement) && (aSTNodeNextToken = nextToken()) != null) {
                            Integer operator = aSTNodeNextToken.getOperator();
                            int iIntValue = operator.intValue();
                            if (AbstractParser.isArithmeticOperator(iIntValue)) {
                                ExecutionStack executionStack3 = this.stk;
                                ASTNode aSTNodeNextToken2 = nextToken();
                                Object obj2 = this.ctx;
                                executionStack3.push(aSTNodeNextToken2.getReducedValue(obj2, obj2, this.variableFactory), operator);
                                if (procBooleanOperator(arithmeticFunctionReduction(iIntValue)) == -1) {
                                    return this.stk.peek();
                                }
                            }
                        }
                    }
                    if (this.variableFactory.tiltFlag()) {
                        return this.stk.pop();
                    }
                    Integer operator2 = aSTNodeNextToken.getOperator();
                    int iIntValue2 = operator2.intValue();
                    int iProcBooleanOperator = procBooleanOperator(iIntValue2);
                    if (iProcBooleanOperator != -2) {
                        if (iProcBooleanOperator == -1) {
                            return this.stk.peek();
                        }
                        if (iProcBooleanOperator == 0) {
                            continue;
                        } else {
                            if (iProcBooleanOperator == 99) {
                                this.variableFactory.setTiltFlag(true);
                                return this.stk.pop();
                            }
                            ExecutionStack executionStack4 = this.stk;
                            ASTNode aSTNodeNextToken3 = nextToken();
                            Object obj3 = this.ctx;
                            executionStack4.push(aSTNodeNextToken3.getReducedValue(obj3, obj3, this.variableFactory), operator2);
                            int iArithmeticFunctionReduction = arithmeticFunctionReduction(iIntValue2);
                            if (iArithmeticFunctionReduction == -1) {
                                return this.stk.peek();
                            }
                            if (iArithmeticFunctionReduction != 0 && procBooleanOperator(iArithmeticFunctionReduction) == -1) {
                                return this.stk.peek();
                            }
                        }
                    } else if (aSTNodeNextToken.isOperator()) {
                        continue;
                    } else {
                        if (!(this.stk.peek() instanceof Class)) {
                            throw new CompileException("unexpected token or unknown identifier:" + aSTNodeNextToken.getName(), this.expr, this.f1568st);
                        }
                        this.variableFactory.createVariable(aSTNodeNextToken.getName(), null, (Class) this.stk.peek());
                    }
                } else {
                    Object obj4 = this.holdOverRegister;
                    return obj4 != null ? obj4 : this.stk.peek();
                }
            } catch (NullPointerException e) {
                if (aSTNodeNextToken != null && aSTNodeNextToken.isOperator()) {
                    CompileException compileException = new CompileException("incomplete statement: " + aSTNodeNextToken.getName() + " (possible use of reserved keyword as identifier: " + aSTNodeNextToken.getName() + ")", this.expr, this.f1568st, e);
                    compileException.setExpr(this.expr);
                    compileException.setLineNumber(this.line);
                    compileException.setCursor(this.cursor);
                    throw compileException;
                }
                throw e;
            } catch (CompileException e2) {
                throw ErrorUtil.rewriteIfNeeded(e2, this.expr, this.start);
            }
        }
    }

    private int procBooleanOperator(int i) {
        if (i == -1) {
            return -2;
        }
        if (i == 37) {
            if (hasMore()) {
                this.holdOverRegister = this.stk.pop();
                this.stk.clear();
            }
            return 0;
        }
        if (i == 99) {
            return 99;
        }
        int i2 = 1;
        if (i == 29) {
            if (!this.stk.popBoolean().booleanValue()) {
                this.stk.clear();
                while (i2 > 0) {
                    ASTNode aSTNodeNextToken = nextToken();
                    if (aSTNodeNextToken == null) {
                        break;
                    }
                    if (aSTNodeNextToken.isOperator(30)) {
                        i2--;
                    }
                    if (aSTNodeNextToken.isOperator(29)) {
                        i2++;
                    }
                }
            }
            return 0;
        }
        if (i != 30) {
            switch (i) {
                case 21:
                    reduceRight();
                    if (!this.stk.peekBoolean().booleanValue()) {
                        if (unwindStatement(i)) {
                            return -1;
                        }
                        this.stk.clear();
                        return 0;
                    }
                    this.stk.discard();
                    return 0;
                case 22:
                    reduceRight();
                    if (this.stk.peekBoolean().booleanValue()) {
                        if (unwindStatement(i)) {
                            return -1;
                        }
                        this.stk.clear();
                        return 0;
                    }
                    this.stk.discard();
                    return 0;
                case 23:
                    if (!BlankLiteral.INSTANCE.equals(this.stk.peek())) {
                        return -1;
                    }
                default:
                    return 1;
            }
        } else {
            captureToEOS();
            return 0;
        }
    }

    private void reduceRight() {
        if (this.dStack.isEmpty()) {
            return;
        }
        this.stk.push(this.dStack.pop(), this.stk.pop(), this.dStack.pop());
        reduce();
    }

    private boolean hasMore() {
        return this.cursor <= this.end;
    }

    private boolean unwindStatement(int i) {
        ASTNode aSTNodeNextToken;
        if (i != 21) {
            do {
                aSTNodeNextToken = nextToken();
                if (aSTNodeNextToken == null) {
                    break;
                }
            } while (!aSTNodeNextToken.isOperator(37));
        } else {
            do {
                aSTNodeNextToken = nextToken();
                if (aSTNodeNextToken == null || aSTNodeNextToken.isOperator(37)) {
                    break;
                }
            } while (!aSTNodeNextToken.isOperator(22));
        }
        return aSTNodeNextToken == null;
    }

    MVELInterpretedRuntime(char[] cArr, Object obj, Map<String, Object> map) {
        this.expr = cArr;
        this.length = cArr.length;
        this.ctx = obj;
        this.variableFactory = new MapVariableResolverFactory(map);
    }

    MVELInterpretedRuntime(char[] cArr, Object obj) {
        this.expr = cArr;
        this.length = cArr.length;
        this.ctx = obj;
        this.variableFactory = new ImmutableDefaultFactory();
    }

    MVELInterpretedRuntime(String str) {
        setExpression(str);
        this.variableFactory = new ImmutableDefaultFactory();
    }

    MVELInterpretedRuntime(char[] cArr) {
        this.expr = cArr;
        int length = cArr.length;
        this.end = length;
        this.length = length;
    }

    public MVELInterpretedRuntime(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory) {
        this.expr = cArr;
        int length = cArr.length;
        this.end = length;
        this.length = length;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    public MVELInterpretedRuntime(char[] cArr, int i, int i2, Object obj, VariableResolverFactory variableResolverFactory) {
        this.expr = cArr;
        this.start = i;
        int i3 = i2 + i;
        this.end = i3;
        this.length = i3 - i;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    public MVELInterpretedRuntime(char[] cArr, int i, int i2, Object obj, VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        int i3 = i2 + i;
        this.end = i3;
        this.length = i3 - i;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    public MVELInterpretedRuntime(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        setExpression(str);
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    public MVELInterpretedRuntime(String str, Object obj, VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        super(parserContext);
        setExpression(str);
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    MVELInterpretedRuntime(String str, VariableResolverFactory variableResolverFactory) {
        setExpression(str);
        this.variableFactory = variableResolverFactory;
        this.pCtx.initializeTables();
    }

    MVELInterpretedRuntime(String str, Object obj) {
        setExpression(str);
        this.ctx = obj;
        this.variableFactory = new ImmutableDefaultFactory();
    }
}
