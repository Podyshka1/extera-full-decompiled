package com.android.p003dx.p004cf.iface;

import com.android.p003dx.rop.code.AccessFlags;
import com.android.p003dx.rop.cst.CstNat;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.type.Prototype;

/* JADX INFO: loaded from: classes4.dex */
public final class StdMethod extends StdMember implements Method {
    private final Prototype effectiveDescriptor;

    public StdMethod(CstType cstType, int i, CstNat cstNat, AttributeList attributeList) {
        super(cstType, i, cstNat, attributeList);
        this.effectiveDescriptor = Prototype.intern(getDescriptor().getString(), cstType.getClassType(), AccessFlags.isStatic(i), cstNat.isInstanceInit());
    }

    @Override // com.android.p003dx.p004cf.iface.Method
    public Prototype getEffectiveDescriptor() {
        return this.effectiveDescriptor;
    }
}
