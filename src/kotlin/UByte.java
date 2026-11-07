package kotlin;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 s2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0011\bA\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\u008a\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b\u0017\u0010\fJ\u0019\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b\u0018\u0010\u000fJ\u0019\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b\u0019\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b\u001d\u0010\fJ\u0019\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b\u001e\u0010\u000fJ\u0019\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b\u001f\u0010\u0012J\u0019\u0010\u001c\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b \u0010\u001bJ\u0019\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b\"\u0010\fJ\u0019\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b#\u0010\u000fJ\u0019\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b$\u0010\u0012J\u0019\u0010!\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b%\u0010\u001bJ\u0019\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b'\u0010\fJ\u0019\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b(\u0010\u000fJ\u0019\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b)\u0010\u0012J\u0019\u0010&\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b*\u0010\u001bJ\u0019\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b,\u0010\fJ\u0019\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b-\u0010\u000fJ\u0019\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b.\u0010\u0012J\u0019\u0010+\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b/\u0010\u001bJ\u0019\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b1\u0010\fJ\u0019\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\u0088\u0004¢\u0006\u0004\b2\u0010\u000fJ\u0019\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u0088\u0004¢\u0006\u0004\b3\u0010\u0012J\u0019\u00100\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u0088\u0004¢\u0006\u0004\b4\u0010\u001bJ\u0019\u00105\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b6\u00107J\u0019\u00105\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\rH\u0087\u0088\u0004¢\u0006\u0004\b8\u00109J\u0019\u00105\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u0088\u0004¢\u0006\u0004\b:\u0010\u0012J\u0019\u00105\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u0088\u0004¢\u0006\u0004\b;\u0010\u001bJ\u0011\u0010<\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b=\u0010\u0005J\u0011\u0010>\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b?\u0010\u0005J\u0019\u0010@\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bB\u0010CJ\u0019\u0010D\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bE\u0010CJ\u0019\u0010F\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bG\u00107J\u0019\u0010H\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bI\u00107J\u0019\u0010J\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bK\u00107J\u0011\u0010L\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\bM\u0010\u0005J\u0011\u0010N\u001a\u00020\u0003H\u0087\u0088\u0004¢\u0006\u0004\bO\u0010\u0005J\u0011\u0010P\u001a\u00020QH\u0087\u0088\u0004¢\u0006\u0004\bR\u0010SJ\u0011\u0010T\u001a\u00020\tH\u0087\u0088\u0004¢\u0006\u0004\bU\u0010VJ\u0011\u0010W\u001a\u00020XH\u0087\u0088\u0004¢\u0006\u0004\bY\u0010ZJ\u0011\u0010[\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b\\\u0010\u0005J\u0011\u0010]\u001a\u00020\rH\u0087\u0088\u0004¢\u0006\u0004\b^\u0010SJ\u0011\u0010_\u001a\u00020\u0010H\u0087\u0088\u0004¢\u0006\u0004\b`\u0010VJ\u0011\u0010a\u001a\u00020\u0013H\u0087\u0088\u0004¢\u0006\u0004\bb\u0010ZJ\u0011\u0010c\u001a\u00020dH\u0087\u0088\u0004¢\u0006\u0004\be\u0010fJ\u0011\u0010g\u001a\u00020hH\u0087\u0088\u0004¢\u0006\u0004\bi\u0010jJ\u0011\u0010k\u001a\u00020lH\u0097\u0080\u0004¢\u0006\u0004\bm\u0010nJ\u0014\u0010o\u001a\u00020p2\b\u0010\n\u001a\u0004\u0018\u00010qHÖ\u0083\u0004J\n\u0010r\u001a\u00020\tHÖ\u0081\u0004R\u0017\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0084\b¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006t"}, d2 = {"Lkotlin/UByte;", _UrlKt.FRAGMENT_ENCODE_SET, "data", _UrlKt.FRAGMENT_ENCODE_SET, "constructor-impl", "(B)B", "getData$annotations", "()V", "compareTo", _UrlKt.FRAGMENT_ENCODE_SET, "other", "compareTo-7apg3OU", "(BB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(BS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(BI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(BJ)I", "plus", "plus-7apg3OU", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(BJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(BB)B", "mod-xj2QHRw", "(BS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-w2LRezQ", "dec", "dec-w2LRezQ", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-7apg3OU", "(BB)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-7apg3OU", "and", "and-7apg3OU", PluginsConstants.HookFilterTypes.OR, "or-7apg3OU", "xor", "xor-7apg3OU", "inv", "inv-w2LRezQ", "toByte", "toByte-impl", "toShort", _UrlKt.FRAGMENT_ENCODE_SET, "toShort-impl", "(B)S", "toInt", "toInt-impl", "(B)I", "toLong", _UrlKt.FRAGMENT_ENCODE_SET, "toLong-impl", "(B)J", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", _UrlKt.FRAGMENT_ENCODE_SET, "toFloat-impl", "(B)F", "toDouble", _UrlKt.FRAGMENT_ENCODE_SET, "toDouble-impl", "(B)D", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(B)Ljava/lang/String;", "equals", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class UByte implements Comparable<UByte> {
    public static final byte MAX_VALUE = -1;
    public static final byte MIN_VALUE = 0;
    public static final int SIZE_BITS = 8;
    public static final int SIZE_BYTES = 1;
    private final byte data;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UByte m3099boximpl(byte b2) {
        return new UByte(b2);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static byte m3105constructorimpl(byte b2) {
        return b2;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3111equalsimpl(byte b2, Object obj) {
        return (obj instanceof UByte) && b2 == ((UByte) obj).getData();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3112equalsimpl0(byte b2, byte b3) {
        return b2 == b3;
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3117hashCodeimpl(byte b2) {
        return Byte.hashCode(b2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toByte-impl, reason: not valid java name */
    private static final byte m3143toByteimpl(byte b2) {
        return b2;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    private static final int m3146toIntimpl(byte b2) {
        return b2 & MAX_VALUE;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    private static final long m3147toLongimpl(byte b2) {
        return ((long) b2) & 255;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toShort-impl, reason: not valid java name */
    private static final short m3148toShortimpl(byte b2) {
        return (short) (b2 & 255);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUByte-w2LRezQ, reason: not valid java name */
    private static final byte m3150toUBytew2LRezQ(byte b2) {
        return b2;
    }

    public boolean equals(Object other) {
        return m3111equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m3117hashCodeimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ byte getData() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return Intrinsics.compare(getData() & MAX_VALUE, uByte.getData() & MAX_VALUE);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ UByte(byte b2) {
        this.data = b2;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-7apg3OU, reason: not valid java name */
    private int m3100compareTo7apg3OU(byte b2) {
        return Intrinsics.compare(getData() & MAX_VALUE, b2 & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-7apg3OU, reason: not valid java name */
    private static int m3101compareTo7apg3OU(byte b2, byte b3) {
        return Intrinsics.compare(b2 & MAX_VALUE, b3 & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private static final int m3104compareToxj2QHRw(byte b2, short s) {
        return Intrinsics.compare(b2 & MAX_VALUE, s & UShort.MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private static final int m3103compareToWZ4Q5Ns(byte b2, int i) {
        return Integer.compare(UInt.m3182constructorimpl(b2 & MAX_VALUE) ^ Integer.MIN_VALUE, i ^ Integer.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private static final int m3102compareToVKZWuLQ(byte b2, long j) {
        return Long.compare(ULong.m3261constructorimpl(((long) b2) & 255) ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-7apg3OU, reason: not valid java name */
    private static final int m3129plus7apg3OU(byte b2, byte b3) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) + UInt.m3182constructorimpl(b3 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-xj2QHRw, reason: not valid java name */
    private static final int m3132plusxj2QHRw(byte b2, short s) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) + UInt.m3182constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-WZ4Q5Ns, reason: not valid java name */
    private static final int m3131plusWZ4Q5Ns(byte b2, int i) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) + i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-VKZWuLQ, reason: not valid java name */
    private static final long m3130plusVKZWuLQ(byte b2, long j) {
        return ULong.m3261constructorimpl(ULong.m3261constructorimpl(((long) b2) & 255) + j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-7apg3OU, reason: not valid java name */
    private static final int m3120minus7apg3OU(byte b2, byte b3) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) - UInt.m3182constructorimpl(b3 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-xj2QHRw, reason: not valid java name */
    private static final int m3123minusxj2QHRw(byte b2, short s) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) - UInt.m3182constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-WZ4Q5Ns, reason: not valid java name */
    private static final int m3122minusWZ4Q5Ns(byte b2, int i) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) - i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-VKZWuLQ, reason: not valid java name */
    private static final long m3121minusVKZWuLQ(byte b2, long j) {
        return ULong.m3261constructorimpl(ULong.m3261constructorimpl(((long) b2) & 255) - j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-7apg3OU, reason: not valid java name */
    private static final int m3139times7apg3OU(byte b2, byte b3) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) * UInt.m3182constructorimpl(b3 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-xj2QHRw, reason: not valid java name */
    private static final int m3142timesxj2QHRw(byte b2, short s) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) * UInt.m3182constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-WZ4Q5Ns, reason: not valid java name */
    private static final int m3141timesWZ4Q5Ns(byte b2, int i) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(b2 & MAX_VALUE) * i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-VKZWuLQ, reason: not valid java name */
    private static final long m3140timesVKZWuLQ(byte b2, long j) {
        return ULong.m3261constructorimpl(ULong.m3261constructorimpl(((long) b2) & 255) * j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-7apg3OU, reason: not valid java name */
    private static final int m3107div7apg3OU(byte b2, byte b3) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(b3 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-xj2QHRw, reason: not valid java name */
    private static final int m3110divxj2QHRw(byte b2, short s) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-WZ4Q5Ns, reason: not valid java name */
    private static final int m3109divWZ4Q5Ns(byte b2, int i) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(b2 & MAX_VALUE), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-VKZWuLQ, reason: not valid java name */
    private static final long m3108divVKZWuLQ(byte b2, long j) {
        return UByte$$ExternalSyntheticBackport3.m866m(ULong.m3261constructorimpl(((long) b2) & 255), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-7apg3OU, reason: not valid java name */
    private static final int m3135rem7apg3OU(byte b2, byte b3) {
        return UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(b3 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-xj2QHRw, reason: not valid java name */
    private static final int m3138remxj2QHRw(byte b2, short s) {
        return UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-WZ4Q5Ns, reason: not valid java name */
    private static final int m3137remWZ4Q5Ns(byte b2, int i) {
        return UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(b2 & MAX_VALUE), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-VKZWuLQ, reason: not valid java name */
    private static final long m3136remVKZWuLQ(byte b2, long j) {
        return UByte$$ExternalSyntheticBackport2.m865m(ULong.m3261constructorimpl(((long) b2) & 255), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-7apg3OU, reason: not valid java name */
    private static final int m3113floorDiv7apg3OU(byte b2, byte b3) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(b3 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-xj2QHRw, reason: not valid java name */
    private static final int m3116floorDivxj2QHRw(byte b2, short s) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-WZ4Q5Ns, reason: not valid java name */
    private static final int m3115floorDivWZ4Q5Ns(byte b2, int i) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(b2 & MAX_VALUE), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-VKZWuLQ, reason: not valid java name */
    private static final long m3114floorDivVKZWuLQ(byte b2, long j) {
        return UByte$$ExternalSyntheticBackport3.m866m(ULong.m3261constructorimpl(((long) b2) & 255), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-7apg3OU, reason: not valid java name */
    private static final byte m3124mod7apg3OU(byte b2, byte b3) {
        return m3105constructorimpl((byte) UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(b3 & MAX_VALUE)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-xj2QHRw, reason: not valid java name */
    private static final short m3127modxj2QHRw(byte b2, short s) {
        return UShort.m3368constructorimpl((short) UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(s & UShort.MAX_VALUE)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-WZ4Q5Ns, reason: not valid java name */
    private static final int m3126modWZ4Q5Ns(byte b2, int i) {
        return UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(b2 & MAX_VALUE), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-VKZWuLQ, reason: not valid java name */
    private static final long m3125modVKZWuLQ(byte b2, long j) {
        return UByte$$ExternalSyntheticBackport2.m865m(ULong.m3261constructorimpl(((long) b2) & 255), j);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inc-w2LRezQ, reason: not valid java name */
    private static final byte m3118incw2LRezQ(byte b2) {
        return m3105constructorimpl((byte) (b2 + 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: dec-w2LRezQ, reason: not valid java name */
    private static final byte m3106decw2LRezQ(byte b2) {
        return m3105constructorimpl((byte) (b2 - 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: rangeTo-7apg3OU, reason: not valid java name */
    private static final UIntRange m3133rangeTo7apg3OU(byte b2, byte b3) {
        return new UIntRange(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(b3 & MAX_VALUE), null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: rangeUntil-7apg3OU, reason: not valid java name */
    private static final UIntRange m3134rangeUntil7apg3OU(byte b2, byte b3) {
        return URangesKt.m4372untilJ1ME1BU(UInt.m3182constructorimpl(b2 & MAX_VALUE), UInt.m3182constructorimpl(b3 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: and-7apg3OU, reason: not valid java name */
    private static final byte m3098and7apg3OU(byte b2, byte b3) {
        return m3105constructorimpl((byte) (b2 & b3));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: or-7apg3OU, reason: not valid java name */
    private static final byte m3128or7apg3OU(byte b2, byte b3) {
        return m3105constructorimpl((byte) (b2 | b3));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: xor-7apg3OU, reason: not valid java name */
    private static final byte m3154xor7apg3OU(byte b2, byte b3) {
        return m3105constructorimpl((byte) (b2 ^ b3));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: inv-w2LRezQ, reason: not valid java name */
    private static final byte m3119invw2LRezQ(byte b2) {
        return m3105constructorimpl((byte) (~b2));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUShort-Mh2AYeg, reason: not valid java name */
    private static final short m3153toUShortMh2AYeg(byte b2) {
        return UShort.m3368constructorimpl((short) (b2 & 255));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUInt-pVg5ArA, reason: not valid java name */
    private static final int m3151toUIntpVg5ArA(byte b2) {
        return UInt.m3182constructorimpl(b2 & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toULong-s-VKNKU, reason: not valid java name */
    private static final long m3152toULongsVKNKU(byte b2) {
        return ULong.m3261constructorimpl(((long) b2) & 255);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toFloat-impl, reason: not valid java name */
    private static final float m3145toFloatimpl(byte b2) {
        return (float) UnsignedKt.uintToDouble(b2 & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    private static final double m3144toDoubleimpl(byte b2) {
        return UnsignedKt.uintToDouble(b2 & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3149toStringimpl(byte b2) {
        return String.valueOf(b2 & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    public String toString() {
        return m3149toStringimpl(this.data);
    }
}
