package org.mvel2.compiler;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.WeakHashMap;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.ErrorDetail;
import org.mvel2.Operator;
import org.mvel2.ParserContext;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.DeclProtoVarNode;
import org.mvel2.ast.DeclTypedVarNode;
import org.mvel2.ast.DoNode;
import org.mvel2.ast.DoUntilNode;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.ForEachNode;
import org.mvel2.ast.ForNode;
import org.mvel2.ast.Function;
import org.mvel2.ast.IfNode;
import org.mvel2.ast.LiteralDeepPropertyNode;
import org.mvel2.ast.LiteralNode;
import org.mvel2.ast.Negation$$ExternalSyntheticBUOutline0;
import org.mvel2.ast.OperatorNode;
import org.mvel2.ast.Proto;
import org.mvel2.ast.ProtoVarNode;
import org.mvel2.ast.Sign$$ExternalSyntheticBUOutline0;
import org.mvel2.ast.Stacklang;
import org.mvel2.ast.Substatement;
import org.mvel2.ast.TypeDescriptor;
import org.mvel2.ast.TypedVarNode;
import org.mvel2.ast.Union;
import org.mvel2.ast.UntilNode;
import org.mvel2.ast.WhileNode;
import org.mvel2.ast.WithNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ArrayTools;
import org.mvel2.util.ExecutionStack;
import org.mvel2.util.FunctionParser;
import org.mvel2.util.ParseTools;
import org.mvel2.util.PropertyTools;
import org.mvel2.util.ProtoParser;
import org.mvel2.util.Soundex;

/* JADX INFO: loaded from: classes5.dex */
public class AbstractParser implements Parser, Serializable {
    public static HashMap<String, Object> CLASS_LITERALS = null;
    private static final WeakHashMap<String, char[]> EX_PRECACHE = new WeakHashMap<>(15);
    protected static final int GET = 2;
    protected static final int GET_OR_CREATE = 3;
    public static final int LEVEL_0_PROPERTY_ONLY = 0;
    public static final int LEVEL_1_BASIC_LANG = 1;
    public static final int LEVEL_2_MULTI_STATEMENT = 2;
    public static final int LEVEL_3_ITERATION = 3;
    public static final int LEVEL_4_ASSIGNMENT = 4;
    public static final int LEVEL_5_CONTROL_FLOW = 5;
    public static HashMap<String, Object> LITERALS = null;
    public static HashMap<String, Integer> OPERATORS = null;
    protected static final int OP_CONTINUE = 1;
    protected static final int OP_NOT_LITERAL = -3;
    protected static final int OP_OVERFLOW = -2;
    protected static final int OP_RESET_FRAME = 0;
    protected static final int OP_TERMINATE = -1;
    protected static final int REMOVE = 1;
    protected static final int SET = 0;
    protected boolean compileMode;
    protected Object ctx;
    protected int cursor;
    protected ExecutionStack dStack;
    protected boolean debugSymbols;
    protected int end;
    protected char[] expr;
    protected int fields;
    protected boolean greedy;
    protected int lastLineStart;
    protected ASTNode lastNode;
    protected boolean lastWasComment;
    protected boolean lastWasIdentifier;
    protected boolean lastWasLineLabel;
    protected int length;
    protected int line;
    protected int literalOnly;
    protected ParserContext pCtx;
    protected ExecutionStack splitAccumulator;
    protected int st;
    protected int start;
    protected ExecutionStack stk;
    protected VariableResolverFactory variableFactory;

    public static boolean isArithmeticOperator(int i) {
        return i != -1 && i < 6;
    }

    static {
        setupParser();
    }

    public AbstractParser() {
        this.greedy = true;
        this.lastWasIdentifier = false;
        this.lastWasLineLabel = false;
        this.lastWasComment = false;
        this.compileMode = false;
        this.literalOnly = -1;
        this.lastLineStart = 0;
        this.line = 0;
        this.splitAccumulator = new ExecutionStack();
        this.debugSymbols = false;
        this.pCtx = new ParserContext();
    }

    public AbstractParser(ParserContext parserContext) {
        this.greedy = true;
        this.lastWasIdentifier = false;
        this.lastWasLineLabel = false;
        this.lastWasComment = false;
        this.compileMode = false;
        this.literalOnly = -1;
        this.lastLineStart = 0;
        this.line = 0;
        this.splitAccumulator = new ExecutionStack();
        this.debugSymbols = false;
        this.pCtx = parserContext == null ? new ParserContext() : parserContext;
    }

    public static void setupParser() {
        HashMap<String, Object> map = LITERALS;
        if (map == null || map.isEmpty()) {
            LITERALS = new HashMap<>();
            CLASS_LITERALS = new HashMap<>();
            OPERATORS = new HashMap<>();
            CLASS_LITERALS.put("System", System.class);
            CLASS_LITERALS.put("String", String.class);
            CLASS_LITERALS.put("CharSequence", CharSequence.class);
            CLASS_LITERALS.put("Integer", Integer.class);
            CLASS_LITERALS.put("int", Integer.TYPE);
            CLASS_LITERALS.put("Long", Long.class);
            CLASS_LITERALS.put("long", Long.TYPE);
            CLASS_LITERALS.put("Boolean", Boolean.class);
            CLASS_LITERALS.put("boolean", Boolean.TYPE);
            CLASS_LITERALS.put("Short", Short.class);
            CLASS_LITERALS.put("short", Short.TYPE);
            CLASS_LITERALS.put("Character", Character.class);
            CLASS_LITERALS.put("char", Character.TYPE);
            CLASS_LITERALS.put("Double", Double.class);
            CLASS_LITERALS.put("double", Double.TYPE);
            CLASS_LITERALS.put("Float", Float.class);
            CLASS_LITERALS.put("float", Float.TYPE);
            CLASS_LITERALS.put("Byte", Byte.class);
            CLASS_LITERALS.put("byte", Byte.TYPE);
            CLASS_LITERALS.put("Math", Math.class);
            CLASS_LITERALS.put("Void", Void.class);
            CLASS_LITERALS.put("Object", Object.class);
            CLASS_LITERALS.put("Number", Number.class);
            CLASS_LITERALS.put("Class", Class.class);
            CLASS_LITERALS.put("ClassLoader", ClassLoader.class);
            CLASS_LITERALS.put("Runtime", Runtime.class);
            CLASS_LITERALS.put("Thread", Thread.class);
            CLASS_LITERALS.put("Exception", Exception.class);
            CLASS_LITERALS.put("Array", Array.class);
            CLASS_LITERALS.put("StringBuilder", StringBuilder.class);
            LITERALS.putAll(CLASS_LITERALS);
            LITERALS.put("true", Boolean.TRUE);
            LITERALS.put("false", Boolean.FALSE);
            LITERALS.put("null", null);
            LITERALS.put("nil", null);
            LITERALS.put("empty", BlankLiteral.INSTANCE);
            setLanguageLevel(Boolean.getBoolean("mvel.future.lang.support") ? 6 : 5);
        }
    }

