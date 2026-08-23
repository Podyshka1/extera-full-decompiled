package org.mvel2.util;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.Function;

/* JADX INFO: loaded from: classes5.dex */
public class FunctionParser {
    private int cursor;
    private char[] expr;
    private int fields;
    private int length;
    private String name;
    private ParserContext pCtx;
    private ExecutionStack splitAccumulator;

    public FunctionParser(String str, int i, int i2, char[] cArr, int i3, ParserContext parserContext, ExecutionStack executionStack) {
        this.name = str;
        this.cursor = i;
        this.length = i2;
        this.expr = cArr;
        this.fields = i3;
        this.pCtx = parserContext;
        this.splitAccumulator = executionStack;
    }

    public Function parse() {
        int i;
        int iCaptureToEOS;
        int iBalancedCaptureWithLineAccounting;
        int i2 = this.cursor;
        int i3 = this.length + i2;
        int iCaptureToNextTokenJunction = ParseTools.captureToNextTokenJunction(this.expr, i2, i3, this.pCtx);
        this.cursor = iCaptureToNextTokenJunction;
        char[] cArr = this.expr;
        int iNextNonBlank = ParseTools.nextNonBlank(cArr, iCaptureToNextTokenJunction);
        this.cursor = iNextNonBlank;
        if (cArr[iNextNonBlank] == '(') {
            iBalancedCaptureWithLineAccounting = ParseTools.balancedCaptureWithLineAccounting(this.expr, iNextNonBlank, i3, '(', this.pCtx);
            int i4 = iNextNonBlank + 1;
            int i5 = iBalancedCaptureWithLineAccounting + 1;
            this.cursor = i5;
            int iSkipWhitespace = ParseTools.skipWhitespace(this.expr, i5);
            this.cursor = iSkipWhitespace;
            if (iSkipWhitespace >= i3) {
                throw new CompileException("incomplete statement", this.expr, this.cursor);
            }
            char[] cArr2 = this.expr;
            if (cArr2[iSkipWhitespace] == '{') {
                iCaptureToEOS = ParseTools.balancedCaptureWithLineAccounting(cArr2, iSkipWhitespace, i3, '{', this.pCtx);
                this.cursor = iCaptureToEOS;
                i = i4;
                iNextNonBlank = iSkipWhitespace;
            } else {
                iCaptureToEOS = ParseTools.captureToEOS(cArr2, iSkipWhitespace, i3, this.pCtx);
                this.cursor = iCaptureToEOS;
                i = i4;
                iNextNonBlank = iSkipWhitespace - 1;
            }
        } else {
            char[] cArr3 = this.expr;
            i = 0;
            if (cArr3[iNextNonBlank] == '{') {
                iCaptureToEOS = ParseTools.balancedCaptureWithLineAccounting(cArr3, iNextNonBlank, i3, '{', this.pCtx);
                this.cursor = iCaptureToEOS;
            } else {
                iCaptureToEOS = ParseTools.captureToEOS(cArr3, iNextNonBlank, i3, this.pCtx);
                this.cursor = iCaptureToEOS;
                iNextNonBlank--;
            }
            iBalancedCaptureWithLineAccounting = 0;
        }
        int iTrimRight = ParseTools.trimRight(this.expr, iNextNonBlank + 1);
        int iTrimLeft = ParseTools.trimLeft(this.expr, i2, iCaptureToEOS);
        int i6 = this.cursor + 1;
        this.cursor = i6;
        if (this.splitAccumulator != null && ParseTools.isStatementNotManuallyTerminated(this.expr, i6)) {
            this.splitAccumulator.add(new EndOfStatement(this.pCtx));
        }
        return new Function(this.name, this.expr, i, iBalancedCaptureWithLineAccounting - i, iTrimRight, iTrimLeft - iTrimRight, this.fields, this.pCtx);
    }

    public String getName() {
        return this.name;
    }

    public int getCursor() {
        return this.cursor;
    }
}
