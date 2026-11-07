package org.mvel2.util;

import org.mvel2.ParserContext;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.Function;
import org.mvel2.ast.Sign$$ExternalSyntheticBUOutline0;

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
        int iCaptureToEOS;
        int iBalancedCaptureWithLineAccounting;
        int i;
        int i2 = this.cursor;
        int i3 = this.length + i2;
        int iCaptureToNextTokenJunction = ParseTools.captureToNextTokenJunction(this.expr, i2, i3, this.pCtx);
        this.cursor = iCaptureToNextTokenJunction;
        char[] cArr = this.expr;
        int iNextNonBlank = ParseTools.nextNonBlank(cArr, iCaptureToNextTokenJunction);
        this.cursor = iNextNonBlank;
        char c2 = cArr[iNextNonBlank];
        char[] cArr2 = this.expr;
        if (c2 == '(') {
            iBalancedCaptureWithLineAccounting = ParseTools.balancedCaptureWithLineAccounting(cArr2, iNextNonBlank, i3, '(', this.pCtx);
            int i4 = iNextNonBlank + 1;
            int i5 = iBalancedCaptureWithLineAccounting + 1;
            this.cursor = i5;
            int iSkipWhitespace = ParseTools.skipWhitespace(this.expr, i5);
            this.cursor = iSkipWhitespace;
            char[] cArr3 = this.expr;
            if (iSkipWhitespace >= i3) {
                Sign$$ExternalSyntheticBUOutline0.m1012m("incomplete statement", cArr3, iSkipWhitespace);
                return null;
            }
            char c3 = cArr3[iSkipWhitespace];
            ParserContext parserContext = this.pCtx;
            if (c3 == '{') {
                iCaptureToEOS = ParseTools.balancedCaptureWithLineAccounting(cArr3, iSkipWhitespace, i3, '{', parserContext);
                this.cursor = iCaptureToEOS;
                i = i4;
                iNextNonBlank = iSkipWhitespace;
            } else {
                iCaptureToEOS = ParseTools.captureToEOS(cArr3, iSkipWhitespace, i3, parserContext);
                this.cursor = iCaptureToEOS;
                i = i4;
                iNextNonBlank = iSkipWhitespace - 1;
            }
        } else {
            char c4 = cArr2[iNextNonBlank];
            ParserContext parserContext2 = this.pCtx;
            if (c4 == '{') {
                iCaptureToEOS = ParseTools.balancedCaptureWithLineAccounting(cArr2, iNextNonBlank, i3, '{', parserContext2);
                this.cursor = iCaptureToEOS;
            } else {
                iCaptureToEOS = ParseTools.captureToEOS(cArr2, iNextNonBlank, i3, parserContext2);
                this.cursor = iCaptureToEOS;
                iNextNonBlank--;
            }
            iBalancedCaptureWithLineAccounting = 0;
            i = 0;
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
