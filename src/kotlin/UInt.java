package kotlin;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 x2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001xB\u0011\bA\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0087\u008a\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0000H\u0097\u008a\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0012H\u0087\u008a\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0015\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\u008a\u0004¢\u0006\u0004\b\u0016\u0010\fJ\u0019\u0010\u0015\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b\u0017\u0010\u000fJ\u0019\u0010\u0015\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b\u0018\u0010\u0011J\u0019\u0010\u0015\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\u008a\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\u008a\u0004¢\u0006\u0004\b\u001c\u0010\fJ\u0019\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b\u001d\u0010\u000fJ\u0019\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b\u001e\u0010\u0011J\u0019\u0010\u001b\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\u008a\u0004¢\u0006\u0004\b\u001f\u0010\u001aJ\u0019\u0010 \u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\u008a\u0004¢\u0006\u0004\b!\u0010\fJ\u0019\u0010 \u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b\"\u0010\u000fJ\u0019\u0010 \u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b#\u0010\u0011J\u0019\u0010 \u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\u008a\u0004¢\u0006\u0004\b$\u0010\u001aJ\u0019\u0010%\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\u008a\u0004¢\u0006\u0004\b&\u0010\fJ\u0019\u0010%\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b'\u0010\u000fJ\u0019\u0010%\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b(\u0010\u0011J\u0019\u0010%\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\u008a\u0004¢\u0006\u0004\b)\u0010\u001aJ\u0019\u0010*\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\u008a\u0004¢\u0006\u0004\b+\u0010\fJ\u0019\u0010*\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\u008a\u0004¢\u0006\u0004\b,\u0010\u000fJ\u0019\u0010*\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b-\u0010\u0011J\u0019\u0010*\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\u008a\u0004¢\u0006\u0004\b.\u0010\u001aJ\u0019\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\u0088\u0004¢\u0006\u0004\b0\u0010\fJ\u0019\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\u0088\u0004¢\u0006\u0004\b1\u0010\u000fJ\u0019\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b2\u0010\u0011J\u0019\u0010/\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\u0088\u0004¢\u0006\u0004\b3\u0010\u001aJ\u0019\u00104\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0087\u0088\u0004¢\u0006\u0004\b5\u00106J\u0019\u00104\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH\u0087\u0088\u0004¢\u0006\u0004\b7\u00108J\u0019\u00104\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b9\u0010\u0011J\u0019\u00104\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\u0088\u0004¢\u0006\u0004\b:\u0010\u001aJ\u0011\u0010;\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b<\u0010\u0005J\u0011\u0010=\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b>\u0010\u0005J\u0019\u0010?\u001a\u00020@2\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bA\u0010BJ\u0019\u0010C\u001a\u00020@2\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bD\u0010BJ\u0019\u0010E\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0003H\u0087\u008c\u0004¢\u0006\u0004\bG\u0010\u0011J\u0019\u0010H\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0003H\u0087\u008c\u0004¢\u0006\u0004\bI\u0010\u0011J\u0019\u0010J\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bK\u0010\u0011J\u0019\u0010L\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bM\u0010\u0011J\u0019\u0010N\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bO\u0010\u0011J\u0011\u0010P\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\bQ\u0010\u0005J\u0011\u0010R\u001a\u00020SH\u0087\u0088\u0004¢\u0006\u0004\bT\u0010UJ\u0011\u0010V\u001a\u00020WH\u0087\u0088\u0004¢\u0006\u0004\bX\u0010YJ\u0011\u0010Z\u001a\u00020\u0003H\u0087\u0088\u0004¢\u0006\u0004\b[\u0010\u0005J\u0011\u0010\\\u001a\u00020]H\u0087\u0088\u0004¢\u0006\u0004\b^\u0010_J\u0011\u0010`\u001a\u00020\nH\u0087\u0088\u0004¢\u0006\u0004\ba\u0010UJ\u0011\u0010b\u001a\u00020\rH\u0087\u0088\u0004¢\u0006\u0004\bc\u0010YJ\u0011\u0010d\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\be\u0010\u0005J\u0011\u0010f\u001a\u00020\u0012H\u0087\u0088\u0004¢\u0006\u0004\bg\u0010_J\u0011\u0010h\u001a\u00020iH\u0087\u0088\u0004¢\u0006\u0004\bj\u0010kJ\u0011\u0010l\u001a\u00020mH\u0087\u0088\u0004¢\u0006\u0004\bn\u0010oJ\u0011\u0010p\u001a\u00020qH\u0097\u0080\u0004¢\u0006\u0004\br\u0010sJ\u0014\u0010t\u001a\u00020u2\b\u0010\t\u001a\u0004\u0018\u00010vHÖ\u0083\u0004J\n\u0010w\u001a\u00020\u0003HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0084\b¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006y"}, d2 = {"Lkotlin/UInt;", _UrlKt.FRAGMENT_ENCODE_SET, "data", _UrlKt.FRAGMENT_ENCODE_SET, "constructor-impl", "(I)I", "getData$annotations", "()V", "compareTo", "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(IB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "compareTo-WZ4Q5Ns", "(II)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "plus", "plus-7apg3OU", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(IJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(IB)B", "mod-xj2QHRw", "(IS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-pVg5ArA", "dec", "dec-pVg5ArA", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-WZ4Q5Ns", "shl", "bitCount", "shl-pVg5ArA", "shr", "shr-pVg5ArA", "and", "and-WZ4Q5Ns", PluginsConstants.HookFilterTypes.OR, "or-WZ4Q5Ns", "xor", "xor-WZ4Q5Ns", "inv", "inv-pVg5ArA", "toByte", _UrlKt.FRAGMENT_ENCODE_SET, "toByte-impl", "(I)B", "toShort", _UrlKt.FRAGMENT_ENCODE_SET, "toShort-impl", "(I)S", "toInt", "toInt-impl", "toLong", _UrlKt.FRAGMENT_ENCODE_SET, "toLong-impl", "(I)J", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", _UrlKt.FRAGMENT_ENCODE_SET, "toFloat-impl", "(I)F", "toDouble", _UrlKt.FRAGMENT_ENCODE_SET, "toDouble-impl", "(I)D", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "equals", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "Companion", "kotlin-stdlib"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class UInt implements Comparable<UInt> {
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UInt m3697boximpl(int i) {
        return new UInt(i);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m3703constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3709equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).getData();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3710equalsimpl0(int i, int i2) {
        return i == i2;
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3715hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toByte-impl, reason: not valid java name */
    private static final byte m3743toByteimpl(int i) {
        return (byte) i;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    private static final int m3746toIntimpl(int i) {
        return i;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    private static final long m3747toLongimpl(int i) {
        return ((long) i) & 4294967295L;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toShort-impl, reason: not valid java name */
    private static final short m3748toShortimpl(int i) {
        return (short) i;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUInt-pVg5ArA, reason: not valid java name */
    private static final int m3751toUIntpVg5ArA(int i) {
        return i;
    }

    public boolean equals(Object other) {
        return m3709equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m3715hashCodeimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getData() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(getData(), uInt.getData());
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ UInt(int i) {
        this.data = i;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-7apg3OU, reason: not valid java name */
    private static final int m3698compareTo7apg3OU(int i, byte b2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, m3703constructorimpl(b2 & UByte.MAX_VALUE) ^ Integer.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private static final int m3702compareToxj2QHRw(int i, short s) {
        return Integer.compare(i ^ Integer.MIN_VALUE, m3703constructorimpl(s & UShort.MAX_VALUE) ^ Integer.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private int m3700compareToWZ4Q5Ns(int i) {
        return UnsignedKt.uintCompare(getData(), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private static int m3701compareToWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.uintCompare(i, i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private static final int m3699compareToVKZWuLQ(int i, long j) {
        return Long.compare(ULong.m3782constructorimpl(((long) i) & 4294967295L) ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-7apg3OU, reason: not valid java name */
    private static final int m3727plus7apg3OU(int i, byte b2) {
        return m3703constructorimpl(i + m3703constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-xj2QHRw, reason: not valid java name */
    private static final int m3730plusxj2QHRw(int i, short s) {
        return m3703constructorimpl(i + m3703constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-WZ4Q5Ns, reason: not valid java name */
    private static final int m3729plusWZ4Q5Ns(int i, int i2) {
        return m3703constructorimpl(i + i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-VKZWuLQ, reason: not valid java name */
    private static final long m3728plusVKZWuLQ(int i, long j) {
        return ULong.m3782constructorimpl(ULong.m3782constructorimpl(((long) i) & 4294967295L) + j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-7apg3OU, reason: not valid java name */
    private static final int m3718minus7apg3OU(int i, byte b2) {
        return m3703constructorimpl(i - m3703constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-xj2QHRw, reason: not valid java name */
    private static final int m3721minusxj2QHRw(int i, short s) {
        return m3703constructorimpl(i - m3703constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-WZ4Q5Ns, reason: not valid java name */
    private static final int m3720minusWZ4Q5Ns(int i, int i2) {
        return m3703constructorimpl(i - i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-VKZWuLQ, reason: not valid java name */
    private static final long m3719minusVKZWuLQ(int i, long j) {
        return ULong.m3782constructorimpl(ULong.m3782constructorimpl(((long) i) & 4294967295L) - j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-7apg3OU, reason: not valid java name */
    private static final int m3739times7apg3OU(int i, byte b2) {
        return m3703constructorimpl(i * m3703constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-xj2QHRw, reason: not valid java name */
    private static final int m3742timesxj2QHRw(int i, short s) {
        return m3703constructorimpl(i * m3703constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-WZ4Q5Ns, reason: not valid java name */
    private static final int m3741timesWZ4Q5Ns(int i, int i2) {
        return m3703constructorimpl(i * i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-VKZWuLQ, reason: not valid java name */
    private static final long m3740timesVKZWuLQ(int i, long j) {
        return ULong.m3782constructorimpl(ULong.m3782constructorimpl(((long) i) & 4294967295L) * j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-7apg3OU, reason: not valid java name */
    private static final int m3705div7apg3OU(int i, byte b2) {
        return UByte$$ExternalSyntheticBackport0.m911m(i, m3703constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-xj2QHRw, reason: not valid java name */
    private static final int m3708divxj2QHRw(int i, short s) {
        return UByte$$ExternalSyntheticBackport0.m911m(i, m3703constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-WZ4Q5Ns, reason: not valid java name */
    private static final int m3707divWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m3959uintDivideJ1ME1BU(i, i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-VKZWuLQ, reason: not valid java name */
    private static final long m3706divVKZWuLQ(int i, long j) {
        return UByte$$ExternalSyntheticBackport3.m914m(ULong.m3782constructorimpl(((long) i) & 4294967295L), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-7apg3OU, reason: not valid java name */
    private static final int m3733rem7apg3OU(int i, byte b2) {
        return UByte$$ExternalSyntheticBackport1.m912m(i, m3703constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-xj2QHRw, reason: not valid java name */
    private static final int m3736remxj2QHRw(int i, short s) {
        return UByte$$ExternalSyntheticBackport1.m912m(i, m3703constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-WZ4Q5Ns, reason: not valid java name */
    private static final int m3735remWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m3960uintRemainderJ1ME1BU(i, i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-VKZWuLQ, reason: not valid java name */
    private static final long m3734remVKZWuLQ(int i, long j) {
        return UByte$$ExternalSyntheticBackport2.m913m(ULong.m3782constructorimpl(((long) i) & 4294967295L), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-7apg3OU, reason: not valid java name */
    private static final int m3711floorDiv7apg3OU(int i, byte b2) {
        return UByte$$ExternalSyntheticBackport0.m911m(i, m3703constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-xj2QHRw, reason: not valid java name */
    private static final int m3714floorDivxj2QHRw(int i, short s) {
        return UByte$$ExternalSyntheticBackport0.m911m(i, m3703constructorimpl(s & UShort.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-WZ4Q5Ns, reason: not valid java name */
    private static final int m3713floorDivWZ4Q5Ns(int i, int i2) {
        return UByte$$ExternalSyntheticBackport0.m911m(i, i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-VKZWuLQ, reason: not valid java name */
    private static final long m3712floorDivVKZWuLQ(int i, long j) {
        return UByte$$ExternalSyntheticBackport3.m914m(ULong.m3782constructorimpl(((long) i) & 4294967295L), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-7apg3OU, reason: not valid java name */
    private static final byte m3722mod7apg3OU(int i, byte b2) {
        return UByte.m3626constructorimpl((byte) UByte$$ExternalSyntheticBackport1.m912m(i, m3703constructorimpl(b2 & UByte.MAX_VALUE)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-xj2QHRw, reason: not valid java name */
    private static final short m3725modxj2QHRw(int i, short s) {
        return UShort.m3889constructorimpl((short) UByte$$ExternalSyntheticBackport1.m912m(i, m3703constructorimpl(s & UShort.MAX_VALUE)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-WZ4Q5Ns, reason: not valid java name */
    private static final int m3724modWZ4Q5Ns(int i, int i2) {
        return UByte$$ExternalSyntheticBackport1.m912m(i, i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-VKZWuLQ, reason: not valid java name */
    private static final long m3723modVKZWuLQ(int i, long j) {
        return UByte$$ExternalSyntheticBackport2.m913m(ULong.m3782constructorimpl(((long) i) & 4294967295L), j);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inc-pVg5ArA, reason: not valid java name */
    private static final int m3716incpVg5ArA(int i) {
        return m3703constructorimpl(i + 1);
    }

    @InlineOnly
    /* JADX INFO: renamed from: dec-pVg5ArA, reason: not valid java name */
    private static final int m3704decpVg5ArA(int i) {
        return m3703constructorimpl(i - 1);
    }

    @InlineOnly
    /* JADX INFO: renamed from: rangeTo-WZ4Q5Ns, reason: not valid java name */
    private static final UIntRange m3731rangeToWZ4Q5Ns(int i, int i2) {
        return new UIntRange(i, i2, null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: rangeUntil-WZ4Q5Ns, reason: not valid java name */
    private static final UIntRange m3732rangeUntilWZ4Q5Ns(int i, int i2) {
        return URangesKt.m4893untilJ1ME1BU(i, i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: shl-pVg5ArA, reason: not valid java name */
    private static final int m3737shlpVg5ArA(int i, int i2) {
        return m3703constructorimpl(i << i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: shr-pVg5ArA, reason: not valid java name */
    private static final int m3738shrpVg5ArA(int i, int i2) {
        return m3703constructorimpl(i >>> i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: and-WZ4Q5Ns, reason: not valid java name */
    private static final int m3696andWZ4Q5Ns(int i, int i2) {
        return m3703constructorimpl(i & i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: or-WZ4Q5Ns, reason: not valid java name */
    private static final int m3726orWZ4Q5Ns(int i, int i2) {
        return m3703constructorimpl(i | i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: xor-WZ4Q5Ns, reason: not valid java name */
    private static final int m3754xorWZ4Q5Ns(int i, int i2) {
        return m3703constructorimpl(i ^ i2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: inv-pVg5ArA, reason: not valid java name */
    private static final int m3717invpVg5ArA(int i) {
        return m3703constructorimpl(~i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUByte-w2LRezQ, reason: not valid java name */
    private static final byte m3750toUBytew2LRezQ(int i) {
        return UByte.m3626constructorimpl((byte) i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUShort-Mh2AYeg, reason: not valid java name */
    private static final short m3753toUShortMh2AYeg(int i) {
        return UShort.m3889constructorimpl((short) i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toULong-s-VKNKU, reason: not valid java name */
    private static final long m3752toULongsVKNKU(int i) {
        return ULong.m3782constructorimpl(((long) i) & 4294967295L);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toFloat-impl, reason: not valid java name */
    private static final float m3745toFloatimpl(int i) {
        return (float) UnsignedKt.uintToDouble(i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    private static final double m3744toDoubleimpl(int i) {
        return UnsignedKt.uintToDouble(i);
    }

    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3749toStringimpl(int i) {
        return String.valueOf(((long) i) & 4294967295L);
    }

    @IntrinsicConstEvaluation
    public String toString() {
        return m3749toStringimpl(this.data);
    }
}
