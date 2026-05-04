package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.cst.CstString;

/* JADX INFO: loaded from: classes4.dex */
public final class AttSourceDebugExtension extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "SourceDebugExtension";
    private final CstString smapString;

    public AttSourceDebugExtension(CstString cstString) {
        super(ATTRIBUTE_NAME);
        if (cstString == null) {
            throw new NullPointerException("smapString == null");
        }
        this.smapString = cstString;
    }

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return this.smapString.getUtf8Size() + 6;
    }

    public CstString getSmapString() {
        return this.smapString;
    }
}
