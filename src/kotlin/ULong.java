package kotlin;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.ranges.ULongRange;
import kotlin.ranges.URangesKt;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 {2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001{B\u0011\bA\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000eH\u0087\u008a\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0011H\u0087\u008a\u0004¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\u008a\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\u008a\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\u008a\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b \u0010\u0018J\u0019\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\u008a\u0004¢\u0006\u0004\b!\u0010\u001aJ\u0019\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\u008a\u0004¢\u0006\u0004\b\"\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b#\u0010\u001eJ\u0019\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b%\u0010\u0018J\u0019\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\u008a\u0004¢\u0006\u0004\b&\u0010\u001aJ\u0019\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\u008a\u0004¢\u0006\u0004\b'\u0010\u001cJ\u0019\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b(\u0010\u001eJ\u0019\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b*\u0010\u0018J\u0019\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\u008a\u0004¢\u0006\u0004\b+\u0010\u001aJ\u0019\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\u008a\u0004¢\u0006\u0004\b,\u0010\u001cJ\u0019\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b-\u0010\u001eJ\u0019\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b/\u0010\u0018J\u0019\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\u008a\u0004¢\u0006\u0004\b0\u0010\u001aJ\u0019\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\u008a\u0004¢\u0006\u0004\b1\u0010\u001cJ\u0019\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b2\u0010\u001eJ\u0019\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\u0088\u0004¢\u0006\u0004\b4\u0010\u0018J\u0019\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\u0088\u0004¢\u0006\u0004\b5\u0010\u001aJ\u0019\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\u0088\u0004¢\u0006\u0004\b6\u0010\u001cJ\u0019\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b7\u0010\u001eJ\u0019\u00108\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0087\u0088\u0004¢\u0006\u0004\b9\u0010:J\u0019\u00108\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000eH\u0087\u0088\u0004¢\u0006\u0004\b;\u0010<J\u0019\u00108\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0011H\u0087\u0088\u0004¢\u0006\u0004\b=\u0010\u0013J\u0019\u00108\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b>\u0010\u001eJ\u0011\u0010?\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b@\u0010\u0005J\u0011\u0010A\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bB\u0010\u0005J\u0019\u0010C\u001a\u00020D2\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bE\u0010FJ\u0019\u0010G\u001a\u00020D2\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bH\u0010FJ\u0019\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\tH\u0087\u008c\u0004¢\u0006\u0004\bK\u0010\u001cJ\u0019\u0010L\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\tH\u0087\u008c\u0004¢\u0006\u0004\bM\u0010\u001cJ\u0019\u0010N\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bO\u0010\u001eJ\u0019\u0010P\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bQ\u0010\u001eJ\u0019\u0010R\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bS\u0010\u001eJ\u0011\u0010T\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\bU\u0010\u0005J\u0011\u0010V\u001a\u00020WH\u0087\u0088\u0004¢\u0006\u0004\bX\u0010YJ\u0011\u0010Z\u001a\u00020[H\u0087\u0088\u0004¢\u0006\u0004\b\\\u0010]J\u0011\u0010^\u001a\u00020\tH\u0087\u0088\u0004¢\u0006\u0004\b_\u0010`J\u0011\u0010a\u001a\u00020\u0003H\u0087\u0088\u0004¢\u0006\u0004\bb\u0010\u0005J\u0011\u0010c\u001a\u00020\u000bH\u0087\u0088\u0004¢\u0006\u0004\bd\u0010YJ\u0011\u0010e\u001a\u00020\u000eH\u0087\u0088\u0004¢\u0006\u0004\bf\u0010]J\u0011\u0010g\u001a\u00020\u0011H\u0087\u0088\u0004¢\u0006\u0004\bh\u0010`J\u0011\u0010i\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\bj\u0010\u0005J\u0011\u0010k\u001a\u00020lH\u0087\u0088\u0004¢\u0006\u0004\bm\u0010nJ\u0011\u0010o\u001a\u00020pH\u0087\u0088\u0004¢\u0006\u0004\bq\u0010rJ\u0011\u0010s\u001a\u00020tH\u0097\u0080\u0004¢\u0006\u0004\bu\u0010vJ\u0014\u0010w\u001a\u00020x2\b\u0010\n\u001a\u0004\u0018\u00010yHÖ\u0083\u0004J\n\u0010z\u001a\u00020\tHÖ\u0081\u0004R\u0017\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0084\b¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006|"}, d2 = {"Lkotlin/ULong;", _UrlKt.FRAGMENT_ENCODE_SET, "data", _UrlKt.FRAGMENT_ENCODE_SET, "constructor-impl", "(J)J", "getData$annotations", "()V", "compareTo", _UrlKt.FRAGMENT_ENCODE_SET, "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(JB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(JS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(JI)I", "compareTo-VKZWuLQ", "(JJ)I", "plus", "plus-7apg3OU", "(JB)J", "plus-xj2QHRw", "(JS)J", "plus-WZ4Q5Ns", "(JI)J", "plus-VKZWuLQ", "(JJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(JB)B", "mod-xj2QHRw", "(JS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-s-VKNKU", "dec", "dec-s-VKNKU", "rangeTo", "Lkotlin/ranges/ULongRange;", "rangeTo-VKZWuLQ", "(JJ)Lkotlin/ranges/ULongRange;", "rangeUntil", "rangeUntil-VKZWuLQ", "shl", "bitCount", "shl-s-VKNKU", "shr", "shr-s-VKNKU", "and", "and-VKZWuLQ", PluginsConstants.HookFilterTypes.OR, "or-VKZWuLQ", "xor", "xor-VKZWuLQ", "inv", "inv-s-VKNKU", "toByte", _UrlKt.FRAGMENT_ENCODE_SET, "toByte-impl", "(J)B", "toShort", _UrlKt.FRAGMENT_ENCODE_SET, "toShort-impl", "(J)S", "toInt", "toInt-impl", "(J)I", "toLong", "toLong-impl", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", _UrlKt.FRAGMENT_ENCODE_SET, "toFloat-impl", "(J)F", "toDouble", _UrlKt.FRAGMENT_ENCODE_SET, "toDouble-impl", "(J)D", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(J)Ljava/lang/String;", "equals", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class ULong implements Comparable<ULong> {
    public static final long MAX_VALUE = -1;
    public static final long MIN_VALUE = 0;
    public static final int SIZE_BITS = 64;
    public static final int SIZE_BYTES = 8;
    private final long data;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ULong m3255boximpl(long j) {
        return new ULong(j);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m3261constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3267equalsimpl(long j, Object obj) {
        return (obj instanceof ULong) && j == ((ULong) obj).getData();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3268equalsimpl0(long j, long j2) {
        return j == j2;
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3273hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toByte-impl, reason: not valid java name */
    private static final byte m3301toByteimpl(long j) {
        return (byte) j;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    private static final int m3304toIntimpl(long j) {
        return (int) j;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    private static final long m3305toLongimpl(long j) {
        return j;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toShort-impl, reason: not valid java name */
    private static final short m3306toShortimpl(long j) {
        return (short) j;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toULong-s-VKNKU, reason: not valid java name */
    private static final long m3310toULongsVKNKU(long j) {
        return j;
    }

    public boolean equals(Object other) {
        return m3267equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m3273hashCodeimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getData() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return UnsignedKt.ulongCompare(getData(), uLong.getData());
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ ULong(long j) {
        this.data = j;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-7apg3OU, reason: not valid java name */
    private static final int m3256compareTo7apg3OU(long j, byte b2) {
        return Long.compare(j ^ Long.MIN_VALUE, m3261constructorimpl(((long) b2) & 255) ^ Long.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private static final int m3260compareToxj2QHRw(long j, short s) {
        return Long.compare(j ^ Long.MIN_VALUE, m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX) ^ Long.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private static final int m3259compareToWZ4Q5Ns(long j, int i) {
        return Long.compare(j ^ Long.MIN_VALUE, m3261constructorimpl(((long) i) & 4294967295L) ^ Long.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private int m3257compareToVKZWuLQ(long j) {
        return UnsignedKt.ulongCompare(getData(), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private static int m3258compareToVKZWuLQ(long j, long j2) {
        return UnsignedKt.ulongCompare(j, j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-7apg3OU, reason: not valid java name */
    private static final long m3285plus7apg3OU(long j, byte b2) {
        return m3261constructorimpl(j + m3261constructorimpl(((long) b2) & 255));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-xj2QHRw, reason: not valid java name */
    private static final long m3288plusxj2QHRw(long j, short s) {
        return m3261constructorimpl(j + m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-WZ4Q5Ns, reason: not valid java name */
    private static final long m3287plusWZ4Q5Ns(long j, int i) {
        return m3261constructorimpl(j + m3261constructorimpl(((long) i) & 4294967295L));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-VKZWuLQ, reason: not valid java name */
    private static final long m3286plusVKZWuLQ(long j, long j2) {
        return m3261constructorimpl(j + j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-7apg3OU, reason: not valid java name */
    private static final long m3276minus7apg3OU(long j, byte b2) {
        return m3261constructorimpl(j - m3261constructorimpl(((long) b2) & 255));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-xj2QHRw, reason: not valid java name */
    private static final long m3279minusxj2QHRw(long j, short s) {
        return m3261constructorimpl(j - m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-WZ4Q5Ns, reason: not valid java name */
    private static final long m3278minusWZ4Q5Ns(long j, int i) {
        return m3261constructorimpl(j - m3261constructorimpl(((long) i) & 4294967295L));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-VKZWuLQ, reason: not valid java name */
    private static final long m3277minusVKZWuLQ(long j, long j2) {
        return m3261constructorimpl(j - j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-7apg3OU, reason: not valid java name */
    private static final long m3297times7apg3OU(long j, byte b2) {
        return m3261constructorimpl(j * m3261constructorimpl(((long) b2) & 255));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-xj2QHRw, reason: not valid java name */
    private static final long m3300timesxj2QHRw(long j, short s) {
        return m3261constructorimpl(j * m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-WZ4Q5Ns, reason: not valid java name */
    private static final long m3299timesWZ4Q5Ns(long j, int i) {
        return m3261constructorimpl(j * m3261constructorimpl(((long) i) & 4294967295L));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-VKZWuLQ, reason: not valid java name */
    private static final long m3298timesVKZWuLQ(long j, long j2) {
        return m3261constructorimpl(j * j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-7apg3OU, reason: not valid java name */
    private static final long m3263div7apg3OU(long j, byte b2) {
        return UByte$$ExternalSyntheticBackport3.m866m(j, m3261constructorimpl(((long) b2) & 255));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-xj2QHRw, reason: not valid java name */
    private static final long m3266divxj2QHRw(long j, short s) {
        return UByte$$ExternalSyntheticBackport3.m866m(j, m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-WZ4Q5Ns, reason: not valid java name */
    private static final long m3265divWZ4Q5Ns(long j, int i) {
        return UByte$$ExternalSyntheticBackport3.m866m(j, m3261constructorimpl(((long) i) & 4294967295L));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-VKZWuLQ, reason: not valid java name */
    private static final long m3264divVKZWuLQ(long j, long j2) {
        return UnsignedKt.m3440ulongDivideeb3DHEI(j, j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-7apg3OU, reason: not valid java name */
    private static final long m3291rem7apg3OU(long j, byte b2) {
        return UByte$$ExternalSyntheticBackport2.m865m(j, m3261constructorimpl(((long) b2) & 255));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-xj2QHRw, reason: not valid java name */
    private static final long m3294remxj2QHRw(long j, short s) {
        return UByte$$ExternalSyntheticBackport2.m865m(j, m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-WZ4Q5Ns, reason: not valid java name */
    private static final long m3293remWZ4Q5Ns(long j, int i) {
        return UByte$$ExternalSyntheticBackport2.m865m(j, m3261constructorimpl(((long) i) & 4294967295L));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-VKZWuLQ, reason: not valid java name */
    private static final long m3292remVKZWuLQ(long j, long j2) {
        return UnsignedKt.m3441ulongRemaindereb3DHEI(j, j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-7apg3OU, reason: not valid java name */
    private static final long m3269floorDiv7apg3OU(long j, byte b2) {
        return UByte$$ExternalSyntheticBackport3.m866m(j, m3261constructorimpl(((long) b2) & 255));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-xj2QHRw, reason: not valid java name */
    private static final long m3272floorDivxj2QHRw(long j, short s) {
        return UByte$$ExternalSyntheticBackport3.m866m(j, m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-WZ4Q5Ns, reason: not valid java name */
    private static final long m3271floorDivWZ4Q5Ns(long j, int i) {
        return UByte$$ExternalSyntheticBackport3.m866m(j, m3261constructorimpl(((long) i) & 4294967295L));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-VKZWuLQ, reason: not valid java name */
    private static final long m3270floorDivVKZWuLQ(long j, long j2) {
        return UByte$$ExternalSyntheticBackport3.m866m(j, j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-7apg3OU, reason: not valid java name */
    private static final byte m3280mod7apg3OU(long j, byte b2) {
        return UByte.m3105constructorimpl((byte) UByte$$ExternalSyntheticBackport2.m865m(j, m3261constructorimpl(((long) b2) & 255)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-xj2QHRw, reason: not valid java name */
    private static final short m3283modxj2QHRw(long j, short s) {
        return UShort.m3368constructorimpl((short) UByte$$ExternalSyntheticBackport2.m865m(j, m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-WZ4Q5Ns, reason: not valid java name */
    private static final int m3282modWZ4Q5Ns(long j, int i) {
        return UInt.m3182constructorimpl((int) UByte$$ExternalSyntheticBackport2.m865m(j, m3261constructorimpl(((long) i) & 4294967295L)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-VKZWuLQ, reason: not valid java name */
    private static final long m3281modVKZWuLQ(long j, long j2) {
        return UByte$$ExternalSyntheticBackport2.m865m(j, j2);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inc-s-VKNKU, reason: not valid java name */
    private static final long m3274incsVKNKU(long j) {
        return m3261constructorimpl(j + 1);
    }

    @InlineOnly
    /* JADX INFO: renamed from: dec-s-VKNKU, reason: not valid java name */
    private static final long m3262decsVKNKU(long j) {
        return m3261constructorimpl(j - 1);
    }

    @InlineOnly
    /* JADX INFO: renamed from: rangeTo-VKZWuLQ, reason: not valid java name */
    private static final ULongRange m3289rangeToVKZWuLQ(long j, long j2) {
        return new ULongRange(j, j2, null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: rangeUntil-VKZWuLQ, reason: not valid java name */
    private static final ULongRange m3290rangeUntilVKZWuLQ(long j, long j2) {
        return URangesKt.m4374untileb3DHEI(j, j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: shl-s-VKNKU, reason: not valid java name */
    private static final long m3295shlsVKNKU(long j, int i) {
        return m3261constructorimpl(j << i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: shr-s-VKNKU, reason: not valid java name */
    private static final long m3296shrsVKNKU(long j, int i) {
        return m3261constructorimpl(j >>> i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: and-VKZWuLQ, reason: not valid java name */
    private static final long m3254andVKZWuLQ(long j, long j2) {
        return m3261constructorimpl(j & j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: or-VKZWuLQ, reason: not valid java name */
    private static final long m3284orVKZWuLQ(long j, long j2) {
        return m3261constructorimpl(j | j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: xor-VKZWuLQ, reason: not valid java name */
    private static final long m3312xorVKZWuLQ(long j, long j2) {
        return m3261constructorimpl(j ^ j2);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: inv-s-VKNKU, reason: not valid java name */
    private static final long m3275invsVKNKU(long j) {
        return m3261constructorimpl(~j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUByte-w2LRezQ, reason: not valid java name */
    private static final byte m3308toUBytew2LRezQ(long j) {
        return UByte.m3105constructorimpl((byte) j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUShort-Mh2AYeg, reason: not valid java name */
    private static final short m3311toUShortMh2AYeg(long j) {
        return UShort.m3368constructorimpl((short) j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUInt-pVg5ArA, reason: not valid java name */
    private static final int m3309toUIntpVg5ArA(long j) {
        return UInt.m3182constructorimpl((int) j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toFloat-impl, reason: not valid java name */
    private static final float m3303toFloatimpl(long j) {
        return (float) UnsignedKt.ulongToDouble(j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    private static final double m3302toDoubleimpl(long j) {
        return UnsignedKt.ulongToDouble(j);
    }

    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3307toStringimpl(long j) {
        return UnsignedKt.ulongToString(j, 10);
    }

    @IntrinsicConstEvaluation
    public String toString() {
        return m3307toStringimpl(this.data);
    }
}
