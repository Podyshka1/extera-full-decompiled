package org.mvel2.util;

import java.util.LinkedHashMap;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.Operator;
import org.mvel2.ParserContext;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.And;
import org.mvel2.ast.BinaryOperation;
import org.mvel2.ast.BooleanNode;
import org.mvel2.ast.C2680Or;
import org.mvel2.ast.Contains;
import org.mvel2.ast.Convertable;
import org.mvel2.ast.DeclTypedVarNode;
import org.mvel2.ast.Function;
import org.mvel2.ast.Instance;
import org.mvel2.ast.IntAdd;
import org.mvel2.ast.IntDiv;
import org.mvel2.ast.IntMult;
import org.mvel2.ast.IntOptimized;
import org.mvel2.ast.IntSub;
import org.mvel2.ast.LiteralNode;
import org.mvel2.ast.RegExMatchNode;
import org.mvel2.ast.Soundslike;
import org.mvel2.ast.Strsim;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.compiler.ExecutableAccessor;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;

/* JADX INFO: loaded from: classes.dex */
public class CompilerTools {
    private static boolean reducacbleOperator(int i) {
        return i == 0 || i == 1;
    }

    public static ASTLinkedList finalizePayload(ASTLinkedList aSTLinkedList, boolean z, ParserContext parserContext) {
        BooleanNode c2680Or;
        ParserContext parserContext2;
        BinaryOperation binaryOperation;
        int iIntValue;
        ParserContext parserContext3 = parserContext;
        ASTLinkedList aSTLinkedList2 = new ASTLinkedList();
        while (aSTLinkedList.hasMoreNodes()) {
            ASTNode aSTNodeNextNode = aSTLinkedList.nextNode();
            if (aSTNodeNextNode.getFields() == -1) {
                aSTLinkedList2.addTokenNode(aSTNodeNextNode);
            } else if (aSTLinkedList.hasMoreNodes()) {
                ASTNode aSTNodeNextNode2 = aSTLinkedList.nextNode();
                if (aSTNodeNextNode2.getFields() == -1) {
                    aSTLinkedList2.addTokenNode(aSTNodeNextNode, aSTNodeNextNode2);
                } else if (aSTNodeNextNode2.isOperator() && aSTNodeNextNode2.getOperator().intValue() < 21) {
                    int iIntValue2 = aSTNodeNextNode2.getOperator().intValue();
                    if (iIntValue2 == -1) {
                        throw new CompileException("illegal use of operator: " + aSTNodeNextNode2.getName(), aSTNodeNextNode2.getExpr(), aSTNodeNextNode.getStart());
                    }
                    ASTNode aSTNodeNextNode3 = aSTLinkedList.nextNode();
                    if (aSTNodeNextNode.getEgressType() == Integer.class && aSTNodeNextNode3.getEgressType() == Integer.class) {
                        binaryOperation = boOptimize(iIntValue2, aSTNodeNextNode, aSTNodeNextNode3, parserContext3);
                    } else {
                        boolean zIsOperator = aSTNodeNextNode2.isOperator(1);
                        boolean z2 = aSTNodeNextNode.isLiteral() && isReductionOpportunity(aSTNodeNextNode2, aSTNodeNextNode3);
                        boolean z3 = false;
                        boolean z4 = zIsOperator;
                        ASTNode literalNode = aSTNodeNextNode3;
                        BinaryOperation binaryOperation2 = null;
                        while (z2) {
                            ASTNode aSTNodeNextNode4 = aSTLinkedList.nextNode();
                            ASTNode aSTNodeNextNode5 = aSTLinkedList.nextNode();
                            if (aSTNodeNextNode5 == null) {
                                break;
                            }
                            Object reducedValueAccelerated = new BinaryOperation(aSTNodeNextNode4.getOperator().intValue(), z4 ? new LiteralNode(signNumber(literalNode.getLiteralValue()), parserContext3) : literalNode, aSTNodeNextNode5, parserContext3).getReducedValueAccelerated(null, null, null);
                            if (!aSTLinkedList.hasMoreNodes() && BlankLiteral.INSTANCE.equals(reducedValueAccelerated)) {
                                aSTLinkedList2.addTokenNode(aSTNodeNextNode);
                            } else {
                                z2 = aSTLinkedList.hasMoreNodes() && reducacbleOperator(aSTLinkedList.peekNode().getOperator().intValue()) && aSTLinkedList.peekNext().isLiteral();
                                if (z4) {
                                    z3 = true;
                                }
                                if (!z2) {
                                    int iIntValue3 = aSTNodeNextNode2.getOperator().intValue();
                                    if (z3) {
                                        reducedValueAccelerated = signNumber(reducedValueAccelerated);
                                    }
                                    binaryOperation2 = new BinaryOperation(iIntValue3, aSTNodeNextNode, new LiteralNode(reducedValueAccelerated, parserContext3), parserContext3);
                                } else {
                                    literalNode = new LiteralNode(reducedValueAccelerated, parserContext3);
                                }
                                z4 = false;
                            }
                        }
                        binaryOperation = binaryOperation2 == null ? new BinaryOperation(iIntValue2, aSTNodeNextNode, literalNode, parserContext3) : binaryOperation2;
                    }
                    BinaryOperation binaryOperation3 = binaryOperation;
                    ASTNode aSTNodeNextNode6 = null;
                    while (aSTLinkedList.hasMoreNodes()) {
                        aSTNodeNextNode6 = aSTLinkedList.nextNode();
                        if (!aSTNodeNextNode6.isOperator() || aSTNodeNextNode6.getFields() == -1 || (iIntValue = aSTNodeNextNode6.getOperator().intValue()) == -1 || iIntValue >= 21) {
                            break;
                        }
                        int[] iArr = Operator.PTABLE;
                        if (iArr[iIntValue] > iArr[iIntValue2]) {
                            BinaryOperation binaryOperationBoOptimize = boOptimize(iIntValue, binaryOperation3.getRightMost(), aSTLinkedList.nextNode(), parserContext3);
                            if (isIntOptimizationviolation(binaryOperation3, binaryOperationBoOptimize)) {
                                binaryOperation3 = new BinaryOperation(binaryOperation3.getOperation(), binaryOperation3.getLeft(), binaryOperationBoOptimize, parserContext3);
                            } else {
                                binaryOperation3.setRightMost(binaryOperationBoOptimize);
                            }
                        } else if (binaryOperation3.getOperation() != iIntValue && iArr[iIntValue2] == iArr[iIntValue]) {
                            if (iArr[binaryOperation3.getOperation()] == iArr[iIntValue]) {
                                binaryOperation3 = boOptimize(iIntValue, binaryOperation3, aSTLinkedList.nextNode(), parserContext3);
                            } else {
                                ASTNode aSTNodeNextNode7 = aSTLinkedList.nextNode();
                                if (isIntOptimizationviolation(binaryOperation3, aSTNodeNextNode7)) {
                                    binaryOperation3 = new BinaryOperation(binaryOperation3.getOperation(), binaryOperation3.getLeft(), binaryOperation3.getRight(), parserContext3);
                                }
                                binaryOperation3.setRight(new BinaryOperation(iIntValue, binaryOperation3.getRight(), aSTNodeNextNode7, parserContext3));
                            }
                        } else if (iArr[binaryOperation3.getOperation()] >= iArr[iIntValue]) {
                            binaryOperation3 = new BinaryOperation(iIntValue, binaryOperation3, aSTLinkedList.nextNode(), parserContext3);
                        } else {
                            ASTNode aSTNodeNextNode8 = aSTLinkedList.nextNode();
                            if (isIntOptimizationviolation(binaryOperation3, aSTNodeNextNode8)) {
                                binaryOperation3 = new BinaryOperation(binaryOperation3.getOperation(), binaryOperation3.getLeft(), binaryOperation3.getRight(), parserContext3);
                            }
                            binaryOperation3.setRight(new BinaryOperation(iIntValue, binaryOperation3.getRight(), aSTNodeNextNode8, parserContext3));
                        }
                        aSTNodeNextNode2 = aSTNodeNextNode6;
                        iIntValue2 = iIntValue;
                    }
                    ASTNode aSTNode = aSTNodeNextNode6;
                    if (aSTNode != null && aSTNode != aSTNodeNextNode2) {
                        optimizeOperator(aSTNode.getOperator().intValue(), binaryOperation3, aSTNode, aSTLinkedList, aSTLinkedList2, parserContext3);
                    } else {
                        aSTLinkedList2.addTokenNode(binaryOperation3);
                    }
                    parserContext3 = parserContext;
                } else if (aSTNodeNextNode2.isOperator()) {
                    parserContext3 = parserContext;
                    optimizeOperator(aSTNodeNextNode2.getOperator().intValue(), aSTNodeNextNode, aSTNodeNextNode2, aSTLinkedList, aSTLinkedList2, parserContext3);
                } else {
                    ASTLinkedList aSTLinkedList3 = aSTLinkedList2;
                    if (!aSTNodeNextNode2.isAssignment() && !aSTNodeNextNode2.isOperator() && (aSTNodeNextNode.getLiteralValue() instanceof Class)) {
                        parserContext2 = parserContext;
                        aSTLinkedList3.addTokenNode(new DeclTypedVarNode(aSTNodeNextNode2.getName(), aSTNodeNextNode2.getExpr(), aSTNodeNextNode2.getStart(), aSTNodeNextNode.getOffset(), (Class) aSTNodeNextNode.getLiteralValue(), 0, parserContext2));
                    } else {
                        parserContext2 = parserContext;
                        if (aSTNodeNextNode2.isAssignment() && (aSTNodeNextNode.getLiteralValue() instanceof Class)) {
                            aSTNodeNextNode.discard();
                            aSTLinkedList3.addTokenNode(aSTNodeNextNode2);
                        } else if (aSTLinkedList.hasMoreNodes() && (aSTNodeNextNode2.getLiteralValue() instanceof Class) && aSTLinkedList.peekNode().isAssignment()) {
                            aSTNodeNextNode2.discard();
                            aSTLinkedList3.addTokenNode(aSTNodeNextNode, aSTLinkedList.nextNode());
                        } else {
                            aSTLinkedList.back();
                            aSTLinkedList3.addTokenNode(aSTNodeNextNode);
                        }
                    }
                    parserContext3 = parserContext2;
                    aSTLinkedList2 = aSTLinkedList3;
                }
            } else {
                aSTLinkedList2.addTokenNode(aSTNodeNextNode);
                parserContext3 = parserContext3;
            }
        }
        ASTLinkedList aSTLinkedList4 = aSTLinkedList2;
        ParserContext parserContext4 = parserContext3;
        if (!z) {
            return aSTLinkedList4;
        }
        aSTLinkedList4.reset();
        ASTLinkedList aSTLinkedList5 = new ASTLinkedList();
        while (aSTLinkedList4.hasMoreNodes()) {
            ASTNode aSTNodeNextNode9 = aSTLinkedList4.nextNode();
            if (aSTNodeNextNode9.getFields() == -1) {
                aSTLinkedList5.addTokenNode(aSTNodeNextNode9);
            } else if (aSTLinkedList4.hasMoreNodes()) {
                ASTNode aSTNodeNextNode10 = aSTLinkedList4.nextNode();
                if (aSTNodeNextNode10.getFields() == -1) {
                    aSTLinkedList5.addTokenNode(aSTNodeNextNode9, aSTNodeNextNode10);
                } else {
                    if (aSTNodeNextNode10.isOperator() && (aSTNodeNextNode10.getOperator().intValue() == 21 || aSTNodeNextNode10.getOperator().intValue() == 22)) {
                        if (aSTNodeNextNode10.getOperator().intValue() == 21) {
                            c2680Or = new And(aSTNodeNextNode9, aSTLinkedList4.nextNode(), parserContext4.isStrongTyping(), parserContext4);
                        } else {
                            c2680Or = new C2680Or(aSTNodeNextNode9, aSTLinkedList4.nextNode(), parserContext4.isStrongTyping(), parserContext4);
                        }
                        ASTNode aSTNodeNextNode11 = null;
                        while (aSTLinkedList4.hasMoreNodes()) {
                            aSTNodeNextNode11 = aSTLinkedList4.nextNode();
                            if (!aSTNodeNextNode11.isOperator()) {
                                break;
                            }
                            if (!aSTNodeNextNode11.isOperator(21) && !aSTNodeNextNode11.isOperator(22)) {
                                break;
                            }
                            if (aSTNodeNextNode11.getOperator().intValue() == 21) {
                                c2680Or.setRightMost(new And(c2680Or.getRightMost(), aSTLinkedList4.nextNode(), parserContext4.isStrongTyping(), parserContext4));
                            } else {
                                c2680Or = new C2680Or(c2680Or, aSTLinkedList4.nextNode(), parserContext4.isStrongTyping(), parserContext4);
                            }
                            aSTNodeNextNode10 = aSTNodeNextNode11;
                        }
                        aSTLinkedList5.addTokenNode(c2680Or);
                        if (aSTNodeNextNode11 != null && aSTNodeNextNode11 != aSTNodeNextNode10) {
                            aSTLinkedList5.addTokenNode(aSTNodeNextNode11);
                        }
                    }
                    aSTLinkedList5.addTokenNode(aSTNodeNextNode9, aSTNodeNextNode10);
                }
            } else {
                aSTLinkedList5.addTokenNode(aSTNodeNextNode9);
            }
        }
        return aSTLinkedList5;
    }