    public ASTNode nextTokenSkipSymbols() {
        ASTNode aSTNodeNextToken = nextToken();
        return (aSTNodeNextToken == null || aSTNodeNextToken.getFields() != -1) ? aSTNodeNextToken : nextToken();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public org.mvel2.ast.ASTNode nextToken() {
        /*
            Method dump skipped, instruction units count: 5108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mvel2.compiler.AbstractParser.nextToken():org.mvel2.ast.ASTNode");
    }

    public ASTNode handleSubstatement(Substatement substatement) {
        return (substatement.getStatement() == null || !substatement.getStatement().isLiteralOnly()) ? substatement : new LiteralNode(substatement.getStatement().getValue(null, null, null), this.pCtx);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ASTNode handleUnion(ASTNode aSTNode) {
        int i;
        if (this.cursor != this.end) {
            skipWhitespace();
            int i2 = this.cursor;
            if (i2 >= this.end) {
                i = -1;
                if (i != -1) {
                    captureToEOT();
                    Union union = new Union(this.expr, i, this.cursor - i, this.fields, aSTNode, this.pCtx);
                    this.lastNode = union;
                    return union;
                }
            } else {
                char c2 = this.expr[i2];
                if (c2 != '.') {
                    if (c2 != '[') {
                    }
                    if (i != -1) {
                    }
                } else {
                    i2++;
                }
                i = i2;
                if (i != -1) {
                }
            }
        }
        this.lastNode = aSTNode;
        return aSTNode;
    }

    private ASTNode createOperator(char[] cArr, int i, int i2) {
        this.lastWasIdentifier = false;
        OperatorNode operatorNode = new OperatorNode(OPERATORS.get(new String(cArr, i, i2 - i)), cArr, i, this.pCtx);
        this.lastNode = operatorNode;
        return operatorNode;
    }

    private char[] subArray(int i, int i2) {
        if (i >= i2) {
            return new char[0];
        }
        int i3 = i2 - i;
        char[] cArr = new char[i3];
        for (int i4 = 0; i4 != i3; i4++) {
            cArr[i4] = this.expr[i4 + i];
        }
        return cArr;
    }

    private ASTNode createPropertyToken(int i, int i2) {
        if (ParseTools.isPropertyOnly(this.expr, i, i2)) {
            ParserContext parserContext = this.pCtx;
            if (parserContext != null && parserContext.hasImports()) {
                int iFindFirst = ArrayTools.findFirst('.', i, i2 - i, this.expr);
                if (iFindFirst != -1) {
                    String str = new String(this.expr, i, iFindFirst - i);
                    if (this.pCtx.hasImport(str)) {
                        this.lastWasIdentifier = true;
                        LiteralDeepPropertyNode literalDeepPropertyNode = new LiteralDeepPropertyNode(this.expr, iFindFirst + 1, (i2 - iFindFirst) - 1, this.fields, this.pCtx.getImport(str), this.pCtx);
                        this.lastNode = literalDeepPropertyNode;
                        return literalDeepPropertyNode;
                    }
                } else {
                    ParserContext parserContext2 = this.pCtx;
                    String str2 = new String(this.expr, i, this.cursor - i);
                    if (parserContext2.hasImport(str2)) {
                        this.lastWasIdentifier = true;
                        LiteralNode literalNode = new LiteralNode(this.pCtx.getStaticOrClassImport(str2), this.pCtx);
                        this.lastNode = literalNode;
                        return literalNode;
                    }
                }
            }
            HashMap<String, Object> map = LITERALS;
            String str3 = new String(this.expr, i, i2 - i);
            if (map.containsKey(str3)) {
                this.lastWasIdentifier = true;
                LiteralNode literalNode2 = new LiteralNode(LITERALS.get(str3), this.pCtx);
                this.lastNode = literalNode2;
                return literalNode2;
            }
            if (OPERATORS.containsKey(str3)) {
                this.lastWasIdentifier = false;
                OperatorNode operatorNode = new OperatorNode(OPERATORS.get(str3), this.expr, i, this.pCtx);
                this.lastNode = operatorNode;
                return operatorNode;
            }
            if (this.lastWasIdentifier) {
                return procTypedNode(true);
            }
        }
        if (this.pCtx != null && ParseTools.isArrayType(this.expr, i, i2) && this.pCtx.hasImport(new String(this.expr, i, (this.cursor - i) - 2))) {
            this.lastWasIdentifier = true;
            TypeDescriptor typeDescriptor = new TypeDescriptor(this.expr, i, this.cursor - i, this.fields);
            try {
                LiteralNode literalNode3 = new LiteralNode(typeDescriptor.getClassReference(this.pCtx), this.pCtx);
                this.lastNode = literalNode3;
                return literalNode3;
            } catch (ClassNotFoundException unused) {
                Sign$$ExternalSyntheticBUOutline0.m964m("could not resolve class: " + typeDescriptor.getClassName(), this.expr, i);
                return null;
            }
        }
        this.lastWasIdentifier = true;
        ASTNode aSTNode = new ASTNode(this.expr, trimRight(i), trimLeft(i2) - i, this.fields, this.pCtx);
        this.lastNode = aSTNode;
        return aSTNode;
    }

    private ASTNode procTypedNode(boolean z) {
        while (true) {
            if (this.lastNode.getLiteralValue() instanceof String) {
                char[] charArray = ((String) this.lastNode.getLiteralValue()).toCharArray();
                try {
                    this.lastNode.setLiteralValue(TypeDescriptor.getClassReference(this.pCtx, new TypeDescriptor(charArray, 0, charArray.length, 0)));
                    this.lastNode.discard();
                } catch (Exception unused) {
                }
            }
            if (this.lastNode.isLiteral() && (this.lastNode.getLiteralValue() instanceof Class)) {
                this.lastNode.discard();
                captureToEOS();
                if (z) {
                    ExecutionStack executionStack = this.splitAccumulator;
                    char[] cArr = this.expr;
                    int i = this.st;
                    String str = new String(cArr, i, this.cursor - i);
                    char[] cArr2 = this.expr;
                    int i2 = this.st;
                    executionStack.add(new DeclTypedVarNode(str, cArr2, i2, this.cursor - i2, (Class) this.lastNode.getLiteralValue(), this.fields | 128, this.pCtx));
                } else {
                    captureToEOS();
                    this.splitAccumulator.add(new TypedVarNode(this.expr, this.st, (this.cursor - r3) - 1, this.fields | 128, (Class) this.lastNode.getLiteralValue(), this.pCtx));
                }
            } else if (this.lastNode instanceof Proto) {
                captureToEOS();
                ExecutionStack executionStack2 = this.splitAccumulator;
                if (z) {
                    char[] cArr3 = this.expr;
                    int i3 = this.st;
                    executionStack2.add(new DeclProtoVarNode(new String(cArr3, i3, this.cursor - i3), (Proto) this.lastNode, this.fields | 128, this.pCtx));
                } else {
                    char[] cArr4 = this.expr;
                    int i4 = this.st;
                    executionStack2.add(new ProtoVarNode(cArr4, i4, this.cursor - i4, this.fields | 128, (Proto) this.lastNode, this.pCtx));
                }
            } else if ((this.fields & 16) == 0) {
                if (this.stk.peek() instanceof Class) {
                    captureToEOS();
                    ExecutionStack executionStack3 = this.splitAccumulator;
                    if (z) {
                        char[] cArr5 = this.expr;
                        int i5 = this.st;
                        String str2 = new String(cArr5, i5, this.cursor - i5);
                        char[] cArr6 = this.expr;
                        int i6 = this.st;
                        executionStack3.add(new DeclTypedVarNode(str2, cArr6, i6, this.cursor - i6, (Class) this.stk.pop(), this.fields | 128, this.pCtx));
                    } else {
                        char[] cArr7 = this.expr;
                        int i7 = this.st;
                        executionStack3.add(new TypedVarNode(cArr7, i7, this.cursor - i7, this.fields | 128, (Class) this.stk.pop(), this.pCtx));
                    }
                } else if (this.stk.peek() instanceof Proto) {
                    captureToEOS();
                    ExecutionStack executionStack4 = this.splitAccumulator;
                    if (z) {
                        char[] cArr8 = this.expr;
                        int i8 = this.st;
                        executionStack4.add(new DeclProtoVarNode(new String(cArr8, i8, this.cursor - i8), (Proto) this.stk.pop(), this.fields | 128, this.pCtx));
                    } else {
                        char[] cArr9 = this.expr;
                        int i9 = this.st;
                        executionStack4.add(new ProtoVarNode(cArr9, i9, this.cursor - i9, this.fields | 128, (Proto) this.stk.pop(), this.pCtx));
                    }
                } else {
                    Sign$$ExternalSyntheticBUOutline0.m964m("unknown class or illegal statement: " + this.lastNode.getLiteralValue(), this.expr, this.cursor);
                    return null;
                }
            } else {
                Sign$$ExternalSyntheticBUOutline0.m964m("unknown class or illegal statement: " + this.lastNode.getLiteralValue(), this.expr, this.cursor);
                return null;
            }
            skipWhitespace();
            int i10 = this.cursor;
            if (i10 >= this.end || this.expr[i10] != ',') {
                break;
            }
            int i11 = i10 + 1;
            this.cursor = i11;
            this.st = i11;
            this.splitAccumulator.add(new EndOfStatement(this.pCtx));
        }
        return (ASTNode) this.splitAccumulator.pop();
    }

    private ASTNode createBlockToken(int i, int i2, int i3, int i4, int i5) {
        this.lastWasIdentifier = false;
        this.cursor++;
        if (isStatementNotManuallyTerminated()) {
            this.splitAccumulator.add(new EndOfStatement(this.pCtx));
        }
        int i6 = i2 - i;
        int i7 = i4 - i3;
        int i8 = i7 < 0 ? 0 : i7;
        if (i5 == 2048) {
            return new IfNode(this.expr, i, i6, i3, i8, this.fields, this.pCtx);
        }
        if (i5 != 4096) {
            if (i5 == 16384) {
                return new UntilNode(this.expr, i, i6, i3, i8, this.fields, this.pCtx);
            }
            if (i5 == 32768) {
                return new WhileNode(this.expr, i, i6, i3, i8, this.fields, this.pCtx);
            }
            if (i5 == 65536) {
                return new DoNode(this.expr, i, i6, i3, i8, this.fields, this.pCtx);
            }
            if (i5 == 131072) {
                return new DoUntilNode(this.expr, i, i6, i3, i8, this.pCtx);
            }
            if (i5 != 262144) {
                return new WithNode(this.expr, i, i6, i3, i8, this.fields, this.pCtx);
            }
            for (int i9 = i; i9 < i2; i9++) {
                char[] cArr = this.expr;
                char c2 = cArr[i9];
                if (c2 == ';') {
                    return new ForNode(cArr, i, i6, i3, i8, this.fields, this.pCtx);
                }
                if (c2 == ':') {
                    break;
                }
            }
        }
        return new ForEachNode(this.expr, i, i6, i3, i8, this.fields, this.pCtx);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ASTNode captureCodeBlock(int i) {
        ASTNode aSTNode_captureBlock = null;
        if (i != 2048) {
            if (i == 65536) {
                skipWhitespace();
                return _captureBlock(null, this.expr, false, i);
            }
            captureToNextTokenJunction();
            skipWhitespace();
            return _captureBlock(null, this.expr, true, i);
        }
        boolean z = true;
        ASTNode aSTNode = null;
        do {
            if (aSTNode_captureBlock != null) {
                captureToNextTokenJunction();
                skipWhitespace();
                char[] cArr = this.expr;
                int i2 = this.cursor;
                char c2 = cArr[i2];
                if (c2 == '{' || c2 != 'i') {
                    z = false;
                } else {
                    int i3 = i2 + 1;
                    this.cursor = i3;
                    if (cArr[i3] == 'f') {
                        int iIncNextNonBlank = incNextNonBlank();
                        this.cursor = iIncNextNonBlank;
                        if (cArr[iIncNextNonBlank] == '(') {
                            z = true;
                        }
                    }
                }
            }
            aSTNode_captureBlock = _captureBlock(aSTNode_captureBlock, this.expr, z, i);
            if (((IfNode) aSTNode_captureBlock).getElseBlock() != null) {
                this.cursor++;
                return aSTNode;
            }
            if (aSTNode == null) {
                aSTNode = aSTNode_captureBlock;
            }
            int i4 = this.cursor;
            if (i4 != this.end && this.expr[i4] != ';') {
                this.cursor = i4 + 1;
            }
        } while (ifThenElseBlockContinues());
        return aSTNode;
    }

    private ASTNode _captureBlock(ASTNode aSTNode, char[] cArr, boolean z, int i) {
        int iBalancedCaptureWithLineAccounting;
        int i2;
        int iBalancedCaptureWithLineAccounting2;
        skipWhitespace();
        if (i == 48) {
            if (ProtoParser.isUnresolvedWaiting()) {
                ProtoParser.checkForPossibleUnresolvedViolations(cArr, this.cursor, this.pCtx);
            }
            int i3 = this.cursor;
            captureToNextTokenJunction();
            String strCreateStringTrimmed = ParseTools.createStringTrimmed(cArr, i3, this.cursor - i3);
            if (ParseTools.isReservedWord(strCreateStringTrimmed) || ParseTools.isNotValidNameorLabel(strCreateStringTrimmed)) {
                Sign$$ExternalSyntheticBUOutline0.m964m("illegal prototype name or use of reserved word", cArr, this.cursor);
                return null;
            }
            int iNextNonBlank = nextNonBlank();
            this.cursor = iNextNonBlank;
            if (cArr[iNextNonBlank] != '{') {
                Sign$$ExternalSyntheticBUOutline0.m964m("expected '{' but found: " + cArr[this.cursor], cArr, this.cursor);
                return null;
            }
            int i4 = iNextNonBlank + 1;
            this.cursor = ParseTools.balancedCaptureWithLineAccounting(cArr, i4, this.end, '{', this.pCtx);
            ProtoParser protoParser = new ProtoParser(cArr, i4, this.cursor, strCreateStringTrimmed, this.pCtx, this.fields, this.splitAccumulator);
            Proto proto = protoParser.parse();
            this.pCtx.addImport(proto);
            proto.setCursorPosition(i4, this.cursor);
            this.cursor = protoParser.getCursor();
            ProtoParser.notifyForLateResolution(proto);
            this.lastNode = proto;
            return proto;
        }
        if (i == 100) {
            int i5 = this.cursor;
            captureToNextTokenJunction();
            int i6 = this.cursor;
            if (i6 == this.end) {
                Sign$$ExternalSyntheticBUOutline0.m964m("unexpected end of statement", cArr, i5);
                return null;
            }
            String strCreateStringTrimmed2 = ParseTools.createStringTrimmed(cArr, i5, i6 - i5);
            if (ParseTools.isReservedWord(strCreateStringTrimmed2) || ParseTools.isNotValidNameorLabel(strCreateStringTrimmed2)) {
                Sign$$ExternalSyntheticBUOutline0.m964m("illegal function name or use of reserved word", cArr, this.cursor);
                return null;
            }
            int i7 = this.cursor;
            FunctionParser functionParser = new FunctionParser(strCreateStringTrimmed2, i7, this.end - i7, cArr, this.fields, this.pCtx, this.splitAccumulator);
            Function function = functionParser.parse();
            this.cursor = functionParser.getCursor();
            this.lastNode = function;
            return function;
        }
        if (i == 101) {
            int iNextNonBlank2 = nextNonBlank();
            this.cursor = iNextNonBlank2;
            if (cArr[iNextNonBlank2] != '{') {
                Sign$$ExternalSyntheticBUOutline0.m964m("expected '{' but found: " + cArr[this.cursor], cArr, this.cursor);
                return null;
            }
            int i8 = iNextNonBlank2 + 1;
            this.cursor = ParseTools.balancedCaptureWithLineAccounting(cArr, i8, this.end, '{', this.pCtx);
            Stacklang stacklang = new Stacklang(cArr, i8, this.cursor - i8, this.fields, this.pCtx);
            this.cursor++;
            this.lastNode = stacklang;
            return stacklang;
        }
        if (z) {
            int i9 = this.cursor;
            if (cArr[i9] != '(') {
                Sign$$ExternalSyntheticBUOutline0.m964m("expected '(' but encountered: " + cArr[this.cursor], cArr, this.cursor);
                return null;
            }
            iBalancedCaptureWithLineAccounting = ParseTools.balancedCaptureWithLineAccounting(cArr, i9, this.end, '(', this.pCtx);
            i2 = i9 + 1;
            this.cursor = iBalancedCaptureWithLineAccounting + 1;
        } else {
            iBalancedCaptureWithLineAccounting = 0;
            i2 = 0;
        }
        skipWhitespace();
        int i10 = this.cursor;
        int i11 = this.end;
        if (i10 >= i11) {
            Sign$$ExternalSyntheticBUOutline0.m964m("unexpected end of statement", cArr, i11);
            return null;
        }
        if (cArr[i10] == '{') {
            iBalancedCaptureWithLineAccounting2 = ParseTools.balancedCaptureWithLineAccounting(cArr, i10, i11, '{', this.pCtx);
            this.cursor = iBalancedCaptureWithLineAccounting2;
        } else {
            i10--;
            captureToEOSorEOL();
            iBalancedCaptureWithLineAccounting2 = this.cursor + 1;
        }
        if (i == 2048) {
            IfNode ifNode = (IfNode) aSTNode;
            if (aSTNode == null) {
                return createBlockToken(i2, iBalancedCaptureWithLineAccounting, i10 + 1, iBalancedCaptureWithLineAccounting2, i);
            }
            if (!z) {
                int iTrimRight = trimRight(i10 + 1);
                this.st = iTrimRight;
                return ifNode.setElseBlock(cArr, iTrimRight, trimLeft(iBalancedCaptureWithLineAccounting2) - this.st, this.pCtx);
            }
            return ifNode.setElseIf((IfNode) createBlockToken(i2, iBalancedCaptureWithLineAccounting, trimRight(i10 + 1), trimLeft(iBalancedCaptureWithLineAccounting2), i));
        }
        if (i == 65536) {
            this.cursor++;
            skipWhitespace();
            this.st = this.cursor;
            captureToNextTokenJunction();
            int i12 = this.st;
            String str = new String(cArr, i12, this.cursor - i12);
            if ("while".equals(str)) {
                skipWhitespace();
                int i13 = this.cursor;
                int iBalancedCaptureWithLineAccounting3 = ParseTools.balancedCaptureWithLineAccounting(cArr, i13, this.end, '(', this.pCtx);
                this.cursor = iBalancedCaptureWithLineAccounting3;
                return createBlockToken(i13 + 1, iBalancedCaptureWithLineAccounting3, trimRight(i10 + 1), trimLeft(iBalancedCaptureWithLineAccounting2), i);
            }
            if ("until".equals(str)) {
                skipWhitespace();
                int i14 = this.cursor;
                int iBalancedCaptureWithLineAccounting4 = ParseTools.balancedCaptureWithLineAccounting(cArr, i14, this.end, '(', this.pCtx);
                this.cursor = iBalancedCaptureWithLineAccounting4;
                return createBlockToken(i14 + 1, iBalancedCaptureWithLineAccounting4, trimRight(i10 + 1), trimLeft(iBalancedCaptureWithLineAccounting2), 131072);
            }
            Sign$$ExternalSyntheticBUOutline0.m964m("expected 'while' or 'until' but encountered: ".concat(str), cArr, this.cursor);
            return null;
        }
        return createBlockToken(i2, iBalancedCaptureWithLineAccounting, trimRight(i10 + 1), trimLeft(iBalancedCaptureWithLineAccounting2), i);
    }

    public boolean ifThenElseBlockContinues() {
        int i = this.cursor;
        if (i + 4 < this.end) {
            if (this.expr[i] != ';') {
                this.cursor = i - 1;
            }
            skipWhitespace();
            int i2 = this.cursor;
            if (i2 + 4 < this.end) {
                char[] cArr = this.expr;
                if (cArr[i2] == 'e' && cArr[i2 + 1] == 'l' && cArr[i2 + 2] == 's' && cArr[i2 + 3] == 'e' && (ParseTools.isWhitespace(cArr[i2 + 4]) || this.expr[this.cursor + 4] == '{')) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean tokenContinues() {
        char c2;
        int i = this.cursor;
        if (i == this.end) {
            return false;
        }
        char c3 = this.expr[i];
        if (c3 == '.' || c3 == '[') {
            return true;
        }
        if (ParseTools.isWhitespace(c3)) {
            int i2 = this.cursor;
            skipWhitespace();
            int i3 = this.cursor;
            if (i3 != this.end && ((c2 = this.expr[i3]) == '.' || c2 == '[')) {
                return true;
            }
            this.cursor = i2;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void expectEOS() {
        char c2;
        skipWhitespace();
        int i = this.cursor;
        if (i == this.end || (c2 = this.expr[i]) == ';') {
            return;
        }
        if (c2 != '!') {
            if (c2 != '&') {
                if (c2 == '-' || c2 == '/') {
                    if (lookAhead() == '=') {
                        return;
                    }
                } else if (c2 != '|') {
                    if (c2 != '*' && c2 != '+') {
                        switch (c2) {
                            case '<':
                            case '>':
                                return;
                            case '=':
                                char cLookAhead = lookAhead();
                                if (cLookAhead == '*' || cLookAhead == '+' || cLookAhead == '-' || cLookAhead == '=') {
                                    return;
                                }
                                break;
                        }
                    }
                } else if (lookAhead() == '|') {
                    return;
                }
            } else if (lookAhead() == '&') {
                return;
            }
        } else if (lookAhead() == '=') {
            return;
        }
        StringBuilder sb = new StringBuilder("expected end of statement but encountered: ");
        int i2 = this.cursor;
        sb.append(i2 == this.end ? "<end of stream>" : Character.valueOf(this.expr[i2]));
        throw new CompileException(sb.toString(), this.expr, this.cursor);
    }

    public boolean isNextIdentifier() {
        while (true) {
            int i = this.cursor;
            if (i == this.end || !ParseTools.isWhitespace(this.expr[i])) {
                break;
            }
            this.cursor++;
        }
        int i2 = this.cursor;
        return i2 != this.end && ParseTools.isIdentifierPart(this.expr[i2]);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void captureToEOS() {
        while (true) {
            int i = this.cursor;
            int i2 = this.end;
            if (i == i2) {
                return;
            }
            char[] cArr = this.expr;
            char c2 = cArr[i];
            if (c2 == '\"') {
                this.cursor = ParseTools.captureStringLiteral(c2, cArr, i, i2);
            } else {
                if (c2 == ',' || c2 == ';') {
                    return;
                }
                if (c2 == '[' || c2 == '{') {
                    int iBalancedCaptureWithLineAccounting = ParseTools.balancedCaptureWithLineAccounting(cArr, i, i2, c2, this.pCtx);
                    this.cursor = iBalancedCaptureWithLineAccounting;
                    if (iBalancedCaptureWithLineAccounting >= this.end) {
                        return;
                    }
                } else {
                    if (c2 == '}') {
                        return;
                    }
                    if (c2 != '\'') {
                        if (c2 != '(') {
                            continue;
                        }
                    }
                }
            }
            this.cursor++;
        }
    }

    public void captureToEOSorEOL() {
        char c2;
        while (true) {
            int i = this.cursor;
            if (i == this.end || (c2 = this.expr[i]) == '\n' || c2 == '\r' || c2 == ';') {
                return;
            } else {
                this.cursor = i + 1;
            }
        }
    }

    public void captureIdentifier() {
        char c2;
        int i = this.cursor;
        if (i == this.end) {
            Sign$$ExternalSyntheticBUOutline0.m964m("unexpected end of statement: EOF", this.expr, i);
            return;
        }
        boolean z = false;
        while (true) {
            int i2 = this.cursor;
            if (i2 == this.end || (c2 = this.expr[i2]) == ';') {
                return;
            }
            if (!ParseTools.isIdentifierPart(c2)) {
                if (z) {
                    return;
                }
                Sign$$ExternalSyntheticBUOutline0.m964m("unexpected symbol (was expecting an identifier): " + this.expr[this.cursor], this.expr, this.cursor);
                return;
            }
            this.cursor++;
            z = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void captureToEOT() {
        int i;
        skipWhitespace();
        do {
            char[] cArr = this.expr;
            int i2 = this.cursor;
            char c2 = cArr[i2];
            if (c2 == '\"') {
                this.cursor = ParseTools.captureStringLiteral(Typography.quote, cArr, i2, this.end);
            } else {
                if (c2 == ';' || c2 == '=') {
                    return;
                }
                if (c2 == '[') {
                    int iBalancedCaptureWithLineAccounting = ParseTools.balancedCaptureWithLineAccounting(cArr, i2, this.end, c2, this.pCtx);
                    this.cursor = iBalancedCaptureWithLineAccounting;
                    if (iBalancedCaptureWithLineAccounting == -1) {
                        Sign$$ExternalSyntheticBUOutline0.m964m("unbalanced braces", this.expr, iBalancedCaptureWithLineAccounting);
                        return;
                    }
                } else if (c2 == '.') {
                    this.cursor = i2 + 1;
                    skipWhitespace();
                    this.cursor--;
                } else {
                    if (c2 == '/') {
                        return;
                    }
                    if (c2 != '{') {
                        if (c2 != '|') {
                            switch (c2) {
                                case '%':
                                case '&':
                                    return;
                                case '\'':
                                    this.cursor = ParseTools.captureStringLiteral('\'', cArr, i2, this.end);
                                    break;
                                case '(':
                                    break;
                                default:
                                    switch (c2) {
                                        case '*':
                                        case '+':
                                        case ',':
                                            return;
                                        default:
                                            if (ParseTools.isWhitespace(c2)) {
                                                skipWhitespace();
                                                int i3 = this.cursor;
                                                int i4 = this.end;
                                                if (i3 < i4 && this.expr[i3] == '.') {
                                                    if (i3 != i4) {
                                                        this.cursor = i3 + 1;
                                                    }
                                                    skipWhitespace();
                                                } else {
                                                    trimWhitespace();
                                                    return;
                                                }
                                            }
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            return;
                        }
                    }
                }
            }
            i = this.cursor + 1;
            this.cursor = i;
        } while (i < this.end);
    }

    public boolean lastNonWhite(char c2) {
        int i = this.cursor - 1;
        while (ParseTools.isWhitespace(this.expr[i])) {
            i--;
        }
        return c2 == this.expr[i];
    }

    public int trimLeft(int i) {
        int i2 = this.end;
        if (i > i2) {
            i = i2;
        }
        while (i > 0 && i >= this.st) {
            int i3 = i - 1;
            if (!ParseTools.isWhitespace(this.expr[i3]) && this.expr[i3] != ';') {
                break;
            }
            i--;
        }
        return i;
    }

    public int trimRight(int i) {
        while (i != this.end && ParseTools.isWhitespace(this.expr[i])) {
            i++;
        }
        return i;
    }

    public void skipWhitespace() {
        int i;
        int i2;
        int i3;
        while (true) {
            int i4 = this.cursor;
            int i5 = this.end;
            if (i4 == i5) {
                return;
            }
            char[] cArr = this.expr;
            char c2 = cArr[i4];
            if (c2 == '\n') {
                this.line++;
                this.lastLineStart = i4;
            } else if (c2 != '\r') {
                if (c2 == '/' && i4 + 1 != i5) {
                    char c3 = cArr[i4 + 1];
                    if (c3 == '*') {
                        int i6 = i5 - 1;
                        this.cursor = i4 + 1;
                        while (true) {
                            i3 = this.cursor;
                            if (i3 == i6) {
                                break;
                            }
                            char[] cArr2 = this.expr;
                            if (cArr2[i3] == '*' && cArr2[i3 + 1] == '/') {
                                break;
                            } else {
                                this.cursor = i3 + 1;
                            }
                        }
                        if (i3 != i6) {
                            this.cursor = i3 + 2;
                        }
                        while (i4 < this.cursor) {
                            this.expr[i4] = ' ';
                            i4++;
                        }
                    } else {
                        if (c3 != '/') {
                            return;
                        }
                        this.cursor = i4 + 1;
                        cArr[i4] = ' ';
                        while (true) {
                            i = this.cursor;
                            i2 = this.end;
                            if (i == i2) {
                                break;
                            }
                            char[] cArr3 = this.expr;
                            if (cArr3[i] == '\n') {
                                break;
                            }
                            this.cursor = i + 1;
                            cArr3[i] = ' ';
                        }
                        if (i != i2) {
                            this.cursor = i + 1;
                        }
                        this.line++;
                        this.lastLineStart = this.cursor;
                    }
                } else if (!ParseTools.isWhitespace(c2)) {
                    return;
                } else {
                    this.cursor++;
                }
            }
            this.cursor = i4 + 1;
        }
    }

    public void captureToNextTokenJunction() {
        char[] cArr;
        char c2;
        while (true) {
            int i = this.cursor;
            int i2 = this.end;
            if (i == i2 || (c2 = (cArr = this.expr)[i]) == '(') {
                return;
            }
            if (c2 != '/') {
                if (c2 != '[') {
                    if (c2 == '{' || ParseTools.isWhitespace(c2)) {
                        return;
                    } else {
                        this.cursor++;
                    }
                }
            } else if (cArr[i + 1] == '*') {
                return;
            }
            this.cursor = ParseTools.balancedCaptureWithLineAccounting(cArr, i, i2, '[', this.pCtx) + 1;
        }
    }

    public void trimWhitespace() {
        while (true) {
            int i = this.cursor;
            if (i == 0 || !ParseTools.isWhitespace(this.expr[i - 1])) {
                return;
            } else {
                this.cursor--;
            }
        }
    }

    public void setExpression(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        WeakHashMap<String, char[]> weakHashMap = EX_PRECACHE;
        synchronized (weakHashMap) {
            try {
                char[] cArr = weakHashMap.get(str);
                this.expr = cArr;
                if (cArr == null) {
                    int i = 0;
                    while (i < this.length && ParseTools.isWhitespace(str.charAt(i))) {
                        i++;
                    }
                    int length = str.length() - 1;
                    while (length > 0 && ParseTools.isWhitespace(str.charAt(length))) {
                        length--;
                    }
                    char[] charArray = str.substring(i, length + 1).toCharArray();
                    this.expr = charArray;
                    int length2 = charArray.length;
                    this.length = length2;
                    this.end = length2;
                    EX_PRECACHE.put(str, charArray);
                } else {
                    int length3 = cArr.length;
                    this.length = length3;
                    this.end = length3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setExpression(char[] cArr) {
        this.expr = cArr;
        int length = cArr.length;
        this.length = length;
        this.end = length;
        while (true) {
            int i = this.start;
            if (i >= this.length || !ParseTools.isWhitespace(this.expr[i])) {
                break;
            } else {
                this.start++;
            }
        }
        while (true) {
            int i2 = this.length;
            if (i2 == 0 || !ParseTools.isWhitespace(this.expr[i2 - 1])) {
                return;
            } else {
                this.length--;
            }
        }
    }

    public char lookToLast() {
        int i = this.cursor;
        if (i == this.start) {
            return (char) 0;
        }
        while (i != this.start) {
            i--;
            if (!ParseTools.isWhitespace(this.expr[i])) {
                break;
            }
        }
        return this.expr[i];
    }

    public char lookBehind() {
        int i = this.cursor;
        if (i == this.start) {
            return (char) 0;
        }
        return this.expr[i - 1];
    }

    public char lookAhead() {
        int i = this.cursor;
        if (i + 1 != this.end) {
            return this.expr[i + 1];
        }
        return (char) 0;
    }

    public char lookAhead(int i) {
        int i2 = this.cursor;
        if (i2 + i >= this.end) {
            return (char) 0;
        }
        return this.expr[i2 + i];
    }

    public boolean isNextIdentifierOrLiteral() {
        int i = this.cursor;
        if (i == this.end) {
            return false;
        }
        while (i != this.end && ParseTools.isWhitespace(this.expr[i])) {
            i++;
        }
        if (i == this.end) {
            return false;
        }
        char c2 = this.expr[i];
        return ParseTools.isIdentifierPart(c2) || ParseTools.isDigit(c2) || c2 == '\'' || c2 == '\"';
    }

    public int incNextNonBlank() {
        this.cursor++;
        return nextNonBlank();
    }

    public int nextNonBlank() {
        int i = this.cursor;
        if (i + 1 >= this.end) {
            Sign$$ExternalSyntheticBUOutline0.m964m("unexpected end of statement", this.expr, this.st);
            return 0;
        }
        while (i != this.end && ParseTools.isWhitespace(this.expr[i])) {
            i++;
        }
        return i;
    }

    public void expectNextChar_IW(char c2) {
        nextNonBlank();
        int i = this.cursor;
        int i2 = this.end;
        char[] cArr = this.expr;
        if (i == i2) {
            Sign$$ExternalSyntheticBUOutline0.m964m("unexpected end of statement", cArr, this.st);
            return;
        }
        if (cArr[i] == c2) {
            return;
        }
        Sign$$ExternalSyntheticBUOutline0.m964m("unexpected character ('" + this.expr[this.cursor] + "'); was expecting: " + c2, this.expr, this.st);
    }

    public boolean isStatementNotManuallyTerminated() {
        int i = this.cursor;
        if (i >= this.end) {
            return false;
        }
        while (i != this.end && ParseTools.isWhitespace(this.expr[i])) {
            i++;
        }
        return i == this.end || this.expr[i] != ';';
    }

    public void addFatalError(String str) {
        this.pCtx.addError(new ErrorDetail(this.expr, this.st, true, str));
    }

    public void addFatalError(String str, int i) {
        this.pCtx.addError(new ErrorDetail(this.expr, i, true, str));
    }

    public static void setLanguageLevel(int i) {
        OPERATORS.clear();
        OPERATORS.putAll(loadLanguageFeaturesByLevel(i));
    }

    public static HashMap<String, Integer> loadLanguageFeaturesByLevel(int i) {
        HashMap<String, Integer> map = new HashMap<>();
        switch (i) {
            case 6:
                map.put("proto", 48);
            case 5:
                map.put("if", 39);
                map.put("else", 40);
                map.put("?", 29);
                map.put(PluginsConstants.Settings.TYPE_SWITCH, 44);
                map.put("function", 100);
                map.put("def", 100);
                map.put("stacklang", 101);
            case 4:
                map.put("=", 31);
                map.put("var", 98);
                map.put("+=", 52);
                map.put("-=", 53);
                map.put("/=", 55);
                map.put("%=", 56);
            case 3:
                map.put("foreach", 38);
                map.put("while", 41);
                map.put("until", 42);
                map.put("for", 43);
                map.put("do", 45);
            case 2:
                map.put("return", 99);
                map.put(";", 37);
            case 1:
                map.put("+", 0);
                map.put("-", 1);
                map.put("*", 2);
                map.put("**", 5);
                map.put("/", 3);
                map.put("%", 4);
                map.put("==", 18);
                map.put("!=", 19);
                map.put(">", 15);
                map.put(">=", 17);
                map.put("<", 14);
                map.put("<=", 16);
                map.put("&&", 21);
                map.put("and", 21);
                map.put("||", 22);
                map.put(PluginsConstants.HookFilterTypes.OR, 23);
                map.put("~=", 24);
                map.put("instanceof", 25);
                map.put("is", 25);
                map.put("contains", 26);
                map.put("soundslike", 27);
                map.put("strsim", 28);
                map.put("convertable_to", 36);
                map.put("isdef", 47);
                map.put("#", 20);
                map.put("&", 6);
                map.put("|", 7);
                map.put("^", 8);
                map.put("<<", 10);
                map.put("<<<", 12);
                map.put(">>", 9);
                map.put(">>>", 11);
                map.put("new", 34);
                map.put("in", 35);
                map.put("with", 46);
                map.put("assert", 97);
                map.put("import", 96);
                map.put("import_static", 95);
                map.put("++", 50);
                map.put("--", 51);
            case 0:
                map.put(":", 30);
                break;
        }
        return map;
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x01a7, code lost:
    
        if (r9.dStack.size() <= 1) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a9, code lost:
    
        dreduce();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01b2, code lost:
    
        if (r9.stk.isReduceable() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01b4, code lost:
    
        r9.stk.xswap();
     */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int arithmeticFunctionReduction(int i) {
        ASTNode aSTNodeNextToken = nextToken();
        if (aSTNodeNextToken != null) {
            Integer operator = aSTNodeNextToken.getOperator();
            int iIntValue = operator.intValue();
            if (isArithmeticOperator(iIntValue)) {
                int[] iArr = Operator.PTABLE;
                if (iArr[iIntValue] > iArr[i]) {
                    this.stk.xswap();
                    ASTNode aSTNodeNextToken2 = nextToken();
                    if (this.compileMode && !aSTNodeNextToken2.isLiteral()) {
                        this.splitAccumulator.push(aSTNodeNextToken2, new OperatorNode(operator, this.expr, this.st, this.pCtx));
                        return -2;
                    }
                    ExecutionStack executionStack = this.dStack;
                    Object obj = this.ctx;
                    executionStack.push(operator, aSTNodeNextToken2.getReducedValue(obj, obj, this.variableFactory));
                    int iIntValue2 = iIntValue;
                    while (true) {
                        ASTNode aSTNodeNextToken3 = nextToken();
                        if (aSTNodeNextToken3 != null) {
                            Integer operator2 = aSTNodeNextToken3.getOperator();
                            int iIntValue3 = operator2.intValue();
                            if (iIntValue3 != -1 && iIntValue3 != 37) {
                                int[] iArr2 = Operator.PTABLE;
                                if (iArr2[iIntValue3] > iArr2[iIntValue]) {
                                    if (this.dStack.isReduceable()) {
                                        this.stk.copyx2(this.dStack);
                                    }
                                    ASTNode aSTNodeNextToken4 = nextToken();
                                    if (this.compileMode && !aSTNodeNextToken4.isLiteral()) {
                                        this.splitAccumulator.push(aSTNodeNextToken4, new OperatorNode(operator2, this.expr, this.st, this.pCtx));
                                        return -2;
                                    }
                                    ExecutionStack executionStack2 = this.dStack;
                                    Object obj2 = this.ctx;
                                    executionStack2.push(operator2, aSTNodeNextToken4.getReducedValue(obj2, obj2, this.variableFactory));
                                    iIntValue2 = iIntValue3;
                                    iIntValue = iIntValue2;
                                }
                            }
                            iIntValue2 = iIntValue3;
                            if (aSTNodeNextToken3 == null) {
                                break;
                            }
                            break;
                        }
                        if (aSTNodeNextToken3 == null || iIntValue2 == -1 || iIntValue2 == 37) {
                            break;
                        }
                        int[] iArr3 = Operator.PTABLE;
                        if (iArr3[iIntValue2] == iArr3[iIntValue]) {
                            if (this.dStack.isEmpty()) {
                                while (this.stk.isReduceable()) {
                                    this.stk.xswap_op();
                                }
                            } else {
                                dreduce();
                            }
                            ASTNode aSTNodeNextToken5 = nextToken();
                            if (this.compileMode && !aSTNodeNextToken5.isLiteral()) {
                                this.splitAccumulator.push(aSTNodeNextToken5, new OperatorNode(Integer.valueOf(iIntValue2), this.expr, this.st, this.pCtx));
                                return -2;
                            }
                            ExecutionStack executionStack3 = this.dStack;
                            Integer numValueOf = Integer.valueOf(iIntValue2);
                            Object obj3 = this.ctx;
                            executionStack3.push(numValueOf, aSTNodeNextToken5.getReducedValue(obj3, obj3, this.variableFactory));
                            iIntValue = iIntValue2;
                        } else {
                            while (this.dStack.size() > 1) {
                                dreduce();
                            }
                            Integer operator3 = aSTNodeNextToken3.getOperator();
                            iIntValue = operator3.intValue();
                            while (this.stk.size() != 1 && (this.stk.peek2() instanceof Integer)) {
                                iIntValue2 = ((Integer) this.stk.peek2()).intValue();
                                int[] iArr4 = Operator.PTABLE;
                                if (iIntValue2 >= iArr4.length || iArr4[iIntValue2] < iArr4[iIntValue]) {
                                    break;
                                }
                                this.stk.xswap_op();
                            }
                            ASTNode aSTNodeNextToken6 = nextToken();
                            if (aSTNodeNextToken6 == null) {
                                continue;
                            } else {
                                if (iIntValue == 21) {
                                    if (!this.stk.peekBoolean().booleanValue()) {
                                        return -1;
                                    }
                                    this.splitAccumulator.add(aSTNodeNextToken6);
                                    return 21;
                                }
                                if (iIntValue == 22) {
                                    if (this.stk.peekBoolean().booleanValue()) {
                                        return -1;
                                    }
                                    this.splitAccumulator.add(aSTNodeNextToken6);
                                    return 22;
                                }
                                if (this.compileMode && !aSTNodeNextToken6.isLiteral()) {
                                    this.stk.push(operator3, aSTNodeNextToken6);
                                    return -3;
                                }
                                ExecutionStack executionStack4 = this.stk;
                                Object obj4 = this.ctx;
                                executionStack4.push(operator3, aSTNodeNextToken6.getReducedValue(obj4, obj4, this.variableFactory));
                            }
                        }
                    }
                } else {
                    if (!aSTNodeNextToken.isOperator()) {
                        Sign$$ExternalSyntheticBUOutline0.m964m("unexpected token: " + aSTNodeNextToken.getName(), this.expr, this.st);
                        return 0;
                    }
                    reduce();
                    this.splitAccumulator.push(aSTNodeNextToken);
                }
            }
        }
        if (this.stk.isReduceable()) {
            while (true) {
                reduce();
                if (!this.stk.isReduceable()) {
                    break;
                }
                this.stk.xswap();
            }
        }
        return 0;
    }

    private void dreduce() {
        this.stk.copy2(this.dStack);
        this.stk.op();
    }

    public void reduce() {
        try {
            int iIntValue = ((Integer) this.stk.pop()).intValue();
            if (iIntValue != 0) {
                boolean z = true;
                if (iIntValue != 1 && iIntValue != 2 && iIntValue != 3 && iIntValue != 4 && iIntValue != 5) {
                    if (iIntValue != 36) {
                        switch (iIntValue) {
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                                break;
                            case 21:
                                Object objPop = this.stk.pop();
                                ExecutionStack executionStack = this.stk;
                                if (!((Boolean) executionStack.pop()).booleanValue() || !((Boolean) objPop).booleanValue()) {
                                    z = false;
                                }
                                executionStack.push(Boolean.valueOf(z));
                                break;
                            case 22:
                                Object objPop2 = this.stk.pop();
                                ExecutionStack executionStack2 = this.stk;
                                if (!((Boolean) executionStack2.pop()).booleanValue() && !((Boolean) objPop2).booleanValue()) {
                                    z = false;
                                }
                                executionStack2.push(Boolean.valueOf(z));
                                break;
                            case 23:
                                Object objPop3 = this.stk.pop();
                                Object objPop4 = this.stk.pop();
                                if (PropertyTools.isEmpty(objPop4) && PropertyTools.isEmpty(objPop3)) {
                                    this.stk.push(null);
                                }
                                this.stk.clear();
                                ExecutionStack executionStack3 = this.stk;
                                if (!PropertyTools.isEmpty(objPop4)) {
                                    objPop3 = objPop4;
                                }
                                executionStack3.push(objPop3);
                                break;
                            case 24:
                                ExecutionStack executionStack4 = this.stk;
                                executionStack4.push(Boolean.valueOf(Pattern.compile(String.valueOf(executionStack4.pop())).matcher(String.valueOf(this.stk.pop())).matches()));
                                break;
                            case 25:
                                ExecutionStack executionStack5 = this.stk;
                                executionStack5.push(Boolean.valueOf(((Class) executionStack5.pop()).isInstance(this.stk.pop())));
                                break;
                            case 26:
                                ExecutionStack executionStack6 = this.stk;
                                executionStack6.push(Boolean.valueOf(ParseTools.containsCheck(executionStack6.peek2(), this.stk.pop2())));
                                break;
                            case 27:
                                ExecutionStack executionStack7 = this.stk;
                                executionStack7.push(Boolean.valueOf(Soundex.soundex(String.valueOf(executionStack7.pop())).equals(Soundex.soundex(String.valueOf(this.stk.pop())))));
                                break;
                            case 28:
                                ExecutionStack executionStack8 = this.stk;
                                executionStack8.push(Float.valueOf(ParseTools.similarity(String.valueOf(executionStack8.pop()), String.valueOf(this.stk.pop()))));
                                break;
                            default:
                                reduceNumeric(iIntValue);
                                break;
                        }
                        return;
                    }
                    ExecutionStack executionStack9 = this.stk;
                    executionStack9.push(Boolean.valueOf(DataConversion.canConvert(executionStack9.peek2().getClass(), (Class) this.stk.pop2())));
                    return;
                }
            }
            this.stk.op(iIntValue);
        } catch (ArithmeticException e) {
            Negation$$ExternalSyntheticBUOutline0.m962m("arithmetic error: " + e.getMessage(), this.expr, this.st, e);
        } catch (ClassCastException e2) {
            Negation$$ExternalSyntheticBUOutline0.m962m("syntax error or incompatable types", this.expr, this.st, e2);
        } catch (Exception e3) {
            Negation$$ExternalSyntheticBUOutline0.m962m("failed to subEval expression", this.expr, this.st, e3);
        }
    }

    private void reduceNumeric(int i) {
        Object objPeek2 = this.stk.peek2();
        Object objPop2 = this.stk.pop2();
        if (objPeek2 instanceof Integer) {
            if (objPop2 instanceof Integer) {
                reduce(((Integer) objPeek2).intValue(), i, ((Integer) objPop2).intValue());
                return;
            } else {
                reduce(((Integer) objPeek2).intValue(), i, ((Long) objPop2).longValue());
                return;
            }
        }
        if (objPop2 instanceof Integer) {
            reduce(((Long) objPeek2).longValue(), i, ((Integer) objPop2).intValue());
        } else {
            reduce(((Long) objPeek2).longValue(), i, ((Long) objPop2).longValue());
        }
    }

    private void reduce(int i, int i2, int i3) {
        switch (i2) {
            case 6:
                this.stk.push(Integer.valueOf(i & i3));
                break;
            case 7:
                this.stk.push(Integer.valueOf(i | i3));
                break;
            case 8:
                this.stk.push(Integer.valueOf(i ^ i3));
                break;
            case 9:
                this.stk.push(Integer.valueOf(i >> i3));
                break;
            case 10:
                this.stk.push(Integer.valueOf(i << i3));
                break;
            case 11:
                this.stk.push(Integer.valueOf(i >>> i3));
                break;
            case 12:
                if (i < 0) {
                    i *= -1;
                }
                this.stk.push(Integer.valueOf(i << i3));
                break;
        }
    }

    private void reduce(int i, int i2, long j) {
        switch (i2) {
            case 6:
                this.stk.push(Long.valueOf(((long) i) & j));
                break;
            case 7:
                this.stk.push(Long.valueOf(((long) i) | j));
                break;
            case 8:
                this.stk.push(Long.valueOf(((long) i) ^ j));
                break;
            case 9:
                this.stk.push(Integer.valueOf(i >> ((int) j)));
                break;
            case 10:
                this.stk.push(Integer.valueOf(i << ((int) j)));
                break;
            case 11:
                this.stk.push(Integer.valueOf(i >>> ((int) j)));
                break;
            case 12:
                if (i < 0) {
                    i *= -1;
                }
                this.stk.push(Integer.valueOf(i << ((int) j)));
                break;
        }
    }

    private void reduce(long j, int i, int i2) {
        switch (i) {
            case 6:
                this.stk.push(Long.valueOf(j & ((long) i2)));
                break;
            case 7:
                this.stk.push(Long.valueOf(j | ((long) i2)));
                break;
            case 8:
                this.stk.push(Long.valueOf(j ^ ((long) i2)));
                break;
            case 9:
                this.stk.push(Long.valueOf(j >> i2));
                break;
            case 10:
                this.stk.push(Long.valueOf(j << i2));
                break;
            case 11:
                this.stk.push(Long.valueOf(j >>> i2));
                break;
            case 12:
                if (j < 0) {
                    j *= -1;
                }
                this.stk.push(Long.valueOf(j << i2));
                break;
        }
    }

    private void reduce(long j, int i, long j2) {
        switch (i) {
            case 6:
                this.stk.push(Long.valueOf(j & j2));
                break;
            case 7:
                this.stk.push(Long.valueOf(j | j2));
                break;
            case 8:
                this.stk.push(Long.valueOf(j ^ j2));
                break;
            case 9:
                this.stk.push(Long.valueOf(j >> ((int) j2)));
                break;
            case 10:
                this.stk.push(Long.valueOf(j << ((int) j2)));
                break;
            case 11:
                this.stk.push(Long.valueOf(j >>> ((int) j2)));
                break;
            case 12:
                if (j < 0) {
                    j *= -1;
                }
                this.stk.push(Long.valueOf(j << ((int) j2)));
                break;
        }
    }

    @Override // org.mvel2.compiler.Parser
    public int getCursor() {
        return this.cursor;
    }

    @Override // org.mvel2.compiler.Parser
    public char[] getExpression() {
        return this.expr;
    }

    private static int asInt(Object obj) {
        return ((Integer) obj).intValue();
    }
}
