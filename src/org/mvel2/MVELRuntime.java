package org.mvel2;

import org.mvel2.ast.ASTNode;
import org.mvel2.ast.LineLabel;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.debug.Debugger;
import org.mvel2.debug.DebuggerContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.OptimizerFactory;
import org.mvel2.util.ExecutionStack;
import org.mvel2.util.PropertyTools;

/* JADX INFO: loaded from: classes5.dex */
public class MVELRuntime {
    private static ThreadLocal<DebuggerContext> debuggerContext;

    public static Object execute(boolean z, CompiledExpression compiledExpression, Object obj, VariableResolverFactory variableResolverFactory) {
        ExecutionStack executionStack = new ExecutionStack();
        ASTNode firstNode = compiledExpression.getFirstNode();
        if (firstNode == null) {
            return null;
        }
        do {
            try {
                try {
                    if (firstNode.fields != -1) {
                        if (executionStack.isEmpty()) {
                            executionStack.push(firstNode.getReducedValueAccelerated(obj, obj, variableResolverFactory));
                        }
                        if (variableResolverFactory.tiltFlag()) {
                            return executionStack.pop();
                        }
                        Integer operator = firstNode.getOperator();
                        int iIntValue = operator.intValue();
                        if (iIntValue != -1) {
                            if (iIntValue != 37) {
                                int i = 1;
                                if (iIntValue == 99) {
                                    variableResolverFactory.setTiltFlag(true);
                                    return executionStack.pop();
                                }
                                if (iIntValue == 29) {
                                    if (!executionStack.popBoolean().booleanValue()) {
                                        while (i > 0) {
                                            firstNode = firstNode.nextASTNode;
                                            if (firstNode == null) {
                                                break;
                                            }
                                            if (firstNode.isOperator(30)) {
                                                i--;
                                            } else if (firstNode.isOperator(29)) {
                                                i++;
                                            }
                                        }
                                    }
                                    executionStack.clear();
                                } else {
                                    if (iIntValue == 30) {
                                        return executionStack.pop();
                                    }
                                    executionStack.push(firstNode.nextASTNode.getReducedValueAccelerated(obj, obj, variableResolverFactory), operator);
                                    while (executionStack.isReduceable()) {
                                        try {
                                            if (((Integer) executionStack.peek()).intValue() == 23) {
                                                executionStack.pop();
                                                Object objPop = executionStack.pop();
                                                Object objPop2 = executionStack.pop();
                                                if (PropertyTools.isEmpty(objPop2) && PropertyTools.isEmpty(objPop)) {
                                                    executionStack.push(null);
                                                } else {
                                                    executionStack.clear();
                                                    if (!PropertyTools.isEmpty(objPop2)) {
                                                        objPop = objPop2;
                                                    }
                                                    executionStack.push(objPop);
                                                }
                                            } else {
                                                executionStack.m1117op();
                                            }
                                        } catch (ClassCastException e) {
                                            throw new CompileException("syntax error or incomptable types", new char[0], 0, e);
                                        } catch (CompileException e2) {
                                            throw e2;
                                        } catch (Exception e3) {
                                            throw new CompileException("failed to compileShared sub expression", new char[0], 0, e3);
                                        }
                                    }
                                }
                            } else if (firstNode.nextASTNode != null) {
                                executionStack.clear();
                            }
                        }
                    } else if (z || (z = hasDebuggerContext())) {
                        try {
                            debuggerContext.get().checkBreak((LineLabel) firstNode, variableResolverFactory, compiledExpression);
                        } catch (NullPointerException unused) {
                        }
                    }
                    firstNode = firstNode.nextASTNode;
                } catch (NullPointerException e4) {
                    if (firstNode == null || !firstNode.isOperator() || firstNode.nextASTNode == null) {
                        throw e4;
                    }
                    throw new CompileException("incomplete statement: " + firstNode.getName() + " (possible use of reserved keyword as identifier: " + firstNode.getName() + ")", firstNode.getExpr(), firstNode.getStart());
                }
            } finally {
                OptimizerFactory.clearThreadAccessorOptimizer();
            }
        } while (firstNode != null);
        return executionStack.peek();
    }

    public static void registerBreakpoint(String str, int i) {
        ensureDebuggerContext();
        debuggerContext.get().registerBreakpoint(str, i);
    }

    public static void removeBreakpoint(String str, int i) {
        if (hasDebuggerContext()) {
            debuggerContext.get().removeBreakpoint(str, i);
        }
    }

    public static boolean hasDebuggerContext() {
        ThreadLocal<DebuggerContext> threadLocal = debuggerContext;
        return (threadLocal == null || threadLocal.get() == null) ? false : true;
    }

    private static void ensureDebuggerContext() {
        if (debuggerContext == null) {
            debuggerContext = new ThreadLocal<>();
        }
        if (debuggerContext.get() == null) {
            debuggerContext.set(new DebuggerContext());
        }
    }

    public static void clearAllBreakpoints() {
        if (hasDebuggerContext()) {
            debuggerContext.get().clearAllBreakpoints();
        }
    }

    public static boolean hasBreakpoints() {
        return hasDebuggerContext() && debuggerContext.get().hasBreakpoints();
    }

    public static void setThreadDebugger(Debugger debugger) {
        ensureDebuggerContext();
        debuggerContext.get().setDebugger(debugger);
    }

    public static void resetDebugger() {
        debuggerContext = null;
    }
}
