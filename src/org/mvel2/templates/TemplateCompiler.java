package org.mvel2.templates;

import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.templates.res.CodeNode;
import org.mvel2.templates.res.CommentNode;
import org.mvel2.templates.res.CompiledCodeNode;
import org.mvel2.templates.res.CompiledDeclareNode;
import org.mvel2.templates.res.CompiledEvalNode;
import org.mvel2.templates.res.CompiledExpressionNode;
import org.mvel2.templates.res.CompiledForEachNode;
import org.mvel2.templates.res.CompiledIfNode;
import org.mvel2.templates.res.CompiledIncludeNode;
import org.mvel2.templates.res.CompiledNamedIncludeNode;
import org.mvel2.templates.res.CompiledTerminalExpressionNode;
import org.mvel2.templates.res.DeclareNode;
import org.mvel2.templates.res.EndNode;
import org.mvel2.templates.res.EvalNode;
import org.mvel2.templates.res.ExpressionNode;
import org.mvel2.templates.res.ForEachNode;
import org.mvel2.templates.res.IfNode;
import org.mvel2.templates.res.IncludeNode;
import org.mvel2.templates.res.NamedIncludeNode;
import org.mvel2.templates.res.Node;
import org.mvel2.templates.res.TerminalExpressionNode;
import org.mvel2.templates.res.TerminalNode;
import org.mvel2.templates.res.TextNode;
import org.mvel2.templates.util.TemplateTools;
import org.mvel2.util.ExecutionStack;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class TemplateCompiler {
    private static final Map<String, Integer> OPCODES;
    private boolean codeCache;
    private int colStart;
    private int cursor;
    private Map<String, Class<? extends Node>> customNodes;
    private int lastTextRangeEnding;
    private int length;
    private int line;
    private ParserContext parserContext;
    private int start;
    private char[] template;

    static {
        HashMap map = new HashMap();
        OPCODES = map;
        map.put("if", 1);
        map.put("else", 2);
        map.put("elseif", 2);
        map.put("end", 10);
        map.put("foreach", 3);
        map.put("includeNamed", 51);
        map.put("include", 50);
        map.put("comment", 52);
        map.put("code", 53);
        map.put("eval", 55);
        map.put("declare", 54);
        map.put("stop", 70);
    }

    public CompiledTemplate compile() {
        return new CompiledTemplate(this.template, compileFrom(null, new ExecutionStack()));
    }

    public Node compileFrom(Node node, ExecutionStack executionStack) {
        String str;
        Node ifNode;
        Node terminus;
        this.line = 1;
        Node textNode = node == null ? new TextNode(0, 0) : node;
        Node node2 = textNode;
        while (true) {
            try {
                int i = this.cursor;
                if (i < this.length) {
                    char c2 = this.template[i];
                    if (c2 == '\n') {
                        this.line++;
                        this.colStart = i + 1;
                    } else if (c2 == '$' || c2 == '@') {
                        if (isNext(c2)) {
                            int i2 = this.cursor + 1;
                            this.cursor = i2;
                            this.start = i2;
                            textNode = markTextNode(textNode);
                            textNode.setEnd(textNode.getEnd() + 1);
                            int i3 = this.cursor + 1;
                            this.cursor = i3;
                            this.lastTextRangeEnding = i3;
                            this.start = i3;
                        } else {
                            int iCaptureOrbToken = captureOrbToken();
                            if (iCaptureOrbToken != -1) {
                                this.start = iCaptureOrbToken;
                                Map<String, Integer> map = OPCODES;
                                str = new String(capture());
                                Integer num = map.get(str);
                                int iIntValue = num == null ? 0 : num.intValue();
                                if (iIntValue == 1) {
                                    Node nodeMarkTextNode = markTextNode(textNode);
                                    if (this.codeCache) {
                                        ifNode = new CompiledIfNode(this.start, str, this.template, captureOrbInternal(), this.start, this.parserContext);
                                    } else {
                                        ifNode = new IfNode(this.start, str, this.template, captureOrbInternal(), this.start);
                                    }
                                    nodeMarkTextNode.next = ifNode;
                                    executionStack.push(ifNode);
                                    ifNode.setTerminus(new TerminalNode());
                                } else if (iIntValue != 2) {
                                    if (iIntValue != 3) {
                                        if (iIntValue != 10) {
                                            switch (iIntValue) {
                                                case 50:
                                                    Node nodeMarkTextNode2 = markTextNode(textNode);
                                                    if (this.codeCache) {
                                                        int i4 = this.start;
                                                        char[] cArr = this.template;
                                                        int iCaptureOrbInternal = captureOrbInternal();
                                                        int i5 = this.cursor + 1;
                                                        this.start = i5;
                                                        ifNode = new CompiledIncludeNode(i4, str, cArr, iCaptureOrbInternal, i5, this.parserContext);
                                                    } else {
                                                        int i6 = this.start;
                                                        char[] cArr2 = this.template;
                                                        int iCaptureOrbInternal2 = captureOrbInternal();
                                                        int i7 = this.cursor + 1;
                                                        this.start = i7;
                                                        ifNode = new IncludeNode(i6, str, cArr2, iCaptureOrbInternal2, i7);
                                                    }
                                                    nodeMarkTextNode2.next = ifNode;
                                                    break;
                                                case 51:
                                                    Node nodeMarkTextNode3 = markTextNode(textNode);
                                                    if (this.codeCache) {
                                                        int i8 = this.start;
                                                        char[] cArr3 = this.template;
                                                        int iCaptureOrbInternal3 = captureOrbInternal();
                                                        int i9 = this.cursor + 1;
                                                        this.start = i9;
                                                        ifNode = new CompiledNamedIncludeNode(i8, str, cArr3, iCaptureOrbInternal3, i9, this.parserContext);
                                                    } else {
                                                        int i10 = this.start;
                                                        char[] cArr4 = this.template;
                                                        int iCaptureOrbInternal4 = captureOrbInternal();
                                                        int i11 = this.cursor + 1;
                                                        this.start = i11;
                                                        ifNode = new NamedIncludeNode(i10, str, cArr4, iCaptureOrbInternal4, i11);
                                                    }
                                                    nodeMarkTextNode3.next = ifNode;
                                                    break;
                                                case 52:
                                                    Node nodeMarkTextNode4 = markTextNode(textNode);
                                                    int i12 = this.start;
                                                    char[] cArr5 = this.template;
                                                    int iCaptureOrbInternal5 = captureOrbInternal();
                                                    int i13 = this.cursor + 1;
                                                    this.start = i13;
                                                    ifNode = new CommentNode(i12, str, cArr5, iCaptureOrbInternal5, i13);
                                                    nodeMarkTextNode4.next = ifNode;
                                                    break;
                                                case 53:
                                                    Node nodeMarkTextNode5 = markTextNode(textNode);
                                                    if (this.codeCache) {
                                                        int i14 = this.start;
                                                        char[] cArr6 = this.template;
                                                        int iCaptureOrbInternal6 = captureOrbInternal();
                                                        int i15 = this.cursor + 1;
                                                        this.start = i15;
                                                        ifNode = new CompiledCodeNode(i14, str, cArr6, iCaptureOrbInternal6, i15, this.parserContext);
                                                    } else {
                                                        int i16 = this.start;
                                                        char[] cArr7 = this.template;
                                                        int iCaptureOrbInternal7 = captureOrbInternal();
                                                        int i17 = this.cursor + 1;
                                                        this.start = i17;
                                                        ifNode = new CodeNode(i16, str, cArr7, iCaptureOrbInternal7, i17);
                                                    }
                                                    nodeMarkTextNode5.next = ifNode;
                                                    break;
                                                case 54:
                                                    Node nodeMarkTextNode6 = markTextNode(textNode);
                                                    if (this.codeCache) {
                                                        int i18 = this.start;
                                                        char[] cArr8 = this.template;
                                                        int iCaptureOrbInternal8 = captureOrbInternal();
                                                        int i19 = this.cursor + 1;
                                                        this.start = i19;
                                                        ifNode = new CompiledDeclareNode(i18, str, cArr8, iCaptureOrbInternal8, i19, this.parserContext);
                                                    } else {
                                                        int i20 = this.start;
                                                        char[] cArr9 = this.template;
                                                        int iCaptureOrbInternal9 = captureOrbInternal();
                                                        int i21 = this.cursor + 1;
                                                        this.start = i21;
                                                        ifNode = new DeclareNode(i20, str, cArr9, iCaptureOrbInternal9, i21);
                                                    }
                                                    nodeMarkTextNode6.next = ifNode;
                                                    executionStack.push(ifNode);
                                                    ifNode.setTerminus(new TerminalNode());
                                                    break;
                                                case 55:
                                                    Node nodeMarkTextNode7 = markTextNode(textNode);
                                                    if (this.codeCache) {
                                                        int i22 = this.start;
                                                        char[] cArr10 = this.template;
                                                        int iCaptureOrbInternal10 = captureOrbInternal();
                                                        int i23 = this.cursor + 1;
                                                        this.start = i23;
                                                        ifNode = new CompiledEvalNode(i22, str, cArr10, iCaptureOrbInternal10, i23, this.parserContext);
                                                    } else {
                                                        int i24 = this.start;
                                                        char[] cArr11 = this.template;
                                                        int iCaptureOrbInternal11 = captureOrbInternal();
                                                        int i25 = this.cursor + 1;
                                                        this.start = i25;
                                                        ifNode = new EvalNode(i24, str, cArr11, iCaptureOrbInternal11, i25);
                                                    }
                                                    nodeMarkTextNode7.next = ifNode;
                                                    break;
                                                default:
                                                    if (str.length() == 0) {
                                                        Node nodeMarkTextNode8 = markTextNode(textNode);
                                                        if (this.codeCache) {
                                                            int i26 = this.start;
                                                            char[] cArr12 = this.template;
                                                            int iCaptureOrbInternal12 = captureOrbInternal();
                                                            int i27 = this.cursor + 1;
                                                            this.start = i27;
                                                            ifNode = new CompiledExpressionNode(i26, str, cArr12, iCaptureOrbInternal12, i27, this.parserContext);
                                                        } else {
                                                            int i28 = this.start;
                                                            char[] cArr13 = this.template;
                                                            int iCaptureOrbInternal13 = captureOrbInternal();
                                                            int i29 = this.cursor + 1;
                                                            this.start = i29;
                                                            ifNode = new ExpressionNode(i28, str, cArr13, iCaptureOrbInternal13, i29);
                                                        }
                                                        nodeMarkTextNode8.next = ifNode;
                                                    } else {
                                                        Map<String, Class<? extends Node>> map2 = this.customNodes;
                                                        if (map2 != null && map2.containsKey(str)) {
                                                            Class<? extends Node> cls = this.customNodes.get(str);
                                                            try {
                                                                Node nodeMarkTextNode9 = markTextNode(textNode);
                                                                terminus = cls.newInstance();
                                                                nodeMarkTextNode9.next = terminus;
                                                                terminus.setBegin(this.start);
                                                                terminus.setName(str);
                                                                terminus.setCStart(captureOrbInternal());
                                                                int i30 = this.cursor + 1;
                                                                this.start = i30;
                                                                terminus.setCEnd(i30);
                                                                terminus.setEnd(terminus.getCEnd());
                                                                terminus.setContents(ParseTools.subset(this.template, terminus.getCStart(), (terminus.getCEnd() - terminus.getCStart()) - 1));
                                                                if (terminus.isOpenNode()) {
                                                                    executionStack.push(terminus);
                                                                }
                                                            } catch (IllegalAccessException unused) {
                                                                throw new RuntimeException("unable to instantiate custom node class: " + cls.getName());
                                                            } catch (InstantiationException unused2) {
                                                                throw new RuntimeException("unable to instantiate custom node class: " + cls.getName());
                                                            }
                                                        }
                                                    }
                                                    break;
                                            }
                                        } else {
                                            Node nodeMarkTextNode10 = markTextNode(textNode);
                                            Node node3 = (Node) executionStack.pop();
                                            terminus = node3.getTerminus();
                                            terminus.setCStart(captureOrbInternal());
                                            int i31 = this.start;
                                            this.lastTextRangeEnding = i31;
                                            terminus.setEnd(i31 - 1);
                                            terminus.calculateContents(this.template);
                                            if (node3.demarcate(terminus, this.template)) {
                                                nodeMarkTextNode10.next = terminus;
                                            }
                                        }
                                        textNode = terminus;
                                    } else {
                                        Node nodeMarkTextNode11 = markTextNode(textNode);
                                        ifNode = this.codeCache ? new CompiledForEachNode(this.start, str, this.template, captureOrbInternal(), this.start, this.parserContext) : new ForEachNode(this.start, str, this.template, captureOrbInternal(), this.start);
                                        nodeMarkTextNode11.next = ifNode;
                                        executionStack.push(ifNode);
                                        ifNode.setTerminus(new TerminalNode());
                                    }
                                } else if (!executionStack.isEmpty() && (executionStack.peek() instanceof IfNode)) {
                                    Node nodeMarkTextNode12 = markTextNode(textNode);
                                    IfNode ifNode2 = (IfNode) executionStack.pop();
                                    nodeMarkTextNode12.next = ifNode2.getTerminus();
                                    ifNode2.demarcate(ifNode2.getTerminus(), this.template);
                                    ifNode = this.codeCache ? new CompiledIfNode(this.start, str, this.template, captureOrbInternal(), this.start, this.parserContext) : new IfNode(this.start, str, this.template, captureOrbInternal(), this.start);
                                    ifNode2.next = ifNode;
                                    ifNode.setTerminus(ifNode2.getTerminus());
                                    executionStack.push(ifNode);
                                }
                                textNode = ifNode;
                            }
                        }
                    }
                    this.cursor++;
                } else {
                    if (!executionStack.isEmpty()) {
                        CompileException compileException = new CompileException("unclosed @" + ((Node) executionStack.peek()).getName() + "{} block. expected @end{}", this.template, this.cursor);
                        compileException.setColumn(this.cursor - this.colStart);
                        compileException.setLineNumber(this.line);
                        throw compileException;
                    }
                    int i32 = this.start;
                    char[] cArr14 = this.template;
                    if (i32 < cArr14.length) {
                        TextNode textNode2 = new TextNode(i32, cArr14.length);
                        textNode.next = textNode2;
                        textNode = textNode2;
                    }
                    textNode.next = new EndNode();
                    Node next = node2;
                    while (next.getLength() == 0 && (next = next.getNext()) != null) {
                    }
                    return (next == null || next.getLength() != this.template.length - 1) ? node2 : next instanceof ExpressionNode ? this.codeCache ? new CompiledTerminalExpressionNode(next, this.parserContext) : new TerminalExpressionNode(next) : next;
                }
            } catch (RuntimeException e) {
                CompileException compileException2 = new CompileException(e.getMessage(), this.template, this.cursor, e);
                compileException2.setExpr(this.template);
                if (e instanceof CompileException) {
                    CompileException compileException3 = (CompileException) e;
                    if (compileException3.getCursor() != -1) {
                        compileException2.setCursor(compileException3.getCursor());
                        if (compileException3.getColumn() == -1) {
                            compileException2.setColumn(compileException2.getCursor() - this.colStart);
                        } else {
                            compileException2.setColumn(compileException3.getColumn());
                        }
                    }
                }
                compileException2.setLineNumber(this.line);
                throw compileException2;
            }
        }
        throw new RuntimeException("unknown token type: " + str);
    }

    private boolean isNext(char c2) {
        int i = this.cursor;
        return i != this.length && this.template[i + 1] == c2;
    }

    private int captureOrbToken() {
        int i = this.cursor + 1;
        this.cursor = i;
        while (true) {
            int i2 = this.cursor;
            if (i2 == this.length || !ParseTools.isIdentifierPart(this.template[i2])) {
                break;
            }
            this.cursor++;
        }
        int i3 = this.cursor;
        if (i3 == this.length || this.template[i3] != '{') {
            return -1;
        }
        return i;
    }

    private int captureOrbInternal() {
        try {
            ParserContext parserContext = new ParserContext();
            char[] cArr = this.template;
            int i = this.cursor;
            this.start = i;
            this.cursor = ParseTools.balancedCaptureWithLineAccounting(cArr, i, this.length, '{', parserContext);
            this.line += parserContext.getLineCount();
            int i2 = this.start + 1;
            this.start = this.cursor + 1;
            return i2;
        } catch (CompileException e) {
            e.setLineNumber(this.line);
            e.setColumn((this.cursor - this.colStart) + 1);
            throw e;
        }
    }

    private char[] capture() {
        int i = this.cursor - this.start;
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = this.template[this.start + i2];
        }
        return cArr;
    }

    private Node markTextNode(Node node) {
        int end = node.getEnd();
        int end2 = this.lastTextRangeEnding;
        if (end > end2) {
            end2 = node.getEnd();
        }
        int i = this.start;
        if (end2 >= i) {
            return node;
        }
        int i2 = i - 1;
        this.lastTextRangeEnding = i2;
        TextNode textNode = new TextNode(end2, i2);
        node.next = textNode;
        return textNode;
    }

    public ParserContext getParserContext() {
        return this.parserContext;
    }

    public static CompiledTemplate compileTemplate(String str) {
        return new TemplateCompiler((CharSequence) str, true, ParserContext.create()).compile();
    }

    public static CompiledTemplate compileTemplate(char[] cArr) {
        return new TemplateCompiler(cArr, true, ParserContext.create()).compile();
    }

    public static CompiledTemplate compileTemplate(CharSequence charSequence) {
        return new TemplateCompiler(charSequence, true, ParserContext.create()).compile();
    }

    public static CompiledTemplate compileTemplate(String str, ParserContext parserContext) {
        return new TemplateCompiler((CharSequence) str, true, parserContext).compile();
    }

    public static CompiledTemplate compileTemplate(char[] cArr, ParserContext parserContext) {
        return new TemplateCompiler(cArr, true, parserContext).compile();
    }

    public static CompiledTemplate compileTemplate(CharSequence charSequence, ParserContext parserContext) {
        return new TemplateCompiler(charSequence, true, parserContext).compile();
    }

    public static CompiledTemplate compileTemplate(String str, Map<String, Class<? extends Node>> map) {
        return new TemplateCompiler(str, map, true, ParserContext.create()).compile();
    }

    public static CompiledTemplate compileTemplate(char[] cArr, Map<String, Class<? extends Node>> map) {
        return new TemplateCompiler(cArr, map, true, ParserContext.create()).compile();
    }

    public static CompiledTemplate compileTemplate(CharSequence charSequence, Map<String, Class<? extends Node>> map) {
        return new TemplateCompiler(charSequence, map, true, ParserContext.create()).compile();
    }

    public static CompiledTemplate compileTemplate(String str, Map<String, Class<? extends Node>> map, ParserContext parserContext) {
        return new TemplateCompiler(str, map, true, parserContext).compile();
    }

    public static CompiledTemplate compileTemplate(char[] cArr, Map<String, Class<? extends Node>> map, ParserContext parserContext) {
        return new TemplateCompiler(cArr, map, true, parserContext).compile();
    }

    public static CompiledTemplate compileTemplate(CharSequence charSequence, Map<String, Class<? extends Node>> map, ParserContext parserContext) {
        return new TemplateCompiler(charSequence, map, true, parserContext).compile();
    }

    public static CompiledTemplate compileTemplate(InputStream inputStream) {
        return compileTemplate(inputStream, ParserContext.create());
    }

    public static CompiledTemplate compileTemplate(InputStream inputStream, ParserContext parserContext) {
        return compileTemplate(inputStream, (Map<String, Class<? extends Node>>) null, parserContext);
    }

    public static CompiledTemplate compileTemplate(InputStream inputStream, Map<String, Class<? extends Node>> map) {
        return new TemplateCompiler(TemplateTools.readStream(inputStream), map, true, ParserContext.create()).compile();
    }

    public static CompiledTemplate compileTemplate(InputStream inputStream, Map<String, Class<? extends Node>> map, ParserContext parserContext) {
        return new TemplateCompiler(TemplateTools.readStream(inputStream), map, true, parserContext).compile();
    }

    public static CompiledTemplate compileTemplate(File file) {
        return compileTemplate(file, ParserContext.create());
    }

    public static CompiledTemplate compileTemplate(File file, ParserContext parserContext) {
        return compileTemplate(file, (Map<String, Class<? extends Node>>) null, parserContext);
    }

    public static CompiledTemplate compileTemplate(File file, Map<String, Class<? extends Node>> map) {
        return new TemplateCompiler(TemplateTools.readInFile(file), map, true, ParserContext.create()).compile();
    }

    public static CompiledTemplate compileTemplate(File file, Map<String, Class<? extends Node>> map, ParserContext parserContext) {
        return new TemplateCompiler(TemplateTools.readInFile(file), map, true, parserContext).compile();
    }

    public TemplateCompiler(String str) {
        this.codeCache = false;
        char[] charArray = str.toCharArray();
        this.template = charArray;
        this.length = charArray.length;
    }

    public TemplateCompiler(char[] cArr) {
        this.codeCache = false;
        this.template = cArr;
        this.length = cArr.length;
    }

    public TemplateCompiler(String str, boolean z) {
        this.codeCache = false;
        char[] charArray = str.toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.codeCache = z;
    }

    public TemplateCompiler(char[] cArr, boolean z) {
        this.codeCache = false;
        this.template = cArr;
        this.length = cArr.length;
        this.codeCache = z;
    }

    public TemplateCompiler(char[] cArr, boolean z, ParserContext parserContext) {
        this.codeCache = false;
        this.template = cArr;
        this.length = cArr.length;
        this.codeCache = z;
        this.parserContext = parserContext;
    }

    public TemplateCompiler(CharSequence charSequence) {
        this.codeCache = false;
        char[] charArray = charSequence.toString().toCharArray();
        this.template = charArray;
        this.length = charArray.length;
    }

    public TemplateCompiler(CharSequence charSequence, boolean z) {
        this.codeCache = false;
        char[] charArray = charSequence.toString().toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.codeCache = z;
    }

    public TemplateCompiler(CharSequence charSequence, boolean z, ParserContext parserContext) {
        this.codeCache = false;
        char[] charArray = charSequence.toString().toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.codeCache = z;
        this.parserContext = parserContext;
    }

    public TemplateCompiler(String str, Map<String, Class<? extends Node>> map) {
        this.codeCache = false;
        char[] charArray = str.toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.customNodes = map;
    }

    public TemplateCompiler(char[] cArr, Map<String, Class<? extends Node>> map) {
        this.codeCache = false;
        this.template = cArr;
        this.length = cArr.length;
        this.customNodes = map;
    }

    public TemplateCompiler(CharSequence charSequence, Map<String, Class<? extends Node>> map) {
        this.codeCache = false;
        char[] charArray = charSequence.toString().toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.customNodes = map;
    }

    public TemplateCompiler(String str, Map<String, Class<? extends Node>> map, boolean z) {
        this.codeCache = false;
        char[] charArray = str.toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.customNodes = map;
        this.codeCache = z;
    }

    public TemplateCompiler(char[] cArr, Map<String, Class<? extends Node>> map, boolean z) {
        this.codeCache = false;
        this.template = cArr;
        this.length = cArr.length;
        this.customNodes = map;
        this.codeCache = z;
    }

    public TemplateCompiler(CharSequence charSequence, Map<String, Class<? extends Node>> map, boolean z) {
        this.codeCache = false;
        char[] charArray = charSequence.toString().toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.customNodes = map;
        this.codeCache = z;
    }

    public TemplateCompiler(String str, Map<String, Class<? extends Node>> map, boolean z, ParserContext parserContext) {
        this.codeCache = false;
        char[] charArray = str.toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.customNodes = map;
        this.codeCache = z;
        this.parserContext = parserContext;
    }

    public TemplateCompiler(char[] cArr, Map<String, Class<? extends Node>> map, boolean z, ParserContext parserContext) {
        this.codeCache = false;
        this.template = cArr;
        this.length = cArr.length;
        this.customNodes = map;
        this.codeCache = z;
        this.parserContext = parserContext;
    }

    public TemplateCompiler(CharSequence charSequence, Map<String, Class<? extends Node>> map, boolean z, ParserContext parserContext) {
        this.codeCache = false;
        char[] charArray = charSequence.toString().toCharArray();
        this.template = charArray;
        this.length = charArray.length;
        this.customNodes = map;
        this.codeCache = z;
        this.parserContext = parserContext;
    }
}
