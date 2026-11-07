package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.util.ByteArray;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class RawAttribute extends BaseAttribute {
    private final ByteArray data;
    private final ConstantPool pool;

    public RawAttribute(String str, ByteArray byteArray, ConstantPool constantPool) {
        super(str);
        if (byteArray == null) {
            f$$ExternalSyntheticBUOutline2.m213m("data == null");
            throw null;
        }
        this.data = byteArray;
        this.pool = constantPool;
    }

    public RawAttribute(String str, ByteArray byteArray, int i, int i2, ConstantPool constantPool) {
        this(str, byteArray.slice(i, i2 + i), constantPool);
    }

    public ByteArray getData() {
        return this.data;
    }

    @Override // com.android.dx.cf.iface.Attribute
    public int byteLength() {
        return this.data.size() + 6;
    }

    public ConstantPool getPool() {
        return this.pool;
    }
}
