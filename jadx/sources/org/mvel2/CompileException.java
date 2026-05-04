package org.mvel2;

import java.util.Collections;
import java.util.List;
import org.mvel2.util.ParseTools;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class CompileException extends RuntimeException {
    private int column;
    private int cursor;
    private List<ErrorDetail> errors;
    private Object evaluationContext;
    private char[] expr;
    private int lastLineStart;
    private int lineNumber;
    private int msgOffset;

    public CompileException(String str, List<ErrorDetail> list, char[] cArr, int i, ParserContext parserContext) {
        super(str);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i;
        if (!list.isEmpty()) {
            ErrorDetail next = list.iterator().next();
            this.cursor = next.getCursor();
            this.lineNumber = next.getLineNumber();
            this.column = next.getColumn();
        }
        this.errors = list;
    }

    public void setEvaluationContext(Object obj) {
        this.evaluationContext = obj;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return generateErrorMessage();
    }

    public CompileException(String str, char[] cArr, int i, Throwable th) {
        super(str, th);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i;
    }

    public CompileException(String str, char[] cArr, int i) {
        super(str);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return generateErrorMessage();
    }

    private void calcRowAndColumn() {
        int i;
        char[] cArr;
        int i2 = this.lineNumber;
        if (i2 > 1 || (i = this.column) > 1) {
            return;
        }
        if ((i2 != 0 && i != 0) || (cArr = this.expr) == null || cArr.length == 0) {
            return;
        }
        int i3 = 1;
        int i4 = 1;
        for (int i5 = 0; i5 < this.cursor; i5++) {
            char[] cArr2 = this.expr;
            if (i5 >= cArr2.length) {
                break;
            }
            char c = cArr2[i5];
            if (c == '\n') {
                i3++;
                i4 = 1;
            } else if (c != '\r') {
                i4++;
            }
        }
        this.lineNumber = i3;
        this.column = i4;
    }

    private CharSequence showCodeNearError(char[] cArr, int i) {
        String str;
        int i2;
        String strSubstring;
        if (cArr == null) {
            return "Unknown";
        }
        if (i < 0) {
            i = 0;
        }
        int i3 = i - 20;
        int length = i + 30;
        if (length > cArr.length) {
            length = cArr.length;
            i3 = i - 50;
        }
        if (i3 < 0) {
            i3 = 0;
        }
        String strTrim = String.copyValueOf(cArr, i3, length - i3).trim();
        if (i < length) {
            int i4 = i;
            if (i > 0) {
                while (i4 > 0 && !ParseTools.isWhitespace(cArr[i4 - 1])) {
                    i4--;
                }
            }
            i2 = i - i4;
            str = new String(cArr, i4, cArr.length - i4);
            for (int i5 = 0; i5 < str.length(); i5++) {
                char cCharAt = str.charAt(i5);
                if (cCharAt == '\n' || cCharAt == ')') {
                    str = str.substring(0, i5);
                    break;
                }
            }
            if (str.length() >= 30) {
                str = str.substring(0, 30);
            }
        } else {
            str = null;
            i2 = 0;
        }
        while (true) {
            int iIndexOf = strTrim.indexOf(10);
            int iLastIndexOf = strTrim.lastIndexOf(10);
            if (iIndexOf == -1) {
                break;
            }
            int iIndexOf2 = str == null ? 0 : strTrim.indexOf(str);
            if (iIndexOf == -1 || iIndexOf != iLastIndexOf) {
                if (iIndexOf < iIndexOf2) {
                    strSubstring = strTrim.substring(iIndexOf + 1, iLastIndexOf);
                } else {
                    strSubstring = strTrim.substring(0, iIndexOf);
                }
                strTrim = strSubstring;
            } else {
                if (iIndexOf > iIndexOf2) {
                    strSubstring = strTrim.substring(0, iIndexOf);
                } else if (iIndexOf < iIndexOf2) {
                    strSubstring = strTrim.substring(iIndexOf + 1, strTrim.length());
                }
                strTrim = strSubstring;
            }
        }
        String strTrim2 = strTrim.trim();
        if (str != null) {
            this.msgOffset = strTrim2.indexOf(str) + i2;
        } else {
            this.msgOffset = strTrim.length() - (strTrim.length() - strTrim2.length());
        }
        if (this.msgOffset == 0 && i2 == 0) {
            this.msgOffset = i;
        }
        return strTrim2;
    }

    public CharSequence getCodeNearError() {
        return showCodeNearError(this.expr, this.cursor);
    }

    private String generateErrorMessage() {
        StringAppender stringAppenderAppend = new StringAppender().append("[Error: " + super.getMessage() + "]\n");
        int length = stringAppenderAppend.length();
        stringAppenderAppend.append("[Near : {... ");
        stringAppenderAppend.append(showCodeNearError(this.expr, this.cursor)).append(" ....}]\n").append(ParseTools.repeatChar(' ', stringAppenderAppend.length() - length));
        if (this.msgOffset < 0) {
            this.msgOffset = 0;
        }
        stringAppenderAppend.append(ParseTools.repeatChar(' ', this.msgOffset)).append('^');
        calcRowAndColumn();
        if (this.evaluationContext != null) {
            stringAppenderAppend.append("\n").append("In ").append(this.evaluationContext);
        } else if (this.lineNumber != -1) {
            stringAppenderAppend.append("\n").append("[Line: " + this.lineNumber + ", Column: " + this.column + "]");
        }
        return stringAppenderAppend.toString();
    }

    public char[] getExpr() {
        return this.expr;
    }

    public int getCursor() {
        return this.cursor;
    }

    public List<ErrorDetail> getErrors() {
        List<ErrorDetail> list = this.errors;
        return list != null ? list : Collections.EMPTY_LIST;
    }

    public void setErrors(List<ErrorDetail> list) {
        this.errors = list;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public void setLineNumber(int i) {
        this.lineNumber = i;
    }

    public int getColumn() {
        return this.column;
    }

    public void setColumn(int i) {
        this.column = i;
    }

    public int getCursorOffet() {
        return this.msgOffset;
    }

    public void setExpr(char[] cArr) {
        this.expr = cArr;
    }

    public void setCursor(int i) {
        this.cursor = i;
    }

    public int getLastLineStart() {
        return this.lastLineStart;
    }

    public void setLastLineStart(int i) {
        this.lastLineStart = i;
    }
}
