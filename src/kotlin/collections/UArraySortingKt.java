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
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a)\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\n\u0010\u000b\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\r\u0010\u000e\u001a)\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u000f\u0010\u0010\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0012\u0010\u0013\u001a)\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0014\u0010\u0015\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0017\u0010\u0018\u001a)\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0083\u0080\u0004¢\u0006\u0004\b\u0019\u0010\u001a\u001a)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b\u001e\u0010\u000b\u001a)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b\u001f\u0010\u0010\u001a)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b \u0010\u0015\u001a)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0081\u0080\u0004¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", _UrlKt.FRAGMENT_ENCODE_SET, "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", _UrlKt.FRAGMENT_ENCODE_SET, "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m3751partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte bM3367getw2LRezQ = UByteArray.m3367getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM3367getw2LRezQ = UByteArray.m3367getw2LRezQ(bArr, i) & UByte.MAX_VALUE;
                i3 = bM3367getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(iM3367getw2LRezQ, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m3367getw2LRezQ(bArr, i2) & UByte.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte bM3367getw2LRezQ2 = UByteArray.m3367getw2LRezQ(bArr, i);
                UByteArray.m3372setVurrAj0(bArr, i, UByteArray.m3367getw2LRezQ(bArr, i2));
                UByteArray.m3372setVurrAj0(bArr, i2, bM3367getw2LRezQ2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m3755quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int iM3751partition4UcCI2c = m3751partition4UcCI2c(bArr, i, i2);
        int i3 = iM3751partition4UcCI2c - 1;
        if (i < i3) {
            m3755quickSort4UcCI2c(bArr, i, i3);
        }
        if (iM3751partition4UcCI2c < i2) {
            m3755quickSort4UcCI2c(bArr, iM3751partition4UcCI2c, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m3752partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short sM3630getMh2AYeg = UShortArray.m3630getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM3630getMh2AYeg = UShortArray.m3630getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = sM3630getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM3630getMh2AYeg, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m3630getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short sM3630getMh2AYeg2 = UShortArray.m3630getMh2AYeg(sArr, i);
                UShortArray.m3635set01HTLdE(sArr, i, UShortArray.m3630getMh2AYeg(sArr, i2));
                UShortArray.m3635set01HTLdE(sArr, i2, sM3630getMh2AYeg2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m3756quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int iM3752partitionAa5vz7o = m3752partitionAa5vz7o(sArr, i, i2);
        int i3 = iM3752partitionAa5vz7o - 1;
        if (i < i3) {
            m3756quickSortAa5vz7o(sArr, i, i3);
        }
        if (iM3752partitionAa5vz7o < i2) {
            m3756quickSortAa5vz7o(sArr, iM3752partitionAa5vz7o, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m3753partitionoBK06Vg(int[] iArr, int i, int i2) {
        int iM3446getpVg5ArA = UIntArray.m3446getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (Integer.compare(UIntArray.m3446getpVg5ArA(iArr, i) ^ Integer.MIN_VALUE, iM3446getpVg5ArA ^ Integer.MIN_VALUE) < 0) {
                i++;
            }
            while (Integer.compare(UIntArray.m3446getpVg5ArA(iArr, i2) ^ Integer.MIN_VALUE, iM3446getpVg5ArA ^ Integer.MIN_VALUE) > 0) {
                i2--;
            }
            if (i <= i2) {
                int iM3446getpVg5ArA2 = UIntArray.m3446getpVg5ArA(iArr, i);
                UIntArray.m3451setVXSXFK8(iArr, i, UIntArray.m3446getpVg5ArA(iArr, i2));
                UIntArray.m3451setVXSXFK8(iArr, i2, iM3446getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m3757quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int iM3753partitionoBK06Vg = m3753partitionoBK06Vg(iArr, i, i2);
        int i3 = iM3753partitionoBK06Vg - 1;
        if (i < i3) {
            m3757quickSortoBK06Vg(iArr, i, i3);
        }
        if (iM3753partitionoBK06Vg < i2) {
            m3757quickSortoBK06Vg(iArr, iM3753partitionoBK06Vg, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m3750partitionnroSd4(long[] jArr, int i, int i2) {
        long jM3525getsVKNKU = ULongArray.m3525getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (Long.compare(ULongArray.m3525getsVKNKU(jArr, i) ^ Long.MIN_VALUE, jM3525getsVKNKU ^ Long.MIN_VALUE) < 0) {
                i++;
            }
            while (Long.compare(ULongArray.m3525getsVKNKU(jArr, i2) ^ Long.MIN_VALUE, jM3525getsVKNKU ^ Long.MIN_VALUE) > 0) {
                i2--;
            }
            if (i <= i2) {
                long jM3525getsVKNKU2 = ULongArray.m3525getsVKNKU(jArr, i);
                ULongArray.m3530setk8EXiF4(jArr, i, ULongArray.m3525getsVKNKU(jArr, i2));
                ULongArray.m3530setk8EXiF4(jArr, i2, jM3525getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m3754quickSortnroSd4(long[] jArr, int i, int i2) {
        int iM3750partitionnroSd4 = m3750partitionnroSd4(jArr, i, i2);
        int i3 = iM3750partitionnroSd4 - 1;
        if (i < i3) {
            m3754quickSortnroSd4(jArr, i, i3);
        }
        if (iM3750partitionnroSd4 < i2) {
            m3754quickSortnroSd4(jArr, iM3750partitionnroSd4, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m3759sortArray4UcCI2c(byte[] bArr, int i, int i2) {
        m3755quickSort4UcCI2c(bArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m3760sortArrayAa5vz7o(short[] sArr, int i, int i2) {
        m3756quickSortAa5vz7o(sArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m3761sortArrayoBK06Vg(int[] iArr, int i, int i2) {
        m3757quickSortoBK06Vg(iArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m3758sortArraynroSd4(long[] jArr, int i, int i2) {
        m3754quickSortnroSd4(jArr, i, i2 - 1);
    }
}
