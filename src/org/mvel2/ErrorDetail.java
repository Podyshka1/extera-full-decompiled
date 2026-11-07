package org.mvel2;

/* JADX INFO: loaded from: classes5.dex */
public class ErrorDetail {
    private int column;
    private boolean critical;
    private int cursor;
    private char[] expr;
    private int lineNumber;
    private String message;

    public ErrorDetail(char[] cArr, int i, boolean z, String str) {
        this.expr = cArr;
        this.cursor = i;
        this.critical = z;
        this.message = str;
        calcRowAndColumn();
    }

    public boolean isCritical() {
        return this.critical;
    }

    public void setCritical(boolean z) {
        this.critical = z;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public int getCursor() {
        return this.cursor;
    }

    public void calcRowAndColumn() {
        char[] cArr;
        if ((this.lineNumber != 0 && this.column != 0) || (cArr = this.expr) == null || cArr.length == 0) {
            return;
        }
        int i = 1;
        int i2 = 1;
        for (int i3 = 0; i3 < this.cursor; i3++) {
            char c2 = this.expr[i3];
            if (c2 == '\n') {
                i++;
                i2 = 0;
            } else if (c2 != '\r') {
                i2++;
            }
        }
        this.lineNumber = i;
        this.column = i2;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public int getColumn() {
        return this.column;
    }

    public void setCursor(int i) {
        this.cursor = i;
    }

    public void setExpr(char[] cArr) {
        this.expr = cArr;
    }

    public char[] getExpr() {
        return this.expr;
    }

    public void setLineNumber(int i) {
        this.lineNumber = i;
    }

    public void setColumn(int i) {
        this.column = i;
    }

    public String toString() {
        boolean z = this.critical;
        int i = this.lineNumber;
        if (z) {
            return "(" + i + "," + this.column + ") " + this.message;
        }
        return "(" + i + "," + this.column + ") WARNING: " + this.message;
    }
}
