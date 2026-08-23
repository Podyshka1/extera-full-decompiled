package com.android.p003dx.p004cf.attrib;

import com.android.p003dx.rop.cst.CstString;

/* JADX INFO: loaded from: classes4.dex */
public final class AttSourceFile extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "SourceFile";
    private final CstString sourceFile;

    @Override // com.android.p003dx.p004cf.iface.Attribute
    public int byteLength() {
        return 8;
    }

    public AttSourceFile(CstString cstString) {
        super(ATTRIBUTE_NAME);
        if (cstString == null) {
            throw new NullPointerException("sourceFile == null");
        }
        this.sourceFile = cstString;
    }

    public CstString getSourceFile() {
        return this.sourceFile;
    }
}
