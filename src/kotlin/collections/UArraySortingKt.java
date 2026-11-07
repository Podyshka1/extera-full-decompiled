package kotlin.collections;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a)\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\n\u0010\u000b\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\r\u0010\u000e\u001a)\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u000f\u0010\u0010\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0012\u0010\u0013\u001a)\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0014\u0010\u0015\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0017\u0010\u0018\u001a)\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0019\u0010\u001a\u001a)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b\u001e\u0010\u000b\u001a)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b\u001f\u0010\u0010\u001a)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b \u0010\u0015\u001a)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", _UrlKt.FRAGMENT_ENCODE_SET, "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", _UrlKt.FRAGMENT_ENCODE_SET, "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m3547partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte bM3163getw2LRezQ = UByteArray.m3163getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM3163getw2LRezQ = UByteArray.m3163getw2LRezQ(bArr, i) & UByte.MAX_VALUE;
                i3 = bM3163getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(iM3163getw2LRezQ, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m3163getw2LRezQ(bArr, i2) & UByte.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte bM3163getw2LRezQ2 = UByteArray.m3163getw2LRezQ(bArr, i);
                UByteArray.m3168setVurrAj0(bArr, i, UByteArray.m3163getw2LRezQ(bArr, i2));
                UByteArray.m3168setVurrAj0(bArr, i2, bM3163getw2LRezQ2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m3551quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int iM3547partition4UcCI2c = m3547partition4UcCI2c(bArr, i, i2);
        int i3 = iM3547partition4UcCI2c - 1;
        if (i < i3) {
            m3551quickSort4UcCI2c(bArr, i, i3);
        }
        if (iM3547partition4UcCI2c < i2) {
            m3551quickSort4UcCI2c(bArr, iM3547partition4UcCI2c, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m3548partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short sM3426getMh2AYeg = UShortArray.m3426getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM3426getMh2AYeg = UShortArray.m3426getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = sM3426getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM3426getMh2AYeg, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m3426getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short sM3426getMh2AYeg2 = UShortArray.m3426getMh2AYeg(sArr, i);
                UShortArray.m3431set01HTLdE(sArr, i, UShortArray.m3426getMh2AYeg(sArr, i2));
                UShortArray.m3431set01HTLdE(sArr, i2, sM3426getMh2AYeg2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m3552quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int iM3548partitionAa5vz7o = m3548partitionAa5vz7o(sArr, i, i2);
        int i3 = iM3548partitionAa5vz7o - 1;
        if (i < i3) {
            m3552quickSortAa5vz7o(sArr, i, i3);
        }
        if (iM3548partitionAa5vz7o < i2) {
            m3552quickSortAa5vz7o(sArr, iM3548partitionAa5vz7o, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m3549partitionoBK06Vg(int[] iArr, int i, int i2) {
        int iM3242getpVg5ArA = UIntArray.m3242getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (Integer.compare(UIntArray.m3242getpVg5ArA(iArr, i) ^ Integer.MIN_VALUE, iM3242getpVg5ArA ^ Integer.MIN_VALUE) < 0) {
                i++;
            }
            while (Integer.compare(UIntArray.m3242getpVg5ArA(iArr, i2) ^ Integer.MIN_VALUE, iM3242getpVg5ArA ^ Integer.MIN_VALUE) > 0) {
                i2--;
            }
            if (i <= i2) {
                int iM3242getpVg5ArA2 = UIntArray.m3242getpVg5ArA(iArr, i);
                UIntArray.m3247setVXSXFK8(iArr, i, UIntArray.m3242getpVg5ArA(iArr, i2));
                UIntArray.m3247setVXSXFK8(iArr, i2, iM3242getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m3553quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int iM3549partitionoBK06Vg = m3549partitionoBK06Vg(iArr, i, i2);
        int i3 = iM3549partitionoBK06Vg - 1;
        if (i < i3) {
            m3553quickSortoBK06Vg(iArr, i, i3);
        }
        if (iM3549partitionoBK06Vg < i2) {
            m3553quickSortoBK06Vg(iArr, iM3549partitionoBK06Vg, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m3546partitionnroSd4(long[] jArr, int i, int i2) {
        long jM3321getsVKNKU = ULongArray.m3321getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (Long.compare(ULongArray.m3321getsVKNKU(jArr, i) ^ Long.MIN_VALUE, jM3321getsVKNKU ^ Long.MIN_VALUE) < 0) {
                i++;
            }
            while (Long.compare(ULongArray.m3321getsVKNKU(jArr, i2) ^ Long.MIN_VALUE, jM3321getsVKNKU ^ Long.MIN_VALUE) > 0) {
                i2--;
            }
            if (i <= i2) {
                long jM3321getsVKNKU2 = ULongArray.m3321getsVKNKU(jArr, i);
                ULongArray.m3326setk8EXiF4(jArr, i, ULongArray.m3321getsVKNKU(jArr, i2));
                ULongArray.m3326setk8EXiF4(jArr, i2, jM3321getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m3550quickSortnroSd4(long[] jArr, int i, int i2) {
        int iM3546partitionnroSd4 = m3546partitionnroSd4(jArr, i, i2);
        int i3 = iM3546partitionnroSd4 - 1;
        if (i < i3) {
            m3550quickSortnroSd4(jArr, i, i3);
        }
        if (iM3546partitionnroSd4 < i2) {
            m3550quickSortnroSd4(jArr, iM3546partitionnroSd4, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m3555sortArray4UcCI2c(byte[] bArr, int i, int i2) {
        m3551quickSort4UcCI2c(bArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m3556sortArrayAa5vz7o(short[] sArr, int i, int i2) {
        m3552quickSortAa5vz7o(sArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m3557sortArrayoBK06Vg(int[] iArr, int i, int i2) {
        m3553quickSortoBK06Vg(iArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m3554sortArraynroSd4(long[] jArr, int i, int i2) {
        m3550quickSortnroSd4(jArr, i, i2 - 1);
    }
}
