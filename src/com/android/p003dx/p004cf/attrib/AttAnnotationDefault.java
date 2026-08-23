package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.cst.Constant;

/* JADX INFO: loaded from: classes4.dex */
public final class AttAnnotationDefault extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "AnnotationDefault";
    private final int byteLength;
    private final Constant value;

    public AttAnnotationDefault(Constant constant, int i) {
        super(ATTRIBUTE_NAME);
        if (constant == null) {
            throw new NullPointerException("value == null");
        }
        this.value = constant;
        this.byteLength = i;
    }

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return this.byteLength + 6;
    }

    public Constant getValue() {
        return this.value;
    }
}
