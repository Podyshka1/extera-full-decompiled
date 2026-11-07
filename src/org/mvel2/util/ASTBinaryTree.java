package org.mvel2.util;

import org.mvel2.MVEL$$ExternalSyntheticBUOutline0;
import org.mvel2.Operator;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.OperatorNode;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ASTBinaryTree {
    private ASTBinaryTree left;
    private ASTBinaryTree right;
    private final ASTNode root;

    public ASTBinaryTree(ASTNode aSTNode) {
        this.root = aSTNode;
    }

    public ASTBinaryTree append(ASTNode aSTNode) {
        if (comparePrecedence(this.root, aSTNode) >= 0) {
            ASTBinaryTree aSTBinaryTree = new ASTBinaryTree(aSTNode);
            aSTBinaryTree.left = this;
            return aSTBinaryTree;
        }
        if (this.left == null) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Missing left node");
            return null;
        }
        ASTBinaryTree aSTBinaryTree2 = this.right;
        if (aSTBinaryTree2 == null) {
            this.right = new ASTBinaryTree(aSTNode);
            return this;
        }
        this.right = aSTBinaryTree2.append(aSTNode);
        return this;
    }

    public Class<?> getReturnType(boolean z) {
        ASTNode aSTNode = this.root;
        if (!(aSTNode instanceof OperatorNode)) {
            return aSTNode.getEgressType();
        }
        ASTBinaryTree aSTBinaryTree = this.left;
        if (aSTBinaryTree == null || this.right == null) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Malformed expression");
            return null;
        }
        Class<?> returnType = aSTBinaryTree.getReturnType(z);
        Class<?> returnType2 = this.right.getReturnType(z);
        int iIntValue = this.root.getOperator().intValue();
        if (iIntValue != 0) {
            if (iIntValue != 1 && iIntValue != 2 && iIntValue != 3) {
                if (iIntValue == 4) {
                    if (z && !CompatibilityStrategy.areEqualityCompatible(returnType, returnType2)) {
                        ASTBinaryTree$$ExternalSyntheticBUOutline0.m970m("Associative operation requires compatible types. Found ", returnType, returnType2);
                        return null;
                    }
                    return Integer.class;
                }
                Class<?> cls = Boolean.TYPE;
                if (iIntValue == 21 || iIntValue == 22) {
                    if (z) {
                        if (returnType != Boolean.class && returnType != cls) {
                            MVEL$$ExternalSyntheticBUOutline0.m957m("Left side of logical operation is not of type boolean. Found ", returnType);
                            return null;
                        }
                        if (returnType2 != Boolean.class && returnType2 != cls) {
                            MVEL$$ExternalSyntheticBUOutline0.m957m("Right side of logical operation is not of type boolean. Found ", returnType2);
                            return null;
                        }
                    }
                    return Boolean.class;
                }
                switch (iIntValue) {
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                        if (!z || CompatibilityStrategy.areComparisonCompatible(returnType, returnType2)) {
                            return Boolean.class;
                        }
                        ASTBinaryTree$$ExternalSyntheticBUOutline0.m970m("Comparison operation requires compatible types. Found ", returnType, returnType2);
                        return null;
                    case 18:
                    case 19:
                        if (!z || CompatibilityStrategy.areEqualityCompatible(returnType, returnType2)) {
                            return Boolean.class;
                        }
                        ASTBinaryTree$$ExternalSyntheticBUOutline0.m970m("Comparison operation requires compatible types. Found ", returnType, returnType2);
                        return null;
                    default:
                        switch (iIntValue) {
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                                return Boolean.class;
                            case 29:
                                if (!z || returnType == Boolean.class || returnType == cls) {
                                    return returnType2;
                                }
                                MVEL$$ExternalSyntheticBUOutline0.m957m("Condition of ternary operator is not of type boolean. Found ", returnType);
                                return null;
                            case 30:
                                if (!z || CompatibilityStrategy.areEqualityCompatible(returnType, returnType2)) {
                                    return returnType;
                                }
                                ASTBinaryTree$$ExternalSyntheticBUOutline0.m970m("Associative operation requires compatible types. Found ", returnType, returnType2);
                                return null;
                            default:
                                return this.root.getEgressType();
                        }
                }
            }
        } else if (returnType.equals(String.class) || returnType2.equals(String.class)) {
            return String.class;
        }
        if (!z || CompatibilityStrategy.areEqualityCompatible(returnType, returnType2)) {
            return (returnType == returnType2 && (returnType.isPrimitive() || Number.class.isAssignableFrom(returnType))) ? returnType : Double.class;
        }
        ASTBinaryTree$$ExternalSyntheticBUOutline0.m970m("Associative operation requires compatible types. Found ", returnType, returnType2);
        return null;
    }

    private int comparePrecedence(ASTNode aSTNode, ASTNode aSTNode2) {
        boolean z = aSTNode instanceof OperatorNode;
        if (!z && !(aSTNode2 instanceof OperatorNode)) {
            return 0;
        }
        if (!z || !(aSTNode2 instanceof OperatorNode)) {
            return z ? -1 : 1;
        }
        int[] iArr = Operator.PTABLE;
        return iArr[aSTNode.getOperator().intValue()] - iArr[aSTNode2.getOperator().intValue()];
    }

    public static ASTBinaryTree buildTree(ASTIterator aSTIterator) {
        ASTLinkedList aSTLinkedList = new ASTLinkedList(aSTIterator.firstNode());
        ASTBinaryTree aSTBinaryTree = new ASTBinaryTree(aSTLinkedList.nextNode());
        while (aSTLinkedList.hasMoreNodes()) {
            ASTNode aSTNodeNextNode = aSTLinkedList.nextNode();
            if (aSTNodeNextNode instanceof EndOfStatement) {
                if (aSTLinkedList.hasMoreNodes()) {
                    aSTBinaryTree = new ASTBinaryTree(aSTLinkedList.nextNode());
                }
            } else {
                aSTBinaryTree = aSTBinaryTree.append(aSTNodeNextNode);
            }
        }
        return aSTBinaryTree;
    }
}