    private static BinaryOperation boOptimize(int i, ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        if (aSTNode.getEgressType() != Integer.class || aSTNode2.getEgressType() != Integer.class) {
            return new BinaryOperation(i, aSTNode, aSTNode2, parserContext);
        }
        if (i == 0) {
            return new IntAdd(aSTNode, aSTNode2, parserContext);
        }
        if (i == 1) {
            return new IntSub(aSTNode, aSTNode2, parserContext);
        }
        if (i == 2) {
            return new IntMult(aSTNode, aSTNode2, parserContext);
        }
        if (i == 3) {
            return new IntDiv(aSTNode, aSTNode2, parserContext);
        }
        return new BinaryOperation(i, aSTNode, aSTNode2, parserContext);
    }

    private static boolean isReductionOpportunity(ASTNode aSTNode, ASTNode aSTNode2) {
        ASTNode aSTNode3;
        ASTNode aSTNode4;
        if (aSTNode2 == null || !aSTNode2.isLiteral() || (aSTNode3 = aSTNode2.nextASTNode) == null || !reducacbleOperator(aSTNode3.getOperator().intValue())) {
            return false;
        }
        int[] iArr = Operator.PTABLE;
        return iArr[aSTNode.getOperator().intValue()] <= iArr[aSTNode3.getOperator().intValue()] && (aSTNode4 = aSTNode3.nextASTNode) != null && aSTNode4.isLiteral() && (aSTNode4.getLiteralValue() instanceof Number);
    }

