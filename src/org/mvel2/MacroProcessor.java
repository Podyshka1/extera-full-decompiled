package org.mvel2;

import java.util.Map;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.util.ParseTools;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class MacroProcessor extends AbstractParser implements PreProcessor {
    private Map<String, Macro> macros;

    public MacroProcessor() {
    }

    public MacroProcessor(Map<String, Macro> map) {
        this.macros = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010e  */
    @Override // org.mvel2.PreProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public char[] parse(char[] cArr) {
        char c;
        int i;
        setExpression(cArr);
        StringAppender stringAppender = new StringAppender();
        boolean z = true;
        while (true) {
            int i2 = this.cursor;
            if (i2 < this.length) {
                while (true) {
                    int i3 = this.cursor;
                    if (i3 >= this.length || !ParseTools.isIdentifierPart(this.expr[i3])) {
                        break;
                    }
                    this.cursor++;
                }
                int i4 = this.cursor;
                if (i4 > i2) {
                    Map<String, Macro> map = this.macros;
                    String str = new String(this.expr, i2, i4 - i2);
                    if (map.containsKey(str) && z) {
                        stringAppender.append(this.macros.get(str).doMacro());
                    } else {
                        stringAppender.append(str);
                    }
                }
                int i5 = this.cursor;
                int i6 = this.length;
                if (i5 < i6) {
                    char[] cArr2 = this.expr;
                    char c2 = cArr2[i5];
                    if (c2 == '\"' || c2 == '\'') {
                        int iCaptureStringLiteral = ParseTools.captureStringLiteral(c2, cArr2, i5, i6);
                        this.cursor = iCaptureStringLiteral;
                        stringAppender.append(new String(cArr2, i5, iCaptureStringLiteral - i5));
                        int i7 = this.cursor;
                        if (i7 < this.length) {
                            if (ParseTools.isIdentifierPart(this.expr[i7])) {
                                this.cursor--;
                            }
                            c = this.expr[this.cursor];
                            if (c == '(') {
                                z = true;
                                stringAppender.append(c);
                            } else {
                                if (c == '.') {
                                    z = false;
                                } else if (c == ';' || c == '{') {
                                }
                                stringAppender.append(c);
                            }
                        }
                    } else if (c2 == '/') {
                        if (i5 + 1 != i6) {
                            char c3 = cArr2[i5 + 1];
                            if (c3 == '*') {
                                int i8 = i6 - 1;
                                while (true) {
                                    i = this.cursor;
                                    if (i == i8) {
                                        break;
                                    }
                                    char[] cArr3 = this.expr;
                                    if (cArr3[i] == '*' && cArr3[i + 1] == '/') {
                                        break;
                                    }
                                    this.cursor = i + 1;
                                }
                                this.cursor = i + 2;
                            } else if (c3 == '/') {
                                while (true) {
                                    int i9 = this.cursor;
                                    if (i9 == this.length || this.expr[i9] == '\n') {
                                        break;
                                    }
                                    this.cursor = i9 + 1;
                                }
                            }
                        }
                        int i10 = this.cursor;
                        if (i10 < this.length) {
                            this.cursor = i10 + 1;
                        }
                        stringAppender.append(new String(this.expr, i5, this.cursor - i5));
                        int i11 = this.cursor;
                        if (i11 < this.length) {
                            this.cursor = i11 - 1;
                        }
                    } else if (c2 == '\\') {
                        this.cursor = i5 + 1;
                    } else {
                        c = this.expr[this.cursor];
                        if (c == '(') {
                        }
                    }
                }
                this.cursor++;
            } else {
                return stringAppender.toChars();
            }
        }
    }

    @Override // org.mvel2.PreProcessor
    public String parse(String str) {
        return new String(parse(str.toCharArray()));
    }

    public Map<String, Macro> getMacros() {
        return this.macros;
    }

    public void setMacros(Map<String, Macro> map) {
        this.macros = map;
    }

    public void captureToWhitespace() {
        while (true) {
            int i = this.cursor;
            if (i >= this.length || ParseTools.isWhitespace(this.expr[i])) {
                return;
            } else {
                this.cursor++;
            }
        }
    }
}
