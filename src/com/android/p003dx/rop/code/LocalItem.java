package com.android.p003dx.rop.code;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstString;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public class LocalItem implements Comparable<LocalItem> {
    private final CstString name;
    private final CstString signature;

    public static LocalItem make(CstString cstString, CstString cstString2) {
        if (cstString == null && cstString2 == null) {
            return null;
        }
        return new LocalItem(cstString, cstString2);
    }

    private LocalItem(CstString cstString, CstString cstString2) {
        this.name = cstString;
        this.signature = cstString2;
    }

    public boolean equals(Object obj) {
        return (obj instanceof LocalItem) && compareTo((LocalItem) obj) == 0;
    }

    private static int compareHandlesNulls(CstString cstString, CstString cstString2) {
        if (cstString == cstString2) {
            return 0;
        }
        if (cstString == null) {
            return -1;
        }
        if (cstString2 == null) {
            return 1;
        }
        return cstString.compareTo((Constant) cstString2);
    }

    @Override // java.lang.Comparable
    public int compareTo(LocalItem localItem) {
        int iCompareHandlesNulls = compareHandlesNulls(this.name, localItem.name);
        return iCompareHandlesNulls != 0 ? iCompareHandlesNulls : compareHandlesNulls(this.signature, localItem.signature);
    }

    public int hashCode() {
        CstString cstString = this.name;
        int iHashCode = (cstString == null ? 0 : cstString.hashCode()) * 31;
        CstString cstString2 = this.signature;
        return iHashCode + (cstString2 != null ? cstString2.hashCode() : 0);
    }

    public String toString() {
        CstString cstString = this.name;
        if (cstString != null && this.signature == null) {
            return cstString.toQuoted();
        }
        String quoted = _UrlKt.FRAGMENT_ENCODE_SET;
        if (cstString == null && this.signature == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        CstString cstString2 = this.name;
        sb.append(cstString2 == null ? _UrlKt.FRAGMENT_ENCODE_SET : cstString2.toQuoted());
        sb.append("|");
        CstString cstString3 = this.signature;
        if (cstString3 != null) {
            quoted = cstString3.toQuoted();
        }
        sb.append(quoted);
        return sb.toString();
    }

    public CstString getName() {
        return this.name;
    }

    public CstString getSignature() {
        return this.signature;
    }
}
