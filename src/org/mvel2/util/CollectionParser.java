package org.mvel2.util;

import java.util.ArrayList;
import java.util.HashMap;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.ParserContext;
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

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0149  */
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
        if (i3 - iSkipWhitespace == 0) {
            return this.type == 0 ? new ArrayList() : EMPTY_ARRAY;
        }
        int i4 = this.type;
        Object objCreateStringTrimmed = null;
        if (i4 == -1) {
            map = null;
            arrayList = null;
        } else if (i4 == 0 || i4 == 1) {
            arrayList = new ArrayList();
            map = null;
        } else if (i4 == 2) {
            map = new HashMap();
            arrayList = null;
        }
        int i5 = -1;
        while (true) {
            int i6 = this.cursor;
            int i7 = this.end;
            if (i6 < i7) {
                char[] cArr = this.property;
                char c = cArr[i6];
                if (c == '\"') {
                    this.cursor = ParseTools.balancedCapture(cArr, i6, i7, c);
                } else {
                    if (c == ',') {
                        if (this.type != 2) {
                            arrayList.add(new String(cArr, iSkipWhitespace, i6 - iSkipWhitespace).trim());
                        } else {
                            map.put(objCreateStringTrimmed, ParseTools.createStringTrimmed(cArr, iSkipWhitespace, i6 - iSkipWhitespace));
                        }
                        if (z) {
                            subCompile(iSkipWhitespace, this.cursor - iSkipWhitespace);
                        }
                        i = this.cursor;
                    } else if (c == '.') {
                        int i8 = i6 + 1;
                        this.cursor = i8;
                        int iSkipWhitespace2 = ParseTools.skipWhitespace(cArr, i8);
                        this.cursor = iSkipWhitespace2;
                        if (iSkipWhitespace2 != this.end) {
                            char[] cArr2 = this.property;
                            if (cArr2[iSkipWhitespace2] == '{') {
                                this.cursor = ParseTools.balancedCapture(cArr2, iSkipWhitespace2, '{');
                            }
                        }
                    } else if (c == ':') {
                        if (this.type != 2) {
                            map = new HashMap();
                            this.type = 2;
                        }
                        objCreateStringTrimmed = ParseTools.createStringTrimmed(this.property, iSkipWhitespace, this.cursor - iSkipWhitespace);
                        if (z) {
                            subCompile(iSkipWhitespace, this.cursor - iSkipWhitespace);
                        }
                        i = this.cursor;
                    } else if (c == '[') {
                        if (i6 > this.start || !ParseTools.isIdentifierPart(cArr[i6 - 1])) {
                            if (i5 == -1) {
                                i5 = 0;
                            }
                            CollectionParser collectionParser = new CollectionParser(i5);
                            char[] cArr3 = this.property;
                            int i9 = this.cursor;
                            this.cursor = ParseTools.balancedCapture(cArr3, i9, this.end, cArr3[i9]);
                            Object collection = collectionParser.parseCollection(cArr3, i9 + 1, (r9 - i9) - 1, z, this.colType, this.pCtx);
                            if (this.type != 2) {
                                map.put(objCreateStringTrimmed, collection);
                            } else {
                                arrayList.add(collection);
                                objCreateStringTrimmed = collection;
                            }
                            char[] cArr4 = this.property;
                            int i10 = this.cursor + 1;
                            this.cursor = i10;
                            iSkipWhitespace = ParseTools.skipWhitespace(cArr4, i10);
                            this.cursor = iSkipWhitespace;
                            i2 = this.end;
                            if (iSkipWhitespace >= i2 && this.property[iSkipWhitespace] == ',') {
                                iSkipWhitespace++;
                            } else if (iSkipWhitespace < i2 && ParseTools.opLookup(this.property[iSkipWhitespace]) == -1) {
                                throw new CompileException("unterminated collection element", this.property, this.cursor);
                            }
                        }
                    } else if (c == '{') {
                        if (i5 == -1) {
                            i5 = 1;
                        }
                        if (i6 > this.start) {
                            if (i5 == -1) {
                            }
                            CollectionParser collectionParser2 = new CollectionParser(i5);
                            char[] cArr32 = this.property;
                            int i92 = this.cursor;
                            this.cursor = ParseTools.balancedCapture(cArr32, i92, this.end, cArr32[i92]);
                            Object collection2 = collectionParser2.parseCollection(cArr32, i92 + 1, (r9 - i92) - 1, z, this.colType, this.pCtx);
                            if (this.type != 2) {
                            }
                            char[] cArr42 = this.property;
                            int i102 = this.cursor + 1;
                            this.cursor = i102;
                            iSkipWhitespace = ParseTools.skipWhitespace(cArr42, i102);
                            this.cursor = iSkipWhitespace;
                            i2 = this.end;
                            if (iSkipWhitespace >= i2) {
                                if (iSkipWhitespace < i2) {
                                    continue;
                                }
                            }
                        }
                    } else if (c != '\'') {
                        if (c == '(') {
                            this.cursor = ParseTools.balancedCapture(cArr, i6, i7, '(');
                        }
                    }
                    iSkipWhitespace = i + 1;
                }
                this.cursor++;
            } else {
                if (iSkipWhitespace < i7 && ParseTools.isWhitespace(this.property[iSkipWhitespace])) {
                    iSkipWhitespace = ParseTools.skipWhitespace(this.property, iSkipWhitespace);
                }
                int i11 = this.end;
                if (iSkipWhitespace < i11) {
                    int i12 = this.cursor;
                    if (i12 < i11 - 1) {
                        this.cursor = i12 + 1;
                    }
                    if (this.type == 2) {
                        map.put(objCreateStringTrimmed, ParseTools.createStringTrimmed(this.property, iSkipWhitespace, this.cursor - iSkipWhitespace));
                    } else {
                        int i13 = this.cursor;
                        if (i13 < i11) {
                            this.cursor = i13 + 1;
                        }
                        arrayList.add(ParseTools.createStringTrimmed(this.property, iSkipWhitespace, this.cursor - iSkipWhitespace));
                    }
                    if (z) {
                        subCompile(iSkipWhitespace, this.cursor - iSkipWhitespace);
                    }
                }
                int i14 = this.type;
                if (i14 != 1) {
                    return i14 != 2 ? arrayList : map;
                }
                return arrayList.toArray();
            }
        }
    }

    private void subCompile(int i, int i2) {
        if (this.colType == null) {
            ParseTools.subCompileExpression(this.property, i, i2, this.pCtx);
            return;
        }
        Class knownEgressType = ((ExecutableStatement) ParseTools.subCompileExpression(this.property, i, i2, this.pCtx)).getKnownEgressType();
        if (knownEgressType == null || ReflectionUtil.isAssignableFrom(this.colType, knownEgressType)) {
            return;
        }
        if (isStrongType() || !DataConversion.canConvert(knownEgressType, this.colType)) {
            throw new CompileException("expected type: " + this.colType.getName() + "; but found: " + knownEgressType.getName(), this.property, this.cursor);
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
