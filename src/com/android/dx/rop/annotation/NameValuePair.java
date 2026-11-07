package com.android.dx.rop.annotation;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstString;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class NameValuePair implements Comparable<NameValuePair> {
    private final CstString name;
    private final Constant value;

    public NameValuePair(CstString cstString, Constant constant) {
        if (cstString == null) {
            f$$ExternalSyntheticBUOutline2.m213m("name == null");
            throw null;
        }
        if (constant == null) {
            f$$ExternalSyntheticBUOutline2.m213m("value == null");
            throw null;
        }
        this.name = cstString;
        this.value = constant;
    }

    public String toString() {
        return this.name.toHuman() + ":" + this.value;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.value.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NameValuePair)) {
            return false;
        }
        NameValuePair nameValuePair = (NameValuePair) obj;
        return this.name.equals(nameValuePair.name) && this.value.equals(nameValuePair.value);
    }

    @Override // java.lang.Comparable
    public int compareTo(NameValuePair nameValuePair) {
        int iCompareTo = this.name.compareTo((Constant) nameValuePair.name);
        return iCompareTo != 0 ? iCompareTo : this.value.compareTo(nameValuePair.value);
    }

    public CstString getName() {
        return this.name;
    }

    public Constant getValue() {
        return this.value;
    }
}
