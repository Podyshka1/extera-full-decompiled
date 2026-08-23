package org.mvel2.ast;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.ParserContext;
import org.mvel2.ScriptRuntimeException;
import org.mvel2.debug.DebugTools;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.math.MathProcessor;
import org.mvel2.util.CompatibilityStrategy;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.NullType;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes.dex */
public class BinaryOperation extends BooleanNode {
    private int lType;
    private final int operation;
    private int rType;

    private boolean isAritmeticOperation(int i) {
        return i <= 5;
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isLiteral() {
        return false;
    }

    public BinaryOperation(int i, ParserContext parserContext) {
        super(parserContext);
        this.lType = -1;
        this.rType = -1;
        this.operation = i;
    }

    public BinaryOperation(int i, ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.lType = -1;
        this.rType = -1;
        this.operation = i;
        this.left = aSTNode;
        if (aSTNode == null) {
            throw new ScriptRuntimeException("not a statement");
        }
        this.right = aSTNode2;
        if (aSTNode2 == null) {
            throw new ScriptRuntimeException("not a statement");
        }
        if (i == 0 && (aSTNode.getEgressType() == String.class || aSTNode2.getEgressType() == String.class)) {
            this.egressType = String.class;
            this.lType = ParseTools.__resolveType(aSTNode.egressType);
            this.rType = ParseTools.__resolveType(aSTNode2.egressType);
            return;
        }
        this.egressType = CompilerTools.getReturnTypeFromOp(i, this.left.egressType, this.right.egressType);
        if (parserContext.isStrongTyping()) {
            boolean zIsAssignableFrom = aSTNode.getEgressType().isAssignableFrom(aSTNode2.getEgressType());
            boolean zIsAssignableFrom2 = aSTNode2.getEgressType().isAssignableFrom(aSTNode.getEgressType());
            if (!zIsAssignableFrom && !zIsAssignableFrom2) {
                boolean zDoesRequireConversion = doesRequireConversion(aSTNode.getEgressType(), aSTNode2.getEgressType(), i);
                if (aSTNode2.isLiteral() && zDoesRequireConversion && DataConversion.canConvert(aSTNode.getEgressType(), aSTNode2.getEgressType())) {
                    Class egressType = isAritmeticOperation(i) ? this.egressType : aSTNode.getEgressType();
                    this.right = new LiteralNode(DataConversion.convert(aSTNode2.getReducedValueAccelerated(null, null, null), egressType), egressType, this.pCtx);
                } else if (!areCompatible(aSTNode.getEgressType(), aSTNode2.getEgressType()) && ((i != 18 && i != 19) || !CompatibilityStrategy.areEqualityCompatible(aSTNode.getEgressType(), aSTNode2.getEgressType()))) {
                    throw new CompileException("incompatible types in statement: " + aSTNode2.getEgressType() + " (compared from: " + aSTNode.getEgressType() + ")", aSTNode.getExpr() != null ? aSTNode.getExpr() : aSTNode2.getExpr(), aSTNode.getExpr() != null ? aSTNode.getStart() : aSTNode2.getStart());
                }
            }
        }
        ASTNode aSTNode3 = this.left;
        if (aSTNode3.egressType == this.right.egressType) {
            int operandType = getOperandType(aSTNode3);
            this.rType = operandType;
            this.lType = operandType;
        } else {
            if (aSTNode3.isLiteral()) {
                this.lType = getOperandType(this.left);
            }
            if (this.right.isLiteral()) {
                this.rType = getOperandType(this.right);
            }
        }
    }

    private int getOperandType(ASTNode aSTNode) {
        Class cls = aSTNode.egressType;
        if (cls == null || cls == Object.class) {
            return -1;
        }
        return ParseTools.__resolveType(cls);
    }

    private boolean doesRequireConversion(Class cls, Class cls2, int i) {
        if (cls == Short.class || cls == Short.TYPE || cls == Integer.class || cls == Integer.TYPE || cls == Long.class || cls == Long.TYPE || cls == BigInteger.class) {
            return (cls2 == Float.class || cls2 == Float.TYPE || cls2 == Double.class || cls2 == Double.TYPE || cls2 == BigDecimal.class) ? false : true;
        }
        return true;
    }

    private boolean areCompatible(Class<?> cls, Class<?> cls2) {
        if (cls.equals(NullType.class) || cls2.equals(NullType.class)) {
            return true;
        }
        if (Number.class.isAssignableFrom(cls2) && Number.class.isAssignableFrom(cls)) {
            return true;
        }
        return (cls2.isPrimitive() || cls.isPrimitive()) && DataConversion.canConvert(ParseTools.boxPrimitive(cls), ParseTools.boxPrimitive(cls2));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return MathProcessor.doOperations(this.lType, this.left.getReducedValueAccelerated(obj, obj2, variableResolverFactory), this.operation, this.rType, this.right.getReducedValueAccelerated(obj, obj2, variableResolverFactory));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("unsupported AST operation");
    }

    public int getOperation() {
        return this.operation;
    }

    @Override // org.mvel2.ast.BooleanNode
    public void setRightMost(ASTNode aSTNode) {
        BinaryOperation binaryOperation = this;
        while (true) {
            ASTNode aSTNode2 = binaryOperation.right;
            if (aSTNode2 == null || !(aSTNode2 instanceof BinaryOperation)) {
                break;
            } else {
                binaryOperation = (BinaryOperation) aSTNode2;
            }
        }
        binaryOperation.right = aSTNode;
        if (binaryOperation == this) {
            int i__resolveType = ParseTools.__resolveType(aSTNode.getEgressType());
            this.rType = i__resolveType;
            if (i__resolveType == 0) {
                this.rType = -1;
            }
        }
    }

    @Override // org.mvel2.ast.BooleanNode
    public ASTNode getRightMost() {
        ASTNode aSTNode;
        BinaryOperation binaryOperation = this;
        while (true) {
            aSTNode = binaryOperation.right;
            if (aSTNode == null || !(aSTNode instanceof BinaryOperation)) {
                break;
            }
            binaryOperation = (BinaryOperation) aSTNode;
        }
        return aSTNode;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return "(" + this.left + " " + DebugTools.getOperatorSymbol(this.operation) + " " + this.right + ")";
    }
}
