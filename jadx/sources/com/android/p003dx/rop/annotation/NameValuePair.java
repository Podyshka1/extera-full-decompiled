package com.android.p003dx.rop.annotation;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstString;

/* JADX INFO: loaded from: classes4.dex */
public final class NameValuePair implements Comparable<NameValuePair> {
    private final CstString name;
    private final Constant value;

    public NameValuePair(CstString cstString, Constant constant) {
        if (cstString == null) {
            throw new NullPointerException("name == null");
        }
        if (constant == null) {
            throw new NullPointerException("value == null");
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
