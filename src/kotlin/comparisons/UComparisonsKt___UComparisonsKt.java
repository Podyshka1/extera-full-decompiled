package kotlin.comparisons;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a!\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\b\u0004\u0010\u0005\u001a!\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\u0080\u0004¢\u0006\u0004\b\u0007\u0010\b\u001a!\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0087\u0080\u0004¢\u0006\u0004\b\n\u0010\u000b\u001a!\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\fH\u0087\u0080\u0004¢\u0006\u0004\b\r\u0010\u000e\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\u0088\u0004¢\u0006\u0004\b\u0010\u0010\u0011\u001a)\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\u0088\u0004¢\u0006\u0004\b\u0012\u0010\u0013\u001a)\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\u0088\u0004¢\u0006\u0004\b\u0014\u0010\u0015\u001a)\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\u0088\u0004¢\u0006\u0004\b\u0016\u0010\u0017\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0018\u001a\u00020\u0019\"\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\b\u001a\u0010\u001b\u001a%\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\n\u0010\u0018\u001a\u00020\u001c\"\u00020\u0006H\u0087\u0080\u0004¢\u0006\u0004\b\u001d\u0010\u001e\u001a%\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u0018\u001a\u00020\u001f\"\u00020\tH\u0087\u0080\u0004¢\u0006\u0004\b \u0010!\u001a%\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\n\u0010\u0018\u001a\u00020\"\"\u00020\fH\u0087\u0080\u0004¢\u0006\u0004\b#\u0010$\u001a!\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\b&\u0010\u0005\u001a!\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\u0080\u0004¢\u0006\u0004\b'\u0010\b\u001a!\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0087\u0080\u0004¢\u0006\u0004\b(\u0010\u000b\u001a!\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\fH\u0087\u0080\u0004¢\u0006\u0004\b)\u0010\u000e\u001a)\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\u0088\u0004¢\u0006\u0004\b*\u0010\u0011\u001a)\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\u0088\u0004¢\u0006\u0004\b+\u0010\u0013\u001a)\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\u0088\u0004¢\u0006\u0004\b,\u0010\u0015\u001a)\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\u0088\u0004¢\u0006\u0004\b-\u0010\u0017\u001a%\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0018\u001a\u00020\u0019\"\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\b.\u0010\u001b\u001a%\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\n\u0010\u0018\u001a\u00020\u001c\"\u00020\u0006H\u0087\u0080\u0004¢\u0006\u0004\b/\u0010\u001e\u001a%\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u0018\u001a\u00020\u001f\"\u00020\tH\u0087\u0080\u0004¢\u0006\u0004\b0\u0010!\u001a%\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\n\u0010\u0018\u001a\u00020\"\"\u00020\fH\u0087\u0080\u0004¢\u0006\u0004\b1\u0010$¨\u00062"}, d2 = {"maxOf", "Lkotlin/UInt;", "a", "b", "maxOf-J1ME1BU", "(II)I", "Lkotlin/ULong;", "maxOf-eb3DHEI", "(JJ)J", "Lkotlin/UByte;", "maxOf-Kr8caGY", "(BB)B", "Lkotlin/UShort;", "maxOf-5PvTz6A", "(SS)S", "c", "maxOf-WZ9TVnA", "(III)I", "maxOf-sambcqE", "(JJJ)J", "maxOf-b33U2AM", "(BBB)B", "maxOf-VKSA0NQ", "(SSS)S", "other", "Lkotlin/UIntArray;", "maxOf-Md2H83M", "(I[I)I", "Lkotlin/ULongArray;", "maxOf-R03FKyM", "(J[J)J", "Lkotlin/UByteArray;", "maxOf-Wr6uiD8", "(B[B)B", "Lkotlin/UShortArray;", "maxOf-t1qELG4", "(S[S)S", "minOf", "minOf-J1ME1BU", "minOf-eb3DHEI", "minOf-Kr8caGY", "minOf-5PvTz6A", "minOf-WZ9TVnA", "minOf-sambcqE", "minOf-b33U2AM", "minOf-VKSA0NQ", "minOf-Md2H83M", "minOf-R03FKyM", "minOf-Wr6uiD8", "minOf-t1qELG4", "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/comparisons/UComparisonsKt")
public class UComparisonsKt___UComparisonsKt {
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: maxOf-J1ME1BU, reason: not valid java name */
    public static int m4281maxOfJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) >= 0 ? i : i2;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: maxOf-eb3DHEI, reason: not valid java name */
    public static long m4289maxOfeb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) >= 0 ? j : j2;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: maxOf-Kr8caGY, reason: not valid java name */
    public static final byte m4282maxOfKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b2 & UByte.MAX_VALUE, b3 & UByte.MAX_VALUE) >= 0 ? b2 : b3;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: maxOf-5PvTz6A, reason: not valid java name */
    public static final short m4280maxOf5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) >= 0 ? s : s2;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: maxOf-WZ9TVnA, reason: not valid java name */
    private static final int m4286maxOfWZ9TVnA(int i, int i2, int i3) {
        return m4281maxOfJ1ME1BU(i, m4281maxOfJ1ME1BU(i2, i3));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: maxOf-sambcqE, reason: not valid java name */
    private static final long m4290maxOfsambcqE(long j, long j2, long j3) {
        return m4289maxOfeb3DHEI(j, m4289maxOfeb3DHEI(j2, j3));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: maxOf-b33U2AM, reason: not valid java name */
    private static final byte m4288maxOfb33U2AM(byte b2, byte b3, byte b4) {
        return m4282maxOfKr8caGY(b2, m4282maxOfKr8caGY(b3, b4));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: maxOf-VKSA0NQ, reason: not valid java name */
    private static final short m4285maxOfVKSA0NQ(short s, short s2, short s3) {
        return m4280maxOf5PvTz6A(s, m4280maxOf5PvTz6A(s2, s3));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: maxOf-Md2H83M, reason: not valid java name */
    public static final int m4283maxOfMd2H83M(int i, int... iArr) {
        int iM3243getSizeimpl = UIntArray.m3243getSizeimpl(iArr);
        for (int i2 = 0; i2 < iM3243getSizeimpl; i2++) {
            i = m4281maxOfJ1ME1BU(i, UIntArray.m3242getpVg5ArA(iArr, i2));
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: maxOf-R03FKyM, reason: not valid java name */
    public static final long m4284maxOfR03FKyM(long j, long... jArr) {
        int iM3322getSizeimpl = ULongArray.m3322getSizeimpl(jArr);
        for (int i = 0; i < iM3322getSizeimpl; i++) {
            j = m4289maxOfeb3DHEI(j, ULongArray.m3321getsVKNKU(jArr, i));
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: maxOf-Wr6uiD8, reason: not valid java name */
    public static final byte m4287maxOfWr6uiD8(byte b2, byte... bArr) {
        int iM3164getSizeimpl = UByteArray.m3164getSizeimpl(bArr);
        for (int i = 0; i < iM3164getSizeimpl; i++) {
            b2 = m4282maxOfKr8caGY(b2, UByteArray.m3163getw2LRezQ(bArr, i));
        }
        return b2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: maxOf-t1qELG4, reason: not valid java name */
    public static final short m4291maxOft1qELG4(short s, short... sArr) {
        int iM3427getSizeimpl = UShortArray.m3427getSizeimpl(sArr);
        for (int i = 0; i < iM3427getSizeimpl; i++) {
            s = m4280maxOf5PvTz6A(s, UShortArray.m3426getMh2AYeg(sArr, i));
        }
        return s;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: minOf-J1ME1BU, reason: not valid java name */
    public static int m4293minOfJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) <= 0 ? i : i2;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: minOf-eb3DHEI, reason: not valid java name */
    public static long m4301minOfeb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) <= 0 ? j : j2;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: minOf-Kr8caGY, reason: not valid java name */
    public static final byte m4294minOfKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b2 & UByte.MAX_VALUE, b3 & UByte.MAX_VALUE) <= 0 ? b2 : b3;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: minOf-5PvTz6A, reason: not valid java name */
    public static final short m4292minOf5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) <= 0 ? s : s2;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: minOf-WZ9TVnA, reason: not valid java name */
    private static final int m4298minOfWZ9TVnA(int i, int i2, int i3) {
        return m4293minOfJ1ME1BU(i, m4293minOfJ1ME1BU(i2, i3));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: minOf-sambcqE, reason: not valid java name */
    private static final long m4302minOfsambcqE(long j, long j2, long j3) {
        return m4301minOfeb3DHEI(j, m4301minOfeb3DHEI(j2, j3));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: minOf-b33U2AM, reason: not valid java name */
    private static final byte m4300minOfb33U2AM(byte b2, byte b3, byte b4) {
        return m4294minOfKr8caGY(b2, m4294minOfKr8caGY(b3, b4));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: minOf-VKSA0NQ, reason: not valid java name */
    private static final short m4297minOfVKSA0NQ(short s, short s2, short s3) {
        return m4292minOf5PvTz6A(s, m4292minOf5PvTz6A(s2, s3));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: minOf-Md2H83M, reason: not valid java name */
    public static final int m4295minOfMd2H83M(int i, int... iArr) {
        int iM3243getSizeimpl = UIntArray.m3243getSizeimpl(iArr);
        for (int i2 = 0; i2 < iM3243getSizeimpl; i2++) {
            i = m4293minOfJ1ME1BU(i, UIntArray.m3242getpVg5ArA(iArr, i2));
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: minOf-R03FKyM, reason: not valid java name */
    public static final long m4296minOfR03FKyM(long j, long... jArr) {
        int iM3322getSizeimpl = ULongArray.m3322getSizeimpl(jArr);
        for (int i = 0; i < iM3322getSizeimpl; i++) {
            j = m4301minOfeb3DHEI(j, ULongArray.m3321getsVKNKU(jArr, i));
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: minOf-Wr6uiD8, reason: not valid java name */
    public static final byte m4299minOfWr6uiD8(byte b2, byte... bArr) {
        int iM3164getSizeimpl = UByteArray.m3164getSizeimpl(bArr);
        for (int i = 0; i < iM3164getSizeimpl; i++) {
            b2 = m4294minOfKr8caGY(b2, UByteArray.m3163getw2LRezQ(bArr, i));
        }
        return b2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: minOf-t1qELG4, reason: not valid java name */
    public static final short m4303minOft1qELG4(short s, short... sArr) {
        int iM3427getSizeimpl = UShortArray.m3427getSizeimpl(sArr);
        for (int i = 0; i < iM3427getSizeimpl; i++) {
            s = m4292minOf5PvTz6A(s, UShortArray.m3426getMh2AYeg(sArr, i));
        }
        return s;
    }
}
