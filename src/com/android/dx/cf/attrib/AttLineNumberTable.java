package com.android.dx.cf.attrib;

import com.android.dx.cf.code.LineNumberList;
import com.android.dx.util.MutabilityException;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class AttLineNumberTable extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "LineNumberTable";
    private final LineNumberList lineNumbers;

    public AttLineNumberTable(LineNumberList lineNumberList) {
        super(ATTRIBUTE_NAME);
        try {
            if (lineNumberList.isMutable()) {
                throw new MutabilityException("lineNumbers.isMutable()");
            }
            this.lineNumbers = lineNumberList;
        } catch (NullPointerException unused) {
            f$$ExternalSyntheticBUOutline2.m179m("lineNumbers == null");
            throw null;
        }
    }

    @Override // com.android.dx.cf.iface.Attribute
    public int byteLength() {
        return (this.lineNumbers.size() * 4) + 8;
    }

    public LineNumberList getLineNumbers() {
        return this.lineNumbers;
    }
}
