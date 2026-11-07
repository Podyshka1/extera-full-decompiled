package org.mvel2.optimizers;

import java.lang.reflect.Method;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.ast.Sign$$ExternalSyntheticBUOutline0;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class AbstractOptimizer extends AbstractParser {
    protected static final int BEAN = 0;
    protected static final int COL = 2;
    protected static final int METH = 1;
    protected static final int WITH = 3;
    protected boolean collection;
    protected Class currType;
    protected boolean nullSafe;
    protected boolean staticAccess;
    protected int tkStart;

    public AbstractOptimizer() {
        this.collection = false;
        this.nullSafe = false;
        this.currType = null;
        this.staticAccess = false;
    }

    public AbstractOptimizer(ParserContext parserContext) {
        super(parserContext);
        this.collection = false;
        this.nullSafe = false;
        this.currType = null;
        this.staticAccess = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:144:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object tryStaticAccess() {
        int i;
        int i2 = this.cursor;
        try {
            int i3 = this.end;
            int i4 = i3 - 1;
            boolean z = false;
            while (i4 > this.start) {
                char c2 = this.expr[i4];
                if (c2 == '\"') {
                    while (true) {
                        i = i4 - 1;
                        if (i > this.start) {
                            char[] cArr = this.expr;
                            if (cArr[i] != '\"' || cArr[i4 - 2] == '\\') {
                                i4 = i;
                            }
                        }
                    }
                } else if (c2 != '\'') {
                    int i5 = 1;
                    if (c2 == ')') {
                        int i6 = i4 - 1;
                        int i7 = 1;
                        while (i6 > this.start && i7 != 0) {
                            char c3 = this.expr[i6];
                            if (c3 != '\"') {
                                switch (c3) {
                                    case '\'':
                                        while (i6 > this.start) {
                                            char[] cArr2 = this.expr;
                                            if (cArr2[i6] == c3 || cArr2[i6 - 1] == '\\') {
                                            }
                                            i6--;
                                            break;
                                        }
                                        break;
                                    case '(':
                                        i7--;
                                        break;
                                    case ')':
                                        i7++;
                                        break;
                                }
                            }
                            i6--;
                        }
                        int i8 = i6;
                        i4 = i6 + 1;
                        i3 = i8;
                        z = true;
                    } else if (c2 == '.') {
                        if (!z) {
                            ParserContext parserContext = this.pCtx;
                            ClassLoader classLoader = parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
                            char[] cArr3 = this.expr;
                            int i9 = this.start;
                            this.cursor = i3;
                            String str = new String(cArr3, i9, i3 - i9);
                            try {
                                if (MVEL.COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS && str.endsWith(".class")) {
                                    str = str.substring(0, str.length() - 6);
                                }
                                return Class.forName(str, true, classLoader);
                            } catch (ClassNotFoundException e) {
                                try {
                                    return ParseTools.findInnerClass(str, classLoader, e);
                                } catch (ClassNotFoundException unused) {
                                    Class clsForNameWithInner = ParseTools.forNameWithInner(new String(this.expr, this.start, i4 - this.start), classLoader);
                                    String str2 = new String(this.expr, i4 + 1, (this.end - i4) - 1);
                                    try {
                                        return clsForNameWithInner.getField(str2);
                                    } catch (NoSuchFieldException unused2) {
                                        for (Method method : clsForNameWithInner.getMethods()) {
                                            if (str2.equals(method.getName())) {
                                                return method;
                                            }
                                        }
                                        return null;
                                    }
                                }
                            }
                        }
                        i3 = i4;
                        z = false;
                    } else if (c2 == '}') {
                        while (true) {
                            i4--;
                            if (i4 <= this.start || i5 == 0) {
                                break;
                            }
                            char c4 = this.expr[i4];
                            if (c4 == '\"' || c4 == '\'') {
                                while (i4 > this.start) {
                                    char[] cArr4 = this.expr;
                                    if (cArr4[i4] == c4 || cArr4[i4 - 1] == '\\') {
                                        break;
                                    }
                                    i4--;
                                }
                            } else if (c4 == '{') {
                                i5--;
                            } else if (c4 == '}') {
                                i5++;
                            }
                        }
                    }
                    i4--;
                } else {
                    while (true) {
                        i = i4 - 1;
                        if (i > this.start) {
                            char[] cArr5 = this.expr;
                            if (cArr5[i] != '\'' || cArr5[i4 - 2] == '\\') {
                                i4 = i;
                            }
                        }
                    }
                }
                i4 = i;
                i4--;
            }
        } catch (Exception unused3) {
            this.cursor = i2;
        }
        return null;
    }

    public int nextSubToken() {
        int i;
        skipWhitespace();
        this.nullSafe = false;
        char[] cArr = this.expr;
        int i2 = this.cursor;
        this.tkStart = i2;
        char c2 = cArr[i2];
        if (c2 == '.') {
            int i3 = this.start;
            if (i3 + 1 != this.end) {
                int i4 = i2 + 1;
                this.tkStart = i4;
                this.cursor = i4;
                char c3 = cArr[i4];
                if (c3 == '?') {
                    skipWhitespace();
                    int i5 = this.tkStart + 1;
                    this.tkStart = i5;
                    this.cursor = i5;
                    if (i5 == this.end) {
                        Sign$$ExternalSyntheticBUOutline0.m964m("unexpected end of statement", this.expr, this.start);
                        return 0;
                    }
                    this.nullSafe = true;
                    this.fields = -1;
                } else {
                    if (c3 == '{') {
                        return 3;
                    }
                    if (ParseTools.isWhitespace(c3)) {
                        skipWhitespace();
                        this.tkStart = this.cursor;
                    }
                }
            } else {
                Sign$$ExternalSyntheticBUOutline0.m964m("unexpected end of statement", cArr, i3);
                return 0;
            }
        } else if (c2 != '?') {
            if (c2 == '[') {
                return 2;
            }
            if (c2 == '{' && cArr[i2 - 1] == '.') {
                return 3;
            }
        } else if (this.start == i2) {
            this.tkStart = i2 + 1;
            this.cursor = i2 + 1;
            this.nullSafe = true;
        }
        do {
            i = this.cursor + 1;
            this.cursor = i;
            if (i >= this.end) {
                break;
            }
        } while (ParseTools.isIdentifierPart(this.expr[i]));
        skipWhitespace();
        int i6 = this.cursor;
        if (i6 >= this.end) {
            return 0;
        }
        char c4 = this.expr[i6];
        if (c4 != '(') {
            return c4 != '[' ? 0 : 2;
        }
        return 1;
    }

    public String capture() {
        char[] cArr = this.expr;
        int iTrimRight = trimRight(this.tkStart);
        this.tkStart = iTrimRight;
        return new String(cArr, iTrimRight, trimLeft(this.cursor) - this.tkStart);
    }

    public void whiteSpaceSkip() {
        if (this.cursor < this.length) {
            while (ParseTools.isWhitespace(this.expr[this.cursor])) {
                int i = this.cursor + 1;
                this.cursor = i;
                if (i == this.length) {
                    return;
                }
            }
        }
    }

    public boolean scanTo(char c2) {
        while (true) {
            int i = this.cursor;
            int i2 = this.end;
            if (i >= i2) {
                return true;
            }
            char[] cArr = this.expr;
            char c3 = cArr[i];
            if (c3 == '\"' || c3 == '\'') {
                this.cursor = ParseTools.captureStringLiteral(c3, cArr, i, i2);
            }
            char[] cArr2 = this.expr;
            int i3 = this.cursor;
            if (cArr2[i3] == c2) {
                return false;
            }
            this.cursor = i3 + 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findLastUnion() {
        int i = 0;
        int i2 = -1;
        for (int i3 = (this.start + this.length) - 1; i3 != this.start; i3--) {
            char c2 = this.expr[i3];
            if (c2 != '.') {
                if (c2 == '[') {
                    i--;
                    if (i == 0) {
                        this.collection = true;
                        i2 = i3;
                    }
                } else if (c2 == ']') {
                    i++;
                } else if (c2 != '{') {
                    if (c2 == '}') {
                    }
                }
            } else if (i == 0) {
                i2 = i3;
            }
            if (i2 != -1) {
                return i2;
            }
        }
        return i2;
    }
}
