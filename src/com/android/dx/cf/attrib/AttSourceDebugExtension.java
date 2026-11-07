package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.CstString;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class AttSourceDebugExtension extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "SourceDebugExtension";
    private final CstString smapString;

    public AttSourceDebugExtension(CstString cstString) {
        super(ATTRIBUTE_NAME);
        if (cstString == null) {
            f$$ExternalSyntheticBUOutline2.m213m("smapString == null");
            throw null;
        }
        this.smapString = cstString;
    }

    @Override // com.android.dx.cf.iface.Attribute
    public int byteLength() {
        return this.smapString.getUtf8Size() + 6;
    }

    public CstString getSmapString() {
        return this.smapString;
    }
}