    private static void optimizeOperator(int i, ASTNode aSTNode, ASTNode aSTNode2, ASTLinkedList aSTLinkedList, ASTLinkedList aSTLinkedList2, ParserContext parserContext) {
        if (i != 36) {
            switch (i) {
                case 24:
                    aSTLinkedList2.addTokenNode(new RegExMatchNode(aSTNode, aSTLinkedList.nextNode(), parserContext));
                    return;
                case 25:
                    aSTLinkedList2.addTokenNode(new Instance(aSTNode, aSTLinkedList.nextNode(), parserContext));
                    return;
                case 26:
                    aSTLinkedList2.addTokenNode(new Contains(aSTNode, aSTLinkedList.nextNode(), parserContext));
                    return;
                case 27:
                    aSTLinkedList2.addTokenNode(new Soundslike(aSTNode, aSTLinkedList.nextNode(), parserContext));
                    return;
                case 28:
                    aSTLinkedList2.addTokenNode(new Strsim(aSTNode, aSTLinkedList.nextNode(), parserContext));
                    return;
                case 29:
                    if (parserContext.isStrongTyping() && aSTNode.getEgressType() != Boolean.class && aSTNode.getEgressType() != Boolean.TYPE) {
                        throw new RuntimeException("Condition of ternary operator is not of type boolean. Found " + aSTNode.getEgressType());
                    }
                    break;
            }
            aSTLinkedList2.addTokenNode(aSTNode, aSTNode2);
            return;
        }
        aSTLinkedList2.addTokenNode(new Convertable(aSTNode, aSTLinkedList.nextNode(), parserContext));
    }

