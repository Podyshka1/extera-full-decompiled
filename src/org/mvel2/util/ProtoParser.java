package org.mvel2.util;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Queue;
import org.mvel2.ParserContext;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.Negation$$ExternalSyntheticBUOutline0;
import org.mvel2.ast.Proto;
import org.mvel2.ast.Sign$$ExternalSyntheticBUOutline0;
import org.mvel2.compiler.ExecutableStatement;

/* JADX INFO: loaded from: classes5.dex */
public class ProtoParser {
    private static ThreadLocal<Queue<DeferredTypeResolve>> deferred = new ThreadLocal<>();
    private int cursor;
    private String deferredName;
    private int endOffset;
    private char[] expr;
    private boolean interpreted;
    private String name;
    private ParserContext pCtx;
    private String protoName;
    private ExecutionStack splitAccumulator;
    String tk1 = null;
    String tk2 = null;
    private Class type;

    public interface DeferredTypeResolve {
        String getName();

        boolean isWaitingFor(Proto proto);
    }

    public ProtoParser(char[] cArr, int i, int i2, String str, ParserContext parserContext, int i3, ExecutionStack executionStack) {
        this.interpreted = false;
        this.expr = cArr;
        this.cursor = i;
        this.endOffset = i2;
        this.protoName = str;
        this.pCtx = parserContext;
        this.interpreted = (i3 & 16) == 0;
        this.splitAccumulator = executionStack;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Proto parse() {
        Proto proto = new Proto(this.protoName, this.pCtx);
        while (true) {
            int i = this.cursor;
            if (i < this.endOffset) {
                int iSkipWhitespace = ParseTools.skipWhitespace(this.expr, i);
                this.cursor = iSkipWhitespace;
                if (this.tk2 == null) {
                    while (true) {
                        int i2 = this.cursor;
                        if (i2 >= this.endOffset || !ParseTools.isIdentifierPart(this.expr[i2])) {
                            break;
                        }
                        this.cursor++;
                    }
                    int i3 = this.cursor;
                    if (i3 > iSkipWhitespace) {
                        String str = new String(this.expr, iSkipWhitespace, i3 - iSkipWhitespace);
                        this.tk1 = str;
                        if ("def".equals(str) || "function".equals(this.tk1)) {
                            int i4 = this.cursor + 1;
                            this.cursor = i4;
                            int iSkipWhitespace2 = ParseTools.skipWhitespace(this.expr, i4);
                            this.cursor = iSkipWhitespace2;
                            while (true) {
                                int i5 = this.cursor;
                                if (i5 >= this.endOffset || !ParseTools.isIdentifierPart(this.expr[i5])) {
                                    break;
                                }
                                this.cursor++;
                            }
                            int i6 = this.cursor;
                            char[] cArr = this.expr;
                            if (iSkipWhitespace2 == i6) {
                                Sign$$ExternalSyntheticBUOutline0.m1012m("attempt to declare an anonymous function as a prototype member", cArr, iSkipWhitespace2);
                                return null;
                            }
                            FunctionParser functionParser = new FunctionParser(new String(cArr, iSkipWhitespace2, i6 - iSkipWhitespace2), this.cursor, this.endOffset, this.expr, 0, this.pCtx, null);
                            proto.declareReceiver(functionParser.getName(), functionParser.parse());
                            this.cursor = functionParser.getCursor() + 1;
                            this.tk1 = null;
                        }
                    }
                    this.cursor = ParseTools.skipWhitespace(this.expr, this.cursor);
                }
                int i7 = this.cursor;
                if (i7 > this.endOffset) {
                    Sign$$ExternalSyntheticBUOutline0.m1012m("unexpected end of statement in proto declaration: " + this.protoName, this.expr, iSkipWhitespace);
                    return null;
                }
                char[] cArr2 = this.expr;
                char c2 = cArr2[i7];
                if (c2 == ';') {
                    this.cursor = i7 + 1;
                    calculateDecl();
                    if (this.interpreted && this.type == DeferredTypeResolve.class) {
                        enqueueReceiverForLateResolution(this.deferredName, proto.declareReceiver(this.name, Proto.ReceiverType.DEFERRED, (ExecutableStatement) null), null);
                    } else {
                        proto.declareReceiver(this.name, this.type, (ExecutableStatement) null);
                    }
                } else if (c2 == '=') {
                    int i8 = i7 + 1;
                    this.cursor = i8;
                    int iSkipWhitespace3 = ParseTools.skipWhitespace(cArr2, i8);
                    this.cursor = iSkipWhitespace3;
                    while (true) {
                        int i9 = this.cursor;
                        int i10 = this.endOffset;
                        if (i9 >= i10) {
                            break;
                        }
                        char[] cArr3 = this.expr;
                        char c3 = cArr3[i9];
                        if (c3 != '\"') {
                            if (c3 == ';') {
                                break;
                            }
                            if (c3 == '[' || c3 == '{' || c3 == '\'' || c3 == '(') {
                            }
                        } else {
                            this.cursor = ParseTools.balancedCaptureWithLineAccounting(cArr3, i9, i10, c3, this.pCtx);
                        }
                        this.cursor++;
                    }
                    calculateDecl();
                    char[] cArr4 = this.expr;
                    int i11 = this.cursor;
                    this.cursor = i11 + 1;
                    String str2 = new String(cArr4, iSkipWhitespace3, i11 - iSkipWhitespace3);
                    if (this.interpreted && this.type == DeferredTypeResolve.class) {
                        enqueueReceiverForLateResolution(this.deferredName, proto.declareReceiver(this.name, Proto.ReceiverType.DEFERRED, (ExecutableStatement) null), str2);
                    } else {
                        proto.declareReceiver(this.name, this.type, (ExecutableStatement) ParseTools.subCompileExpression(str2, this.pCtx));
                    }
                } else {
                    while (true) {
                        int i12 = this.cursor;
                        if (i12 >= this.endOffset || !ParseTools.isIdentifierPart(this.expr[i12])) {
                            break;
                        }
                        this.cursor++;
                    }
                    int i13 = this.cursor;
                    if (i13 > i7) {
                        this.tk2 = new String(this.expr, i7, i13 - i7);
                    }
                }
            } else {
                int i14 = i + 1;
                this.cursor = i14;
                if (this.splitAccumulator != null && ParseTools.isStatementNotManuallyTerminated(this.expr, i14)) {
                    this.splitAccumulator.add(new EndOfStatement(this.pCtx));
                }
                return proto;
            }
        }
    }

    private void calculateDecl() {
        if (this.tk2 != null) {
            try {
                if (this.pCtx.hasProtoImport(this.tk1)) {
                    this.type = Proto.class;
                } else {
                    this.type = ParseTools.findClass(null, this.tk1, this.pCtx);
                }
                this.name = this.tk2;
            } catch (ClassNotFoundException e) {
                if (this.interpreted) {
                    this.type = DeferredTypeResolve.class;
                    this.deferredName = this.tk1;
                    this.name = this.tk2;
                } else {
                    Negation$$ExternalSyntheticBUOutline0.m1010m("could not resolve class: " + this.tk1, this.expr, this.cursor, e);
                    return;
                }
            }
        } else {
            this.type = Object.class;
            this.name = this.tk1;
        }
        this.tk1 = null;
        this.tk2 = null;
    }

    private void enqueueReceiverForLateResolution(final String str, final Proto.Receiver receiver, final String str2) {
        Queue<DeferredTypeResolve> queue = deferred.get();
        if (queue == null) {
            ThreadLocal<Queue<DeferredTypeResolve>> threadLocal = deferred;
            LinkedList linkedList = new LinkedList();
            threadLocal.set(linkedList);
            queue = linkedList;
        }
        queue.add(new DeferredTypeResolve() { // from class: org.mvel2.util.ProtoParser.1
            @Override // org.mvel2.util.ProtoParser.DeferredTypeResolve
            public boolean isWaitingFor(Proto proto) {
                if (!str.equals(proto.getName())) {
                    return false;
                }
                receiver.setType(Proto.ReceiverType.PROPERTY);
                receiver.setInitValue((ExecutableStatement) ParseTools.subCompileExpression(str2, ProtoParser.this.pCtx));
                return true;
            }

            @Override // org.mvel2.util.ProtoParser.DeferredTypeResolve
            public String getName() {
                return str;
            }
        });
    }

    public static void notifyForLateResolution(Proto proto) {
        if (deferred.get() != null) {
            Queue<DeferredTypeResolve> queue = deferred.get();
            HashSet hashSet = new HashSet();
            for (DeferredTypeResolve deferredTypeResolve : queue) {
                if (deferredTypeResolve.isWaitingFor(proto)) {
                    hashSet.add(deferredTypeResolve);
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                queue.remove((DeferredTypeResolve) it.next());
            }
        }
    }

    public int getCursor() {
        return this.cursor;
    }

    public static void checkForPossibleUnresolvedViolations(char[] cArr, int i, ParserContext parserContext) {
        if (isUnresolvedWaiting()) {
            Object obj = ((LinkedHashMap) parserContext.getParserConfiguration().getImports()).values().toArray()[r5.size() - 1];
            if (obj instanceof Proto) {
                Proto proto = (Proto) obj;
                int cursorEnd = proto.getCursorEnd();
                do {
                    i--;
                    if (i <= cursorEnd) {
                        break;
                    }
                } while (ParseTools.isWhitespace(cArr[i]));
                while (i > cursorEnd && ParseTools.isIdentifierPart(cArr[i])) {
                    i--;
                }
                while (i > cursorEnd && (ParseTools.isWhitespace(cArr[i]) || cArr[i] == ';')) {
                    i--;
                }
                if (i == cursorEnd) {
                    return;
                }
                Sign$$ExternalSyntheticBUOutline0.m1012m("unresolved reference (possible illegal forward-reference?): " + getNextUnresolvedWaiting(), cArr, proto.getCursorStart());
            }
        }
    }

    public static boolean isUnresolvedWaiting() {
        return (deferred.get() == null || deferred.get().isEmpty()) ? false : true;
    }

    public static String getNextUnresolvedWaiting() {
        if (deferred.get() == null || deferred.get().isEmpty()) {
            return null;
        }
        return deferred.get().poll().getName();
    }
}
