package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.p004cf.code.LineNumberList;
import com.android.p003dx.util.MutabilityException;

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
            throw new NullPointerException("lineNumbers == null");
        }
    }

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return (this.lineNumbers.size() * 4) + 8;
    }

    public LineNumberList getLineNumbers() {
        return this.lineNumbers;
    }
}