    private static boolean isIntOptimizationviolation(BooleanNode booleanNode, ASTNode aSTNode) {
        return (booleanNode instanceof IntOptimized) && aSTNode.getEgressType() != Integer.class;
    }

    public static Class getReturnType(ASTIterator aSTIterator, boolean z) {
        ASTNode aSTNodeFirstNode = aSTIterator.firstNode();
        if (aSTNodeFirstNode == null) {
            return Object.class;
        }
        return aSTIterator.size() == 1 ? aSTNodeFirstNode.getEgressType() : ASTBinaryTree.buildTree(aSTIterator).getReturnType(z);
    }

    public static Map<String, Function> extractAllDeclaredFunctions(CompiledExpression compiledExpression) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ASTLinkedList aSTLinkedList = new ASTLinkedList(compiledExpression.getFirstNode());
        while (aSTLinkedList.hasMoreNodes()) {
            ASTNode aSTNodeNextNode = aSTLinkedList.nextNode();
            if (aSTNodeNextNode instanceof Function) {
                linkedHashMap.put(aSTNodeNextNode.getName(), (Function) aSTNodeNextNode);
            }
        }
        return linkedHashMap;
    }

    public static void expectType(ParserContext parserContext, Accessor accessor, Class cls, boolean z) {
        Class knownEgressType = accessor.getKnownEgressType();
        String name = "<Unknown>";
        if (z) {
            if (knownEgressType == null || !ParseTools.boxPrimitive(cls).isAssignableFrom(ParseTools.boxPrimitive(knownEgressType))) {
                if (!Object.class.equals(knownEgressType) || parserContext.isStrictTypeEnforcement()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("was expecting type: ");
                    sb.append(cls.getName());
                    sb.append("; but found type: ");
                    if (knownEgressType != null) {
                        name = knownEgressType.getName();
                    }
                    sb.append(name);
                    throw new CompileException(sb.toString(), new char[0], 0);
                }
                return;
            }
            return;
        }
        if (knownEgressType == null || !(Object.class.equals(knownEgressType) || ParseTools.boxPrimitive(cls).isAssignableFrom(ParseTools.boxPrimitive(knownEgressType)))) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("was expecting type: ");
            sb2.append(cls.getName());
            sb2.append("; but found type: ");
            if (knownEgressType != null) {
                name = knownEgressType.getName();
            }
            sb2.append(name);
            throw new CompileException(sb2.toString(), new char[0], 0);
        }
    }

    public static void expectType(ParserContext parserContext, ASTNode aSTNode, Class cls, boolean z) {
        Class<?> clsBoxPrimitive = ParseTools.boxPrimitive(aSTNode.getEgressType());
        String name = "<Unknown>";
        if (z) {
            if ((clsBoxPrimitive == null || !ParseTools.boxPrimitive(cls).isAssignableFrom(clsBoxPrimitive)) && !Object.class.equals(clsBoxPrimitive) && parserContext.isStrictTypeEnforcement()) {
                StringBuilder sb = new StringBuilder();
                sb.append("was expecting type: ");
                sb.append(cls.getName());
                sb.append("; but found type: ");
                if (clsBoxPrimitive != null) {
                    name = clsBoxPrimitive.getName();
                }
                sb.append(name);
                throw new CompileException(sb.toString(), new char[0], 0);
            }
            return;
        }
        if (clsBoxPrimitive == null || !(Object.class.equals(clsBoxPrimitive) || ParseTools.boxPrimitive(cls).isAssignableFrom(clsBoxPrimitive))) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("was expecting type: ");
            sb2.append(cls.getName());
            sb2.append("; but found type: ");
            if (clsBoxPrimitive != null) {
                name = clsBoxPrimitive.getName();
            }
            sb2.append(name);
            throw new CompileException(sb2.toString(), new char[0], 0);
        }
    }

    public static Class getReturnTypeFromOp(int i, Class cls, Class cls2) {
        if (i != 26 && i != 36) {
            switch (i) {
                case 0:
                    if (cls == String.class) {
                        return String.class;
                    }
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    return Integer.class;
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 21:
                case 22:
                    return Boolean.class;
                case 20:
                    return String.class;
                default:
                    return null;
            }
            if (cls == Object.class || cls2 == Object.class) {
                return Object.class;
            }
            return ParseTools.__resolveType(ParseTools.boxPrimitive(cls)) < ParseTools.__resolveType(ParseTools.boxPrimitive(cls2)) ? cls2 : cls;
        }
        return Boolean.class;
    }

    public static Accessor extractAccessor(ASTNode aSTNode) {
        return aSTNode instanceof LiteralNode ? new ExecutableLiteral(aSTNode.getLiteralValue()) : new ExecutableAccessor(aSTNode, aSTNode.getEgressType());
    }

    public static Map<String, Object> getInjectedImports(VariableResolverFactory variableResolverFactory) {
        if (variableResolverFactory == null) {
            return null;
        }
        while (!(variableResolverFactory instanceof ClassImportResolverFactory)) {
            variableResolverFactory = variableResolverFactory.getNextFactory();
            if (variableResolverFactory == null) {
                return null;
            }
        }
        return ((ClassImportResolverFactory) variableResolverFactory).getImportedClasses();
    }

    public static Number signNumber(Object obj) {
        if (obj instanceof Integer) {
            return Integer.valueOf(-((Integer) obj).intValue());
        }
        if (obj instanceof Double) {
            return Double.valueOf(-((Double) obj).doubleValue());
        }
        if (obj instanceof Float) {
            return Float.valueOf(-((Float) obj).floatValue());
        }
        if (obj instanceof Short) {
            return Integer.valueOf(-((Short) obj).shortValue());
        }
        throw new CompileException("expected a numeric type but found: " + obj.getClass().getName(), new char[0], 0);
    }
}
