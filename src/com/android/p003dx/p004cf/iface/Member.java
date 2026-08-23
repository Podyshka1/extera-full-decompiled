package com.android.p003dx.p004cf.iface;

import com.android.p003dx.rop.cst.CstNat;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;

/* JADX INFO: loaded from: classes4.dex */
public interface Member extends HasAttribute {
    int getAccessFlags();

    @Override // com.android.p003dx.p004cf.iface.HasAttribute
    AttributeList getAttributes();

    CstType getDefiningClass();

    CstString getDescriptor();

    CstString getName();

    CstNat getNat();
}
