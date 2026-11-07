package org.mvel2.util;

import java.util.ArrayList;
import java.util.HashMap;
import org.mvel2.DataConversion;
import org.mvel2.ParserContext;
import org.mvel2.ast.Sign$$ExternalSyntheticBUOutline0;
import org.mvel2.compiler.ExecutableStatement;

/* JADX INFO: loaded from: classes5.dex */
public class CollectionParser {
    public static final int ARRAY = 1;
    private static final Object[] EMPTY_ARRAY = new Object[0];
    public static final int LIST = 0;
    public static final int MAP = 2;
    private Class colType;
    private int cursor;
    private int end;
    private ParserContext pCtx;
    private char[] property;
    private int start;
    private int type;

    public CollectionParser() {
    }

    public CollectionParser(int i) {
        this.type = i;
    }

    public Object parseCollection(char[] cArr, int i, int i2, boolean z, ParserContext parserContext) {
        this.property = cArr;
        this.pCtx = parserContext;
        this.end = i2 + i;
        while (i < this.end && ParseTools.isWhitespace(cArr[i])) {
            i++;
        }
        this.cursor = i;
        this.start = i;
        return parseCollection(z);
    }

    public Object parseCollection(char[] cArr, int i, int i2, boolean z, Class cls, ParserContext parserContext) {
        if (cls != null) {
            this.colType = ParseTools.getBaseComponentType(cls);
        }
        this.property = cArr;
        this.end = i2 + i;
        while (i < this.end && ParseTools.isWhitespace(cArr[i])) {
            i++;
        }
        this.cursor = i;
        this.start = i;
        this.pCtx = parserContext;
        return parseCollection(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object parseCollection(boolean z) {
        HashMap map;
        ArrayList arrayList;
        int i;
        int i2;
        int i3 = this.end;
        int iSkipWhitespace = this.start;
        int i4 = i3 - iSkipWhitespace;
        int i5 = this.type;
        if (i4 == 0) {
            if (i5 == 0) {
                return new ArrayList();
            }
            return EMPTY_ARRAY;
        }
        Object objCreateStringTrimmed = null;
        if (i5 == -1) {
            map = null;
            arrayList = null;
        } else if (i5 == 0 || i5 == 1) {
            arrayList = new ArrayList();
            map = null;
        } else if (i5 == 2) {
            map = new HashMap();
            arrayList = null;
        }
        int i6 = -1;
        while (true) {
            int i7 = this.cursor;
            int i8 = this.end;
            if (i7 < i8) {
                char[] cArr = this.property;
                char c2 = cArr[i7];
                if (c2 == '\"') {
                    this.cursor = ParseTools.balancedCapture(cArr, i7, i8, c2);
                } else {
                    if (c2 == ',') {
                        if (this.type != 2) {
                            arrayList.add(new String(cArr, iSkipWhitespace, i7 - iSkipWhitespace).trim());
                        } else {
                            map.put(objCreateStringTrimmed, ParseTools.createStringTrimmed(cArr, iSkipWhitespace, i7 - iSkipWhitespace));
                        }
                        if (z) {
                            subCompile(iSkipWhitespace, this.cursor - iSkipWhitespace);
                        }
                        i = this.cursor;
                    } else if (c2 == '.') {
                        int i9 = i7 + 1;
                        this.cursor = i9;
                        int iSkipWhitespace2 = ParseTools.skipWhitespace(cArr, i9);
                        this.cursor = iSkipWhitespace2;
                        if (iSkipWhitespace2 != this.end) {
                            char[] cArr2 = this.property;
                            if (cArr2[iSkipWhitespace2] == '{') {
                                this.cursor = ParseTools.balancedCapture(cArr2, iSkipWhitespace2, '{');
                            }
                        }
                    } else if (c2 == ':') {
                        if (this.type != 2) {
                            map = new HashMap();
                            this.type = 2;
                        }
                        objCreateStringTrimmed = ParseTools.createStringTrimmed(this.property, iSkipWhitespace, this.cursor - iSkipWhitespace);
                        if (z) {
                            subCompile(iSkipWhitespace, this.cursor - iSkipWhitespace);
                        }
                        i = this.cursor;
                    } else if (c2 == '[') {
                        if (i7 > this.start || !ParseTools.isIdentifierPart(cArr[i7 - 1])) {
                            if (i6 == -1) {
                                i6 = 0;
                            }
                            CollectionParser collectionParser = new CollectionParser(i6);
                            char[] cArr3 = this.property;
                            int i10 = this.cursor;
                            this.cursor = ParseTools.balancedCapture(cArr3, i10, this.end, cArr3[i10]);
                            Object collection = collectionParser.parseCollection(cArr3, i10 + 1, (r9 - i10) - 1, z, this.colType, this.pCtx);
                            if (this.type != 2) {
                                map.put(objCreateStringTrimmed, collection);
                            } else {
                                arrayList.add(collection);
                                objCreateStringTrimmed = collection;
                            }
                            char[] cArr4 = this.property;
                            int i11 = this.cursor + 1;
                            this.cursor = i11;
                            iSkipWhitespace = ParseTools.skipWhitespace(cArr4, i11);
                            this.cursor = iSkipWhitespace;
                            i2 = this.end;
                            if (iSkipWhitespace >= i2 && this.property[iSkipWhitespace] == ',') {
                                iSkipWhitespace++;
                            } else if (iSkipWhitespace < i2 && ParseTools.opLookup(this.property[iSkipWhitespace]) == -1) {
                                Sign$$ExternalSyntheticBUOutline0.m1012m("unterminated collection element", this.property, this.cursor);
                                return null;
                            }
                        }
                    } else if (c2 == '{') {
                        if (i6 == -1) {
                            i6 = 1;
                        }
                        if (i7 > this.start) {
                            if (i6 == -1) {
                            }
                            CollectionParser collectionParser2 = new CollectionParser(i6);
                            char[] cArr32 = this.property;
                            int i102 = this.cursor;
                            this.cursor = ParseTools.balancedCapture(cArr32, i102, this.end, cArr32[i102]);
                            Object collection2 = collectionParser2.parseCollection(cArr32, i102 + 1, (r9 - i102) - 1, z, this.colType, this.pCtx);
                            if (this.type != 2) {
                            }
                            char[] cArr42 = this.property;
                            int i112 = this.cursor + 1;
                            this.cursor = i112;
                            iSkipWhitespace = ParseTools.skipWhitespace(cArr42, i112);
                            this.cursor = iSkipWhitespace;
                            i2 = this.end;
                            if (iSkipWhitespace >= i2) {
                                if (iSkipWhitespace < i2) {
                                    continue;
                                }
                            }
                        }
                    } else if (c2 != '\'') {
                        if (c2 == '(') {
                            this.cursor = ParseTools.balancedCapture(cArr, i7, i8, '(');
                        }
                    }
                    iSkipWhitespace = i + 1;
                }
                this.cursor++;
            } else {
                if (iSkipWhitespace < i8 && ParseTools.isWhitespace(this.property[iSkipWhitespace])) {
                    iSkipWhitespace = ParseTools.skipWhitespace(this.property, iSkipWhitespace);
                }
                int i12 = this.end;
                if (iSkipWhitespace < i12) {
                    int i13 = this.cursor;
                    if (i13 < i12 - 1) {
                        this.cursor = i13 + 1;
                    }
                    if (this.type == 2) {
                        map.put(objCreateStringTrimmed, ParseTools.createStringTrimmed(this.property, iSkipWhitespace, this.cursor - iSkipWhitespace));
                    } else {
                        int i14 = this.cursor;
                        if (i14 < i12) {
                            this.cursor = i14 + 1;
                        }
                        arrayList.add(ParseTools.createStringTrimmed(this.property, iSkipWhitespace, this.cursor - iSkipWhitespace));
                    }
                    if (z) {
                        subCompile(iSkipWhitespace, this.cursor - iSkipWhitespace);
                    }
                }
                int i15 = this.type;
                if (i15 != 1) {
                    return i15 != 2 ? arrayList : map;
                }
                return arrayList.toArray();
            }
        }
    }

    private void subCompile(int i, int i2) {
        Class cls = this.colType;
        char[] cArr = this.property;
        if (cls == null) {
            ParseTools.subCompileExpression(cArr, i, i2, this.pCtx);
            return;
        }
        Class knownEgressType = ((ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, this.pCtx)).getKnownEgressType();
        if (knownEgressType == null || ReflectionUtil.isAssignableFrom(this.colType, knownEgressType)) {
            return;
        }
        if (isStrongType() || !DataConversion.canConvert(knownEgressType, this.colType)) {
            Sign$$ExternalSyntheticBUOutline0.m1012m("expected type: " + this.colType.getName() + "; but found: " + knownEgressType.getName(), this.property, this.cursor);
        }
    }

    private boolean isStrongType() {
        ParserContext parserContext = this.pCtx;
        return parserContext != null && parserContext.isStrongTyping();
    }

    public int getCursor() {
        return this.cursor;
    }
}
