package com.android.dx.cf.direct;

import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
abstract class MemberListParser {
    private final AttributeFactory attributeFactory;
    private final DirectClassFile cf;
    private final CstType definer;
    private int endOffset;
    private ParseObserver observer;
    private final int offset;

    public abstract int getAttributeContext();

    public abstract String humanAccessFlags(int i);

    public abstract String humanName();

    public abstract Member set(int i, int i2, CstNat cstNat, AttributeList attributeList);

    public MemberListParser(DirectClassFile directClassFile, CstType cstType, int i, AttributeFactory attributeFactory) {
        if (directClassFile == null) {
            f$$ExternalSyntheticBUOutline2.m179m("cf == null");
            throw null;
        }
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m178m("offset < 0");
            throw null;
        }
        if (attributeFactory == null) {
            f$$ExternalSyntheticBUOutline2.m179m("attributeFactory == null");
            throw null;
        }
        this.cf = directClassFile;
        this.definer = cstType;
        this.offset = i;
        this.attributeFactory = attributeFactory;
        this.endOffset = -1;
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    public final void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }

    public final void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    public final int getCount() {
        return this.cf.getBytes().getUnsignedShort(this.offset);
    }

    public final CstType getDefiner() {
        return this.definer;
    }

    private void parse() {
        int i;
        int i2;
        ConstantPool constantPool;
        char c2;
        int i3;
        int attributeContext = getAttributeContext();
        int count = getCount();
        int i4 = this.offset + 2;
        ByteArray bytes = this.cf.getBytes();
        ConstantPool constantPool2 = this.cf.getConstantPool();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(bytes, this.offset, 2, humanName() + "s_count: " + Hex.u2(count));
        }
        int i5 = 0;
        while (i5 < count) {
            try {
                int unsignedShort = bytes.getUnsignedShort(i4);
                int i6 = i4 + 2;
                int unsignedShort2 = bytes.getUnsignedShort(i6);
                int i7 = i4 + 4;
                int unsignedShort3 = bytes.getUnsignedShort(i7);
                CstString cstString = (CstString) constantPool2.get(unsignedShort2);
                CstString cstString2 = (CstString) constantPool2.get(unsignedShort3);
                ParseObserver parseObserver2 = this.observer;
                if (parseObserver2 != null) {
                    i2 = count;
                    constantPool = constantPool2;
                    parseObserver2.startParsingMember(bytes, i4, cstString.getString(), cstString2.getString());
                    this.observer.parsed(bytes, i4, 0, "\n" + humanName() + "s[" + i5 + "]:\n");
                    this.observer.changeIndent(1);
                    ParseObserver parseObserver3 = this.observer;
                    StringBuilder sb = new StringBuilder();
                    sb.append("access_flags: ");
                    sb.append(humanAccessFlags(unsignedShort));
                    parseObserver3.parsed(bytes, i4, 2, sb.toString());
                    this.observer.parsed(bytes, i6, 2, "name: " + cstString.toHuman());
                    c2 = 2;
                    this.observer.parsed(bytes, i7, 2, "descriptor: " + cstString2.toHuman());
                } else {
                    i2 = count;
                    constantPool = constantPool2;
                    c2 = 2;
                }
                AttributeListParser attributeListParser = new AttributeListParser(this.cf, attributeContext, i4 + 6, this.attributeFactory);
                attributeListParser.setObserver(this.observer);
                int endOffset = attributeListParser.getEndOffset();
                StdAttributeList list = attributeListParser.getList();
                list.setImmutable();
                Member member = set(i5, unsignedShort, new CstNat(cstString, cstString2), list);
                ParseObserver parseObserver4 = this.observer;
                if (parseObserver4 != null) {
                    parseObserver4.changeIndent(-1);
                    this.observer.parsed(bytes, endOffset, 0, "end " + humanName() + "s[" + i5 + "]\n");
                    i = i5;
                    try {
                        i3 = endOffset;
                        this.observer.endParsingMember(bytes, i3, cstString.getString(), cstString2.getString(), member);
                    } catch (ParseException e) {
                        e = e;
                        e.addContext("...while parsing " + humanName() + "s[" + i + "]");
                        throw e;
                    } catch (RuntimeException e2) {
                        e = e2;
                        ParseException parseException = new ParseException(e);
                        parseException.addContext("...while parsing " + humanName() + "s[" + i + "]");
                        throw parseException;
                    }
                } else {
                    i3 = endOffset;
                    i = i5;
                }
                i5 = i + 1;
                i4 = i3;
                count = i2;
                constantPool2 = constantPool;
            } catch (ParseException e3) {
                e = e3;
                i = i5;
            } catch (RuntimeException e4) {
                e = e4;
                i = i5;
            }
        }
        this.endOffset = i4;
    }
}
