package kotlin;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0005\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 s2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0011\bA\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\u008a\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b\u0017\u0010\rJ\u0019\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b\u0018\u0010\u000fJ\u0019\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b\u0019\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b\u001d\u0010\rJ\u0019\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b\u001e\u0010\u000fJ\u0019\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b\u001f\u0010\u0012J\u0019\u0010\u001c\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b \u0010\u001bJ\u0019\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b\"\u0010\rJ\u0019\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b#\u0010\u000fJ\u0019\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b$\u0010\u0012J\u0019\u0010!\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b%\u0010\u001bJ\u0019\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b'\u0010\rJ\u0019\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b(\u0010\u000fJ\u0019\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b)\u0010\u0012J\u0019\u0010&\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b*\u0010\u001bJ\u0019\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\u008a\u0004¢\u0006\u0004\b,\u0010\rJ\u0019\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b-\u0010\u000fJ\u0019\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u008a\u0004¢\u0006\u0004\b.\u0010\u0012J\u0019\u0010+\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u008a\u0004¢\u0006\u0004\b/\u0010\u001bJ\u0019\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\u0088\u0004¢\u0006\u0004\b1\u0010\rJ\u0019\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b2\u0010\u000fJ\u0019\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u0088\u0004¢\u0006\u0004\b3\u0010\u0012J\u0019\u00100\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u0088\u0004¢\u0006\u0004\b4\u0010\u001bJ\u0019\u00105\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0087\u0088\u0004¢\u0006\u0004\b6\u00107J\u0019\u00105\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b8\u00109J\u0019\u00105\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\u0088\u0004¢\u0006\u0004\b:\u0010\u0012J\u0019\u00105\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\u0088\u0004¢\u0006\u0004\b;\u0010\u001bJ\u0011\u0010<\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b=\u0010\u0005J\u0011\u0010>\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\b?\u0010\u0005J\u0019\u0010@\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bB\u0010CJ\u0019\u0010D\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008a\u0004¢\u0006\u0004\bE\u0010CJ\u0019\u0010F\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bG\u00109J\u0019\u0010H\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bI\u00109J\u0019\u0010J\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\u008c\u0004¢\u0006\u0004\bK\u00109J\u0011\u0010L\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\bM\u0010\u0005J\u0011\u0010N\u001a\u00020OH\u0087\u0088\u0004¢\u0006\u0004\bP\u0010QJ\u0011\u0010R\u001a\u00020\u0003H\u0087\u0088\u0004¢\u0006\u0004\bS\u0010\u0005J\u0011\u0010T\u001a\u00020\tH\u0087\u0088\u0004¢\u0006\u0004\bU\u0010VJ\u0011\u0010W\u001a\u00020XH\u0087\u0088\u0004¢\u0006\u0004\bY\u0010ZJ\u0011\u0010[\u001a\u00020\u000bH\u0087\u0088\u0004¢\u0006\u0004\b\\\u0010QJ\u0011\u0010]\u001a\u00020\u0000H\u0087\u0088\u0004¢\u0006\u0004\b^\u0010\u0005J\u0011\u0010_\u001a\u00020\u0010H\u0087\u0088\u0004¢\u0006\u0004\b`\u0010VJ\u0011\u0010a\u001a\u00020\u0013H\u0087\u0088\u0004¢\u0006\u0004\bb\u0010ZJ\u0011\u0010c\u001a\u00020dH\u0087\u0088\u0004¢\u0006\u0004\be\u0010fJ\u0011\u0010g\u001a\u00020hH\u0087\u0088\u0004¢\u0006\u0004\bi\u0010jJ\u0011\u0010k\u001a\u00020lH\u0097\u0080\u0004¢\u0006\u0004\bm\u0010nJ\u0014\u0010o\u001a\u00020p2\b\u0010\n\u001a\u0004\u0018\u00010qHÖ\u0083\u0004J\n\u0010r\u001a\u00020\tHÖ\u0081\u0004R\u0017\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0084\b¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006t"}, d2 = {"Lkotlin/UShort;", _UrlKt.FRAGMENT_ENCODE_SET, "data", _UrlKt.FRAGMENT_ENCODE_SET, "constructor-impl", "(S)S", "getData$annotations", "()V", "compareTo", _UrlKt.FRAGMENT_ENCODE_SET, "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(SB)I", "compareTo-xj2QHRw", "(SS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(SI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(SJ)I", "plus", "plus-7apg3OU", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(SJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(SB)B", "mod-xj2QHRw", "(SS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-Mh2AYeg", "dec", "dec-Mh2AYeg", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-xj2QHRw", "(SS)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-xj2QHRw", "and", "and-xj2QHRw", PluginsConstants.HookFilterTypes.OR, "or-xj2QHRw", "xor", "xor-xj2QHRw", "inv", "inv-Mh2AYeg", "toByte", _UrlKt.FRAGMENT_ENCODE_SET, "toByte-impl", "(S)B", "toShort", "toShort-impl", "toInt", "toInt-impl", "(S)I", "toLong", _UrlKt.FRAGMENT_ENCODE_SET, "toLong-impl", "(S)J", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", _UrlKt.FRAGMENT_ENCODE_SET, "toFloat-impl", "(S)F", "toDouble", _UrlKt.FRAGMENT_ENCODE_SET, "toDouble-impl", "(S)D", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(S)Ljava/lang/String;", "equals", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class UShort implements Comparable<UShort> {
    public static final short MAX_VALUE = -1;
    public static final short MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;
    private final short data;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UShort m3362boximpl(short s) {
        return new UShort(s);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static short m3368constructorimpl(short s) {
        return s;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3374equalsimpl(short s, Object obj) {
        return (obj instanceof UShort) && s == ((UShort) obj).getData();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3375equalsimpl0(short s, short s2) {
        return s == s2;
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3380hashCodeimpl(short s) {
        return Short.hashCode(s);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toByte-impl, reason: not valid java name */
    private static final byte m3406toByteimpl(short s) {
        return (byte) s;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    private static final int m3409toIntimpl(short s) {
        return s & MAX_VALUE;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    private static final long m3410toLongimpl(short s) {
        return ((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toShort-impl, reason: not valid java name */
    private static final short m3411toShortimpl(short s) {
        return s;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUShort-Mh2AYeg, reason: not valid java name */
    private static final short m3416toUShortMh2AYeg(short s) {
        return s;
    }

    public boolean equals(Object other) {
        return m3374equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m3380hashCodeimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ short getData() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return Intrinsics.compare(getData() & MAX_VALUE, uShort.getData() & MAX_VALUE);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ UShort(short s) {
        this.data = s;
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-7apg3OU, reason: not valid java name */
    private static final int m3363compareTo7apg3OU(short s, byte b2) {
        return Intrinsics.compare(s & MAX_VALUE, b2 & UByte.MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private int m3366compareToxj2QHRw(short s) {
        return Intrinsics.compare(getData() & MAX_VALUE, s & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-xj2QHRw, reason: not valid java name */
    private static int m3367compareToxj2QHRw(short s, short s2) {
        return Intrinsics.compare(s & MAX_VALUE, s2 & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-WZ4Q5Ns, reason: not valid java name */
    private static final int m3365compareToWZ4Q5Ns(short s, int i) {
        return Integer.compare(UInt.m3182constructorimpl(s & MAX_VALUE) ^ Integer.MIN_VALUE, i ^ Integer.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: compareTo-VKZWuLQ, reason: not valid java name */
    private static final int m3364compareToVKZWuLQ(short s, long j) {
        return Long.compare(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX) ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-7apg3OU, reason: not valid java name */
    private static final int m3392plus7apg3OU(short s, byte b2) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) + UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-xj2QHRw, reason: not valid java name */
    private static final int m3395plusxj2QHRw(short s, short s2) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) + UInt.m3182constructorimpl(s2 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-WZ4Q5Ns, reason: not valid java name */
    private static final int m3394plusWZ4Q5Ns(short s, int i) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) + i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: plus-VKZWuLQ, reason: not valid java name */
    private static final long m3393plusVKZWuLQ(short s, long j) {
        return ULong.m3261constructorimpl(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX) + j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-7apg3OU, reason: not valid java name */
    private static final int m3383minus7apg3OU(short s, byte b2) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) - UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-xj2QHRw, reason: not valid java name */
    private static final int m3386minusxj2QHRw(short s, short s2) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) - UInt.m3182constructorimpl(s2 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-WZ4Q5Ns, reason: not valid java name */
    private static final int m3385minusWZ4Q5Ns(short s, int i) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) - i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: minus-VKZWuLQ, reason: not valid java name */
    private static final long m3384minusVKZWuLQ(short s, long j) {
        return ULong.m3261constructorimpl(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX) - j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-7apg3OU, reason: not valid java name */
    private static final int m3402times7apg3OU(short s, byte b2) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) * UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-xj2QHRw, reason: not valid java name */
    private static final int m3405timesxj2QHRw(short s, short s2) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) * UInt.m3182constructorimpl(s2 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-WZ4Q5Ns, reason: not valid java name */
    private static final int m3404timesWZ4Q5Ns(short s, int i) {
        return UInt.m3182constructorimpl(UInt.m3182constructorimpl(s & MAX_VALUE) * i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: times-VKZWuLQ, reason: not valid java name */
    private static final long m3403timesVKZWuLQ(short s, long j) {
        return ULong.m3261constructorimpl(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX) * j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-7apg3OU, reason: not valid java name */
    private static final int m3370div7apg3OU(short s, byte b2) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-xj2QHRw, reason: not valid java name */
    private static final int m3373divxj2QHRw(short s, short s2) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(s2 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-WZ4Q5Ns, reason: not valid java name */
    private static final int m3372divWZ4Q5Ns(short s, int i) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(s & MAX_VALUE), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: div-VKZWuLQ, reason: not valid java name */
    private static final long m3371divVKZWuLQ(short s, long j) {
        return UByte$$ExternalSyntheticBackport3.m866m(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-7apg3OU, reason: not valid java name */
    private static final int m3398rem7apg3OU(short s, byte b2) {
        return UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-xj2QHRw, reason: not valid java name */
    private static final int m3401remxj2QHRw(short s, short s2) {
        return UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(s2 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-WZ4Q5Ns, reason: not valid java name */
    private static final int m3400remWZ4Q5Ns(short s, int i) {
        return UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(s & MAX_VALUE), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: rem-VKZWuLQ, reason: not valid java name */
    private static final long m3399remVKZWuLQ(short s, long j) {
        return UByte$$ExternalSyntheticBackport2.m865m(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-7apg3OU, reason: not valid java name */
    private static final int m3376floorDiv7apg3OU(short s, byte b2) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-xj2QHRw, reason: not valid java name */
    private static final int m3379floorDivxj2QHRw(short s, short s2) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(s2 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-WZ4Q5Ns, reason: not valid java name */
    private static final int m3378floorDivWZ4Q5Ns(short s, int i) {
        return UByte$$ExternalSyntheticBackport0.m863m(UInt.m3182constructorimpl(s & MAX_VALUE), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: floorDiv-VKZWuLQ, reason: not valid java name */
    private static final long m3377floorDivVKZWuLQ(short s, long j) {
        return UByte$$ExternalSyntheticBackport3.m866m(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-7apg3OU, reason: not valid java name */
    private static final byte m3387mod7apg3OU(short s, byte b2) {
        return UByte.m3105constructorimpl((byte) UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-xj2QHRw, reason: not valid java name */
    private static final short m3390modxj2QHRw(short s, short s2) {
        return m3368constructorimpl((short) UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(s2 & MAX_VALUE)));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-WZ4Q5Ns, reason: not valid java name */
    private static final int m3389modWZ4Q5Ns(short s, int i) {
        return UByte$$ExternalSyntheticBackport1.m864m(UInt.m3182constructorimpl(s & MAX_VALUE), i);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: mod-VKZWuLQ, reason: not valid java name */
    private static final long m3388modVKZWuLQ(short s, long j) {
        return UByte$$ExternalSyntheticBackport2.m865m(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    @InlineOnly
    /* JADX INFO: renamed from: inc-Mh2AYeg, reason: not valid java name */
    private static final short m3381incMh2AYeg(short s) {
        return m3368constructorimpl((short) (s + 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: dec-Mh2AYeg, reason: not valid java name */
    private static final short m3369decMh2AYeg(short s) {
        return m3368constructorimpl((short) (s - 1));
    }

    @InlineOnly
    /* JADX INFO: renamed from: rangeTo-xj2QHRw, reason: not valid java name */
    private static final UIntRange m3396rangeToxj2QHRw(short s, short s2) {
        return new UIntRange(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(s2 & MAX_VALUE), null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: rangeUntil-xj2QHRw, reason: not valid java name */
    private static final UIntRange m3397rangeUntilxj2QHRw(short s, short s2) {
        return URangesKt.m4372untilJ1ME1BU(UInt.m3182constructorimpl(s & MAX_VALUE), UInt.m3182constructorimpl(s2 & MAX_VALUE));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: and-xj2QHRw, reason: not valid java name */
    private static final short m3361andxj2QHRw(short s, short s2) {
        return m3368constructorimpl((short) (s & s2));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: or-xj2QHRw, reason: not valid java name */
    private static final short m3391orxj2QHRw(short s, short s2) {
        return m3368constructorimpl((short) (s | s2));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: xor-xj2QHRw, reason: not valid java name */
    private static final short m3417xorxj2QHRw(short s, short s2) {
        return m3368constructorimpl((short) (s ^ s2));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: inv-Mh2AYeg, reason: not valid java name */
    private static final short m3382invMh2AYeg(short s) {
        return m3368constructorimpl((short) (~s));
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUByte-w2LRezQ, reason: not valid java name */
    private static final byte m3413toUBytew2LRezQ(short s) {
        return UByte.m3105constructorimpl((byte) s);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toUInt-pVg5ArA, reason: not valid java name */
    private static final int m3414toUIntpVg5ArA(short s) {
        return UInt.m3182constructorimpl(s & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toULong-s-VKNKU, reason: not valid java name */
    private static final long m3415toULongsVKNKU(short s) {
        return ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toFloat-impl, reason: not valid java name */
    private static final float m3408toFloatimpl(short s) {
        return (float) UnsignedKt.uintToDouble(s & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    @InlineOnly
    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    private static final double m3407toDoubleimpl(short s) {
        return UnsignedKt.uintToDouble(s & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3412toStringimpl(short s) {
        return String.valueOf(s & MAX_VALUE);
    }

    @IntrinsicConstEvaluation
    public String toString() {
        return m3412toStringimpl(this.data);
    }
}
