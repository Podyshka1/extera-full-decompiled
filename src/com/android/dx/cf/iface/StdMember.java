package com.android.dx.cf.iface;

import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StdMember implements Member {
    private final int accessFlags;
    private final AttributeList attributes;
    private final CstType definingClass;
    private final CstNat nat;

    public StdMember(CstType cstType, int i, CstNat cstNat, AttributeList attributeList) {
        if (cstType == null) {
            f$$ExternalSyntheticBUOutline2.m216m("definingClass == null");
            throw null;
        }
        if (cstNat == null) {
            f$$ExternalSyntheticBUOutline2.m216m("nat == null");
            throw null;
        }
        if (attributeList == null) {
            f$$ExternalSyntheticBUOutline2.m216m("attributes == null");
            throw null;
        }
        this.definingClass = cstType;
        this.accessFlags = i;
        this.nat = cstNat;
        this.attributes = attributeList;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(getClass().getName());
        sb.append('{');
        sb.append(this.nat.toHuman());
        sb.append('}');
        return sb.toString();
    }

    @Override // com.android.dx.cf.iface.Member
    public final CstType getDefiningClass() {
        return this.definingClass;
    }

    @Override // com.android.dx.cf.iface.Member
    public final int getAccessFlags() {
        return this.accessFlags;
    }

    @Override // com.android.dx.cf.iface.Member
    public final CstNat getNat() {
        return this.nat;
    }

    @Override // com.android.dx.cf.iface.Member
    public final CstString getName() {
        return this.nat.getName();
    }

    @Override // com.android.dx.cf.iface.Member
    public final CstString getDescriptor() {
        return this.nat.getDescriptor();
    }

    @Override // com.android.dx.cf.iface.Member, com.android.dx.cf.iface.HasAttribute
    public final AttributeList getAttributes() {
        return this.attributes;
    }
}
