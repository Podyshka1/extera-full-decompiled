package kotlin.collections.unsigned;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
public abstract class UArraysKt___UArraysKt extends UArraysKt___UArraysJvmKt {
    /* JADX INFO: renamed from: contentEquals-KJPZfPQ, reason: not valid java name */
    public static boolean m3620contentEqualsKJPZfPQ(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            iArr = null;
        }
        if (iArr2 == null) {
            iArr2 = null;
        }
        return Arrays.equals(iArr, iArr2);
    }

    /* JADX INFO: renamed from: contentEquals-lec5QzE, reason: not valid java name */
    public static boolean m3622contentEqualslec5QzE(long[] jArr, long[] jArr2) {
        if (jArr == null) {
            jArr = null;
        }
        if (jArr2 == null) {
            jArr2 = null;
        }
        return Arrays.equals(jArr, jArr2);
    }

    /* JADX INFO: renamed from: contentEquals-kV0jMPg, reason: not valid java name */
    public static boolean m3621contentEqualskV0jMPg(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            bArr = null;
        }
        if (bArr2 == null) {
            bArr2 = null;
        }
        return Arrays.equals(bArr, bArr2);
    }

    /* JADX INFO: renamed from: contentEquals-FGO6Aew, reason: not valid java name */
    public static boolean m3619contentEqualsFGO6Aew(short[] sArr, short[] sArr2) {
        if (sArr == null) {
            sArr = null;
        }
        if (sArr2 == null) {
            sArr2 = null;
        }
        return Arrays.equals(sArr, sArr2);
    }
}
