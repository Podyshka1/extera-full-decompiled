package com.android.p003dx.p004cf.iface;

import com.android.p003dx.rop.cst.CstNat;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StdMember implements Member {
    private final int accessFlags;
    private final AttributeList attributes;
    private final CstType definingClass;
    private final CstNat nat;

    public StdMember(CstType cstType, int i, CstNat cstNat, AttributeList attributeList) {
        if (cstType == null) {
            throw new NullPointerException("definingClass == null");
        }
        if (cstNat == null) {
            throw new NullPointerException("nat == null");
        }
        if (attributeList == null) {
            throw new NullPointerException("attributes == null");
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

    @Override // com.android.p003dx.p004cf.iface.Member
    public final CstType getDefiningClass() {
        return this.definingClass;
    }

    @Override // com.android.p003dx.p004cf.iface.Member
    public final int getAccessFlags() {
        return this.accessFlags;
    }

    @Override // com.android.p003dx.p004cf.iface.Member
    public final CstNat getNat() {
        return this.nat;
    }

    @Override // com.android.p003dx.p004cf.iface.Member
    public final CstString getName() {
        return this.nat.getName();
    }

    @Override // com.android.p003dx.p004cf.iface.Member
    public final CstString getDescriptor() {
        return this.nat.getDescriptor();
    }

    @Override // com.android.p003dx.p004cf.iface.Member, com.android.p003dx.p004cf.iface.HasAttribute
    public final AttributeList getAttributes() {
        return this.attributes;
    }
}
