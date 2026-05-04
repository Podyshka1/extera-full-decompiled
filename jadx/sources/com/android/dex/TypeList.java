package com.android.dex;

import com.android.dex.util.Unsigned;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeList implements Comparable {
    public static final TypeList EMPTY = new TypeList(null, Dex.EMPTY_SHORT_ARRAY);
    private final Dex dex;
    private final short[] types;

    public TypeList(Dex dex, short[] sArr) {
        this.dex = dex;
        this.types = sArr;
    }

    public short[] getTypes() {
        return this.types;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0021, code lost:
    
        return com.android.dex.util.Unsigned.compare(r1.length, r5.types.length);
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int compareTo(TypeList typeList) {
        int i = 0;
        while (true) {
            short[] sArr = this.types;
            if (i >= sArr.length) {
                break;
            }
            short[] sArr2 = typeList.types;
            if (i >= sArr2.length) {
                break;
            }
            short s = sArr[i];
            short s2 = sArr2[i];
            if (s != s2) {
                return Unsigned.compare(s, s2);
            }
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        int length = this.types.length;
        for (int i = 0; i < length; i++) {
            Dex dex = this.dex;
            sb.append(dex != null ? (Serializable) dex.typeNames().get(this.types[i]) : Short.valueOf(this.types[i]));
        }
        sb.append(")");
        return sb.toString();
    }
}
