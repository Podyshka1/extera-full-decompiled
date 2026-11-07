package org.mvel2.debug;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.BinaryOperation;
import org.mvel2.ast.NestedStatement;
import org.mvel2.ast.Substatement;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.compiler.ExecutableAccessor;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ASTLinkedList;

/* JADX INFO: loaded from: classes5.dex */
public class DebugTools {
    public static String decompile(Serializable serializable) {
        if (serializable instanceof CompiledExpression) {
            return decompile((CompiledExpression) serializable);
        }
        if (serializable instanceof ExecutableAccessor) {
            return "CANNOT DECOMPILE OPTIMIZED STATEMENT (Run with -Dmvel.optimizer=false)";
        }
        if (serializable instanceof ExecutableLiteral) {
            return "LITERAL: " + ((ExecutableLiteral) serializable).getValue(null, null);
        }
        return "NOT A KNOWN PAYLOAD: ".concat(serializable.getClass().getName());
    }

    public static String decompile(CompiledExpression compiledExpression) {
        return decompile(compiledExpression, false, new DecompileContext());
    }

    public static final class DecompileContext {
        public int node;

        private DecompileContext() {
            this.node = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String decompile(CompiledExpression compiledExpression, boolean z, DecompileContext decompileContext) {
        ASTLinkedList aSTLinkedList = new ASTLinkedList(compiledExpression.getFirstNode());
        StringBuffer stringBuffer = new StringBuffer();
        if (!z) {
            stringBuffer.append("Expression Decompile\n-------------\n");
        }
        while (aSTLinkedList.hasMoreNodes()) {
            stringBuffer.append("(");
            int i = decompileContext.node;
            decompileContext.node = i + 1;
            stringBuffer.append(i);
            stringBuffer.append(") ");
            ASTNode aSTNodeNextNode = aSTLinkedList.nextNode();
            if ((aSTNodeNextNode instanceof NestedStatement) && (((NestedStatement) aSTNodeNextNode).getNestedStatement() instanceof CompiledExpression)) {
                stringBuffer.append("NEST [" + aSTNodeNextNode.getClass().getSimpleName() + "]: { " + aSTNodeNextNode.getName() + " }\n");
                stringBuffer.append(decompile((CompiledExpression) ((NestedStatement) aSTNodeNextNode).getNestedStatement(), true, decompileContext));
            }
            if (aSTNodeNextNode instanceof Substatement) {
                Substatement substatement = (Substatement) aSTNodeNextNode;
                if (substatement.getStatement() instanceof CompiledExpression) {
                    stringBuffer.append("NEST [" + aSTNodeNextNode.getClass().getSimpleName() + "]: { " + aSTNodeNextNode.getName() + " }\n");
                    stringBuffer.append(decompile((CompiledExpression) substatement.getStatement(), true, decompileContext));
                } else if (aSTNodeNextNode.isDebuggingSymbol()) {
                    stringBuffer.append("DEBUG_SYMBOL :: " + aSTNodeNextNode.toString());
                } else if (aSTNodeNextNode.isLiteral()) {
                    stringBuffer.append("LITERAL :: ");
                    stringBuffer.append(aSTNodeNextNode.getLiteralValue());
                    stringBuffer.append("'");
                } else if (aSTNodeNextNode.isOperator()) {
                    stringBuffer.append("OPERATOR [");
                    stringBuffer.append(getOperatorName(aSTNodeNextNode.getOperator().intValue()));
                    stringBuffer.append("]: ");
                    stringBuffer.append(aSTNodeNextNode.getName());
                    if (aSTNodeNextNode.isOperator(37)) {
                        stringBuffer.append("\n");
                    }
                } else if (aSTNodeNextNode.isIdentifier()) {
                    stringBuffer.append("REFERENCE :: ");
                    stringBuffer.append(aSTNodeNextNode.getClass().getSimpleName());
                    stringBuffer.append(":");
                    stringBuffer.append(aSTNodeNextNode.getName());
                } else if (aSTNodeNextNode instanceof BinaryOperation) {
                    BinaryOperation binaryOperation = (BinaryOperation) aSTNodeNextNode;
                    stringBuffer.append("OPERATION [" + getOperatorName(binaryOperation.getOperation()) + "] {");
                    stringBuffer.append(binaryOperation.getLeft().getName());
                    stringBuffer.append("} {");
                    stringBuffer.append(binaryOperation.getRight().getName());
                    stringBuffer.append("}");
                } else {
                    stringBuffer.append("NODE [" + aSTNodeNextNode.getClass().getSimpleName() + "] :: " + aSTNodeNextNode.getName());
                }
            }
            stringBuffer.append("\n");
        }
        stringBuffer.append("==END==");
        return stringBuffer.toString();
    }

    public static String getOperatorSymbol(int i) {
        switch (i) {
            case 0:
                return "+";
            case 1:
                return "-";
            case 2:
                return "*";
            case 3:
                return "/";
            case 4:
                return "%";
            case 5:
                return "**";
            case 6:
                return "&";
            case 7:
                return "|";
            case 8:
                return "^";
            case 9:
                return ">>";
            case 10:
                return "<<";
            case 11:
                return ">>>";
            case 12:
                return "<<<";
            default:
                switch (i) {
                    case 14:
                        return "<";
                    case 15:
                        return ">";
                    case 16:
                        return "<=";
                    case 17:
                        return ">=";
                    case 18:
                        return "==";
                    case 19:
                        return "!=";
                    case 20:
                        return "+";
                    case 21:
                        return "&&";
                    case 22:
                        return "||";
                    case 23:
                        return PluginsConstants.HookFilterTypes.OR;
                    case 24:
                        return "REGEX";
                    case 25:
                        return "instanceof";
                    case 26:
                        return "contains";
                    case 27:
                        return "SOUNDEX";
                    case 28:
                        return "SIMILARITY";
                    case 29:
                        return "TERNARY_IF";
                    case 30:
                        return "TERNARY_ELSE";
                    case 31:
                        return "=";
                    case 32:
                    case 33:
                        return "++";
                    case 34:
                        return "new";
                    case 35:
                        return "PROJECT";
                    case 36:
                        return "convertable_to";
                    case 37:
                        return ";";
                    case 38:
                        return "foreach";
                    case 39:
                        return "if";
                    case 40:
                        return "else";
                    case 41:
                        return "while";
                    default:
                        switch (i) {
                            case 43:
                                return "for";
                            case 44:
                                return "SWITCH";
                            case 45:
                                return "do";
                            default:
                                switch (i) {
                                    case 50:
                                        return "++";
                                    case 51:
                                        return "--";
                                    case 52:
                                        return "=+";
                                    case 53:
                                        return "=";
                                    case 54:
                                        return "=+";
                                    default:
                                        switch (i) {
                                            case 99:
                                                return "RETURN";
                                            case 100:
                                                return "function";
                                            case 101:
                                                return "stacklang";
                                            default:
                                                return "UNKNOWN_OPERATOR";
                                        }
                                }
                        }
                }
        }
    }

    public static String getOperatorName(int i) {
        switch (i) {
            case 0:
                return "ADD";
            case 1:
                return "SUBTRACT";
            case 2:
                return "MULTIPLY";
            case 3:
                return "DIVIDE";
            case 4:
                return "MODULUS";
            case 5:
                return "POWER_OF";
            case 6:
                return "BIT_AND";
            case 7:
                return "BIT_OR";
            case 8:
                return "BIT_XOR";
            case 9:
                return "BIT_SHIFT_RIGHT";
            case 10:
                return "BIT_SHIFT_LEFT";
            case 11:
                return "BIT_UNSIGNED_SHIFT_RIGHT";
            case 12:
                return "BIT_UNSIGNED_SHIFT_LEFT";
            default:
                switch (i) {
                    case 14:
                        return "LESS_THAN";
                    case 15:
                        return "GREATHER_THAN";
                    case 16:
                        return "LESS_THAN_OR_EQUAL";
                    case 17:
                        return "GREATER_THAN_OR_EQUAL";
                    case 18:
                        return "EQUAL";
                    case 19:
                        return "NOT_EQUAL";
                    case 20:
                        return "STR_APPEND";
                    case 21:
                        return "AND";
                    case 22:
                        return "OR";
                    case 23:
                        return "CHAINED_OR";
                    case 24:
                        return "REGEX";
                    case 25:
                        return "INSTANCEOF";
                    case 26:
                        return "CONTAINS";
                    case 27:
                        return "SOUNDEX";
                    case 28:
                        return "SIMILARITY";
                    case 29:
                        return "TERNARY_IF";
                    case 30:
                        return "TERNARY_ELSE";
                    case 31:
                        return "ASSIGN";
                    case 32:
                        return "INCREMENT_ASSIGN";
                    case 33:
                        return "DECREMENT_ASSIGN";
                    case 34:
                        return "NEW_OBJECT";
                    case 35:
                        return "PROJECT";
                    case 36:
                        return "CONVERTABLE_TO";
                    case 37:
                        return "END_OF_STATEMENT";
                    case 38:
                        return "FOREACH";
                    case 39:
                        return "IF";
                    case 40:
                        return "ELSE";
                    case 41:
                        return "WHILE";
                    default:
                        switch (i) {
                            case 43:
                                return "FOR";
                            case 44:
                                return "SWITCH";
                            case 45:
                                return "DO";
                            default:
                                switch (i) {
                                    case 50:
                                        return "INCREMENT";
                                    case 51:
                                        return "DECREMENT";
                                    case 52:
                                        return "ASSIGN_ADD";
                                    case 53:
                                        return "ASSIGN_SUB";
                                    case 54:
                                        return "ASSIGN_STR_APPEND";
                                    default:
                                        switch (i) {
                                            case 99:
                                                return "RETURN";
                                            case 100:
                                                return "FUNCTION";
                                            case 101:
                                                return "STACKLANG";
                                            default:
                                                return "UNKNOWN_OPERATOR";
                                        }
                                }
                        }
                }
        }
    }

    public static Class determineType(String str, CompiledExpression compiledExpression) {
        ASTLinkedList aSTLinkedList = new ASTLinkedList(compiledExpression.getFirstNode());
        while (aSTLinkedList.hasMoreNodes()) {
            ASTNode aSTNodeNextNode = aSTLinkedList.nextNode();
            if (str.equals(aSTNodeNextNode.getName()) && aSTNodeNextNode.isAssignment()) {
                return aSTNodeNextNode.getEgressType();
            }
        }
        return null;
    }

    public static Map<String, VariableResolver> getAllVariableResolvers(VariableResolverFactory variableResolverFactory) {
        HashMap map = new HashMap();
        do {
            for (String str : variableResolverFactory.getKnownVariables()) {
                map.put(str, variableResolverFactory.getVariableResolver(str));
            }
            variableResolverFactory = variableResolverFactory.getNextFactory();
        } while (variableResolverFactory != null);
        return map;
    }
}
