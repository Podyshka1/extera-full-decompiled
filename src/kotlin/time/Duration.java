package kotlin.time;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.comparisons.ComparisonsKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import okio.Utf8$$ExternalSyntheticBUOutline1;
import org.mvel2.asm.signature.SignatureVisitor;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.6")
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0006\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 \u0089\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0089\u0001B\u0011\bA\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\f\u001a\u00020\rH\u0082\u0080\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u00020\rH\u0082\u0080\u0004¢\u0006\u0004\b\u0011\u0010\u000fJ\u0011\u0010\u0016\u001a\u00020\u0000H\u0086\u0082\u0004¢\u0006\u0004\b\u0017\u0010\u0005J\u0019\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0082\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0082\u0080\u0004¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010!\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0082\u0004¢\u0006\u0004\b\"\u0010\u001bJ\u0019\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0082\u0004¢\u0006\u0004\b%\u0010&J\u0019\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020'H\u0086\u0082\u0004¢\u0006\u0004\b%\u0010(J\u0019\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0082\u0004¢\u0006\u0004\b*\u0010&J\u0019\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020'H\u0086\u0082\u0004¢\u0006\u0004\b*\u0010(J\u0019\u0010)\u001a\u00020'2\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0082\u0004¢\u0006\u0004\b+\u0010,J\u0019\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013H\u0080\u0080\u0004¢\u0006\u0004\b/\u00100J\u0011\u00101\u001a\u00020\rH\u0086\u0080\u0004¢\u0006\u0004\b2\u0010\u000fJ\u0011\u00103\u001a\u00020\rH\u0086\u0080\u0004¢\u0006\u0004\b4\u0010\u000fJ\u0011\u00105\u001a\u00020\rH\u0086\u0080\u0004¢\u0006\u0004\b6\u0010\u000fJ\u0011\u00107\u001a\u00020\rH\u0086\u0080\u0004¢\u0006\u0004\b8\u0010\u000fJ\u0019\u0010;\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0082\u0004¢\u0006\u0004\b<\u0010=J\u009e\u0001\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2u\u0010@\u001aq\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(D\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0AH\u0086\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010JJ\u0089\u0001\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2`\u0010@\u001a\\\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0KH\u0086\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010LJt\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2K\u0010@\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0MH\u0086\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010NJ_\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?26\u0010@\u001a2\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0OH\u0086\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010PJ\u0019\u0010^\u001a\u00020'2\u0006\u0010.\u001a\u00020\u0013H\u0086\u0080\u0004¢\u0006\u0004\b_\u0010`J\u0019\u0010a\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0013H\u0086\u0080\u0004¢\u0006\u0004\bb\u00100J\u0019\u0010c\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0013H\u0086\u0080\u0004¢\u0006\u0004\bd\u0010eJ\u0011\u0010t\u001a\u00020uH\u0096\u0080\u0004¢\u0006\u0004\bv\u0010wJC\u0010x\u001a\u00020y*\u00060zj\u0002`{2\u0006\u0010|\u001a\u00020\t2\u0006\u0010}\u001a\u00020\t2\u0006\u0010~\u001a\u00020\t2\u0006\u0010.\u001a\u00020u2\u0006\u0010\u007f\u001a\u00020\rH\u0082\u0080\u0004¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J%\u0010t\u001a\u00020u2\u0006\u0010.\u001a\u00020\u00132\t\b\u0002\u0010\u0082\u0001\u001a\u00020\tH\u0086\u0080\u0004¢\u0006\u0005\bv\u0010\u0083\u0001J\u0013\u0010\u0084\u0001\u001a\u00020uH\u0086\u0080\u0004¢\u0006\u0005\b\u0085\u0001\u0010wJ\u0016\u0010\u0086\u0001\u001a\u00020\r2\t\u0010\u0019\u001a\u0005\u0018\u00010\u0087\u0001HÖ\u0083\u0004J\u000b\u0010\u0088\u0001\u001a\u00020\tHÖ\u0081\u0004R\u000f\u0010\u0002\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u0015\u0010\u0006\u001a\u00020\u00038BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0016\u0010\b\u001a\u00020\t8Â\u0002X\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0015\u00109\u001a\u00020\u00008FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b:\u0010\u0005R\u001b\u0010Q\u001a\u00020\t8@X\u0081\u0084\b¢\u0006\f\u0012\u0004\bR\u0010S\u001a\u0004\bT\u0010\u000bR\u001b\u0010U\u001a\u00020\t8@X\u0081\u0084\b¢\u0006\f\u0012\u0004\bV\u0010S\u001a\u0004\bW\u0010\u000bR\u001b\u0010X\u001a\u00020\t8@X\u0081\u0084\b¢\u0006\f\u0012\u0004\bY\u0010S\u001a\u0004\bZ\u0010\u000bR\u001b\u0010[\u001a\u00020\t8@X\u0081\u0084\b¢\u0006\f\u0012\u0004\b\\\u0010S\u001a\u0004\b]\u0010\u000bR\u0015\u0010f\u001a\u00020\u00038FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\bg\u0010\u0005R\u0015\u0010h\u001a\u00020\u00038FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\bi\u0010\u0005R\u0015\u0010j\u001a\u00020\u00038FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\bk\u0010\u0005R\u0015\u0010l\u001a\u00020\u00038FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\bm\u0010\u0005R\u0015\u0010n\u001a\u00020\u00038FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\bo\u0010\u0005R\u0015\u0010p\u001a\u00020\u00038FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\bq\u0010\u0005R\u0015\u0010r\u001a\u00020\u00038FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\bs\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u008a\u0001"}, d2 = {"Lkotlin/time/Duration;", _UrlKt.FRAGMENT_ENCODE_SET, "rawValue", _UrlKt.FRAGMENT_ENCODE_SET, "constructor-impl", "(J)J", "value", "getValue-impl", "unitDiscriminator", _UrlKt.FRAGMENT_ENCODE_SET, "getUnitDiscriminator-impl", "(J)I", "isInNanos", _UrlKt.FRAGMENT_ENCODE_SET, "isInNanos-impl", "(J)Z", "isInMillis", "isInMillis-impl", "storageUnit", "Lkotlin/time/DurationUnit;", "getStorageUnit-impl", "(J)Lkotlin/time/DurationUnit;", "unaryMinus", "unaryMinus-UwyO8pc", "plus", "other", "plus-LRDsOJo", "(JJ)J", "addValuesMixedRanges", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "minus", "minus-LRDsOJo", "times", "scale", "times-UwyO8pc", "(JI)J", _UrlKt.FRAGMENT_ENCODE_SET, "(JD)J", "div", "div-UwyO8pc", "div-LRDsOJo", "(JJ)D", "truncateTo", "unit", "truncateTo-UwyO8pc$kotlin_stdlib", "(JLkotlin/time/DurationUnit;)J", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "isInfinite", "isInfinite-impl", "isFinite", "isFinite-impl", "absoluteValue", "getAbsoluteValue-UwyO8pc", "compareTo", "compareTo-LRDsOJo", "(JJ)I", "toComponents", "T", "action", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "hoursComponent", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "toDouble", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toLong", "toLong-impl", "toInt", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "inWholeDays", "getInWholeDays-impl", "inWholeHours", "getInWholeHours-impl", "inWholeMinutes", "getInWholeMinutes-impl", "inWholeSeconds", "getInWholeSeconds-impl", "inWholeMilliseconds", "getInWholeMilliseconds-impl", "inWholeMicroseconds", "getInWholeMicroseconds-impl", "inWholeNanoseconds", "getInWholeNanoseconds-impl", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(J)Ljava/lang/String;", "appendFractional", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "appendFractional-impl", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "toIsoString", "toIsoString-impl", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1613:1\n41#1:1614\n41#1:1615\n41#1:1616\n41#1:1617\n41#1:1618\n572#1:1619\n589#1:1627\n173#2,6:1620\n1#3:1626\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n42#1:1614\n43#1:1615\n353#1:1616\n362#1:1617\n546#1:1618\n847#1:1619\n938#1:1627\n889#1:1620,6\n*E\n"})
public final class Duration implements Comparable<Duration> {
    private final long rawValue;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long ZERO = m4444constructorimpl(0);
    private static final long INFINITE = DurationKt.durationOfMillis(DurationKt.MAX_MILLIS);
    private static final long NEG_INFINITE = DurationKt.durationOfMillis(-4611686018427387903L);
    public static final long INVALID_RAW_VALUE = 9223372036854759646L;
    private static final long INVALID = m4444constructorimpl(INVALID_RAW_VALUE);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m4442boximpl(long j) {
        return new Duration(j);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Don't call this constructor directly.")
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m4444constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4448equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).getRawValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4449equalsimpl0(long j, long j2) {
        return j == j2;
    }

    @PublishedApi
    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* JADX INFO: renamed from: getUnitDiscriminator-impl, reason: not valid java name */
    private static final int m4463getUnitDiscriminatorimpl(long j) {
        return ((int) j) & 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getValue-impl, reason: not valid java name */
    public static final long m4464getValueimpl(long j) {
        return j >> 1;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4465hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: isInMillis-impl, reason: not valid java name */
    private static final boolean m4467isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isInNanos-impl, reason: not valid java name */
    public static final boolean m4468isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    /* JADX INFO: renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m4470isNegativeimpl(long j) {
        return j < 0;
    }

    /* JADX INFO: renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m4471isPositiveimpl(long j) {
        return j > 0;
    }

    public boolean equals(Object other) {
        return m4448equalsimpl(this.rawValue, other);
    }

    public int hashCode() {
        return m4465hashCodeimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getRawValue() {
        return this.rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m4489compareToLRDsOJo(duration.getRawValue());
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Don't call this constructor directly.")
    private /* synthetic */ Duration(long j) {
        this.rawValue = j;
    }

    /* JADX INFO: renamed from: getStorageUnit-impl, reason: not valid java name */
    private static final DurationUnit m4462getStorageUnitimpl(long j) {
        return m4468isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0080\u0080\u0004¢\u0006\u0004\b\b\u0010\tJ\"\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0087\u0080\u0004J\u0019\u00108\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u000209H\u0086\u0080\u0004¢\u0006\u0004\b:\u0010;J\u0019\u0010<\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u000209H\u0086\u0080\u0004¢\u0006\u0004\b=\u0010;J\u0019\u0010>\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0019\u001a\u000209H\u0086\u0080\u0004¢\u0006\u0002\b?J\u0019\u0010@\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0019\u001a\u000209H\u0086\u0080\u0004¢\u0006\u0002\bAR\u001d\u0010\n\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\u0010\n\u0002\u0010\u000e\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\f\u0010\rR\u0017\u0010\u000f\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0010\u0010\rR\u0017\u0010\u0011\u001a\u00020\u0005X\u0080\u0084\b¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0012\u0010\rR\u000f\u0010\u0013\u001a\u00020\u0007X\u0080Ô\b¢\u0006\u0002\n\u0000R\u001d\u0010\u0014\u001a\u00020\u0005X\u0080\u0084\b¢\u0006\u0010\n\u0002\u0010\u000e\u0012\u0004\b\u0015\u0010\u0003\u001a\u0004\b\u0016\u0010\rR \u0010\u001d\u001a\u00020\u0005*\u00020\u001e8Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R \u0010\u001d\u001a\u00020\u0005*\u00020\u00078Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b\u001f\u0010#\u001a\u0004\b!\u0010\tR \u0010\u001d\u001a\u00020\u0005*\u00020\u00188Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b\u001f\u0010$\u001a\u0004\b!\u0010%R \u0010&\u001a\u00020\u0005*\u00020\u001e8Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b'\u0010 \u001a\u0004\b(\u0010\"R \u0010&\u001a\u00020\u0005*\u00020\u00078Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b'\u0010#\u001a\u0004\b(\u0010\tR \u0010&\u001a\u00020\u0005*\u00020\u00188Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b'\u0010$\u001a\u0004\b(\u0010%R \u0010)\u001a\u00020\u0005*\u00020\u001e8Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b*\u0010 \u001a\u0004\b+\u0010\"R \u0010)\u001a\u00020\u0005*\u00020\u00078Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b*\u0010#\u001a\u0004\b+\u0010\tR \u0010)\u001a\u00020\u0005*\u00020\u00188Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b*\u0010$\u001a\u0004\b+\u0010%R \u0010,\u001a\u00020\u0005*\u00020\u001e8Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b-\u0010 \u001a\u0004\b.\u0010\"R \u0010,\u001a\u00020\u0005*\u00020\u00078Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b-\u0010#\u001a\u0004\b.\u0010\tR \u0010,\u001a\u00020\u0005*\u00020\u00188Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b-\u0010$\u001a\u0004\b.\u0010%R \u0010/\u001a\u00020\u0005*\u00020\u001e8Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b0\u0010 \u001a\u0004\b1\u0010\"R \u0010/\u001a\u00020\u0005*\u00020\u00078Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b0\u0010#\u001a\u0004\b1\u0010\tR \u0010/\u001a\u00020\u0005*\u00020\u00188Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b0\u0010$\u001a\u0004\b1\u0010%R \u00102\u001a\u00020\u0005*\u00020\u001e8Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b3\u0010 \u001a\u0004\b4\u0010\"R \u00102\u001a\u00020\u0005*\u00020\u00078Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b3\u0010#\u001a\u0004\b4\u0010\tR \u00102\u001a\u00020\u0005*\u00020\u00188Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b3\u0010$\u001a\u0004\b4\u0010%R \u00105\u001a\u00020\u0005*\u00020\u001e8Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b6\u0010 \u001a\u0004\b7\u0010\"R \u00105\u001a\u00020\u0005*\u00020\u00078Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b6\u0010#\u001a\u0004\b7\u0010\tR \u00105\u001a\u00020\u0005*\u00020\u00188Æ\u0002X\u0087\u0084\b¢\u0006\f\u0012\u0004\b6\u0010$\u001a\u0004\b7\u0010%¨\u0006B"}, d2 = {"Lkotlin/time/Duration$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "fromRawValue", "Lkotlin/time/Duration;", "rawValue", _UrlKt.FRAGMENT_ENCODE_SET, "fromRawValue-UwyO8pc$kotlin_stdlib", "(J)J", "ZERO", "getZERO-UwyO8pc$annotations", "getZERO-UwyO8pc", "()J", "J", "INFINITE", "getINFINITE-UwyO8pc", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "INVALID_RAW_VALUE", "INVALID", "getINVALID-UwyO8pc$kotlin_stdlib$annotations", "getINVALID-UwyO8pc$kotlin_stdlib", "convert", _UrlKt.FRAGMENT_ENCODE_SET, "value", "sourceUnit", "Lkotlin/time/DurationUnit;", "targetUnit", "nanoseconds", _UrlKt.FRAGMENT_ENCODE_SET, "getNanoseconds-UwyO8pc$annotations", "(I)V", "getNanoseconds-UwyO8pc", "(I)J", "(J)V", "(D)V", "(D)J", "microseconds", "getMicroseconds-UwyO8pc$annotations", "getMicroseconds-UwyO8pc", "milliseconds", "getMilliseconds-UwyO8pc$annotations", "getMilliseconds-UwyO8pc", "seconds", "getSeconds-UwyO8pc$annotations", "getSeconds-UwyO8pc", "minutes", "getMinutes-UwyO8pc$annotations", "getMinutes-UwyO8pc", "hours", "getHours-UwyO8pc$annotations", "getHours-UwyO8pc", "days", "getDays-UwyO8pc$annotations", "getDays-UwyO8pc", "parse", _UrlKt.FRAGMENT_ENCODE_SET, "parse-UwyO8pc", "(Ljava/lang/String;)J", "parseIsoString", "parseIsoString-UwyO8pc", "parseOrNull", "parseOrNull-FghU774", "parseIsoStringOrNull", "parseIsoStringOrNull-FghU774", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Duration.kt\nkotlin/time/DurationKt\n*L\n1#1,1613:1\n1#2:1614\n1449#3:1615\n1449#3:1616\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration$Companion\n*L\n337#1:1615\n347#1:1616\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @InlineOnly
        /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4494getDaysUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4495getDaysUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4496getDaysUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4500getHoursUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4501getHoursUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4502getHoursUwyO8pc$annotations(long j) {
        }

        /* JADX INFO: renamed from: getINVALID-UwyO8pc$kotlin_stdlib$annotations, reason: not valid java name */
        public static /* synthetic */ void m4503getINVALIDUwyO8pc$kotlin_stdlib$annotations() {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4507getMicrosecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4508getMicrosecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4509getMicrosecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4513getMillisecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4514getMillisecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4515getMillisecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4519getMinutesUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4520getMinutesUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4521getMinutesUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4525getNanosecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4526getNanosecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4527getNanosecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4531getSecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4532getSecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4533getSecondsUwyO8pc$annotations(long j) {
        }

        /* JADX INFO: renamed from: getZERO-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m4534getZEROUwyO8pc$annotations() {
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: fromRawValue-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m4535fromRawValueUwyO8pc$kotlin_stdlib(long rawValue) {
            long jM4444constructorimpl = Duration.m4444constructorimpl(rawValue);
            if (DurationJvmKt.getDurationAssertionsEnabled()) {
                if (Duration.m4468isInNanosimpl(jM4444constructorimpl)) {
                    long jM4464getValueimpl = Duration.m4464getValueimpl(jM4444constructorimpl);
                    if (-4611686018426999999L <= jM4464getValueimpl && jM4464getValueimpl < 4611686018427000000L) {
                        return jM4444constructorimpl;
                    }
                    throw new AssertionError(Duration.m4464getValueimpl(jM4444constructorimpl) + " ns is out of nanoseconds range");
                }
                long jM4464getValueimpl2 = Duration.m4464getValueimpl(jM4444constructorimpl);
                if (-4611686018427387903L >= jM4464getValueimpl2 || jM4464getValueimpl2 >= DurationKt.MAX_MILLIS) {
                    long jM4464getValueimpl3 = Duration.m4464getValueimpl(jM4444constructorimpl);
                    if (jM4464getValueimpl3 != DurationKt.MAX_MILLIS && jM4464getValueimpl3 != -4611686018427387903L) {
                        throw new AssertionError(Duration.m4464getValueimpl(jM4444constructorimpl) + " ms is out of milliseconds range");
                    }
                }
                long jM4464getValueimpl4 = Duration.m4464getValueimpl(jM4444constructorimpl);
                if (-4611686018426L > jM4464getValueimpl4 || jM4464getValueimpl4 >= 4611686018427L) {
                    return jM4444constructorimpl;
                }
                throw new AssertionError(Duration.m4464getValueimpl(jM4444constructorimpl) + " ms is denormalized");
            }
            return jM4444constructorimpl;
        }

        /* JADX INFO: renamed from: getZERO-UwyO8pc, reason: not valid java name */
        public final long m4539getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* JADX INFO: renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
        public final long m4536getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* JADX INFO: renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m4538getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        /* JADX INFO: renamed from: getINVALID-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m4537getINVALIDUwyO8pc$kotlin_stdlib() {
            return Duration.INVALID;
        }

        @ExperimentalTime
        public final double convert(double value, DurationUnit sourceUnit, DurationUnit targetUnit) {
            return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(value, sourceUnit, targetUnit);
        }

        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
        private final long m4523getNanosecondsUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.NANOSECONDS);
        }

        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
        private final long m4524getNanosecondsUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.NANOSECONDS);
        }

        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
        private final long m4522getNanosecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.NANOSECONDS);
        }

        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
        private final long m4505getMicrosecondsUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.MICROSECONDS);
        }

        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
        private final long m4506getMicrosecondsUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.MICROSECONDS);
        }

        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
        private final long m4504getMicrosecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MICROSECONDS);
        }

        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
        private final long m4511getMillisecondsUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.MILLISECONDS);
        }

        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
        private final long m4512getMillisecondsUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
        }

        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
        private final long m4510getMillisecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MILLISECONDS);
        }

        /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
        private final long m4529getSecondsUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.SECONDS);
        }

        /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
        private final long m4530getSecondsUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.SECONDS);
        }

        /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
        private final long m4528getSecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.SECONDS);
        }

        /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
        private final long m4517getMinutesUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.MINUTES);
        }

        /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
        private final long m4518getMinutesUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.MINUTES);
        }

        /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
        private final long m4516getMinutesUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MINUTES);
        }

        /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
        private final long m4498getHoursUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.HOURS);
        }

        /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
        private final long m4499getHoursUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.HOURS);
        }

        /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
        private final long m4497getHoursUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.HOURS);
        }

        /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
        private final long m4492getDaysUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.DAYS);
        }

        /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
        private final long m4493getDaysUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.DAYS);
        }

        /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
        private final long m4491getDaysUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.DAYS);
        }

        /* JADX INFO: renamed from: parse-UwyO8pc, reason: not valid java name */
        public final long m4540parseUwyO8pc(String value) {
            try {
                long duration$default = DurationKt.parseDuration$default(value, false, false, 4, null);
                if (Duration.m4449equalsimpl0(duration$default, Duration.INSTANCE.m4537getINVALIDUwyO8pc$kotlin_stdlib())) {
                    throw new IllegalStateException("invariant failed");
                }
                return duration$default;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid duration string format: '" + value + "'.", e);
            }
        }

        /* JADX INFO: renamed from: parseIsoString-UwyO8pc, reason: not valid java name */
        public final long m4541parseIsoStringUwyO8pc(String value) {
            try {
                long duration$default = DurationKt.parseDuration$default(value, true, false, 4, null);
                if (Duration.m4449equalsimpl0(duration$default, Duration.INSTANCE.m4537getINVALIDUwyO8pc$kotlin_stdlib())) {
                    throw new IllegalStateException("invariant failed");
                }
                return duration$default;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }

        /* JADX INFO: renamed from: parseOrNull-FghU774, reason: not valid java name */
        public final Duration m4543parseOrNullFghU774(String value) {
            long duration = DurationKt.parseDuration(value, false, false);
            if (Duration.m4449equalsimpl0(duration, Duration.INSTANCE.m4537getINVALIDUwyO8pc$kotlin_stdlib())) {
                return null;
            }
            return Duration.m4442boximpl(duration);
        }

        /* JADX INFO: renamed from: parseIsoStringOrNull-FghU774, reason: not valid java name */
        public final Duration m4542parseIsoStringOrNullFghU774(String value) {
            long duration = DurationKt.parseDuration(value, true, false);
            if (Duration.m4449equalsimpl0(duration, Duration.INSTANCE.m4537getINVALIDUwyO8pc$kotlin_stdlib())) {
                return null;
            }
            return Duration.m4442boximpl(duration);
        }
    }

    /* JADX INFO: renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m4488unaryMinusUwyO8pc(long j) {
        return DurationKt.durationOf(-m4464getValueimpl(j), ((int) j) & 1);
    }

    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m4473plusLRDsOJo(long j, long j2) {
        if ((((int) j) & 1) != (((int) j2) & 1)) {
            return m4467isInMillisimpl(j) ? m4440addValuesMixedRangesUwyO8pc(j, m4464getValueimpl(j), m4464getValueimpl(j2)) : m4440addValuesMixedRangesUwyO8pc(j, m4464getValueimpl(j2), m4464getValueimpl(j));
        }
        if (m4468isInNanosimpl(j)) {
            return DurationKt.durationOfNanosNormalized(m4464getValueimpl(j) + m4464getValueimpl(j2));
        }
        long jAddMillisWithoutOverflow = DurationKt.addMillisWithoutOverflow(m4464getValueimpl(j), m4464getValueimpl(j2));
        if (jAddMillisWithoutOverflow != INVALID_RAW_VALUE) {
            return (jAddMillisWithoutOverflow == DurationKt.MAX_MILLIS || jAddMillisWithoutOverflow == -4611686018427387903L) ? DurationKt.durationOfMillis(jAddMillisWithoutOverflow) : DurationKt.durationOfMillisNormalized(jAddMillisWithoutOverflow);
        }
        f$$ExternalSyntheticBUOutline1.m212m("Summing infinite durations of different signs yields an undefined result.");
        return 0L;
    }

    /* JADX INFO: renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    private static final long m4440addValuesMixedRangesUwyO8pc(long j, long j2, long j3) {
        long jNanosToMillis = DurationKt.nanosToMillis(j3);
        long jAddMillisWithoutOverflow = DurationKt.addMillisWithoutOverflow(j2, jNanosToMillis);
        if (-4611686018426L > jAddMillisWithoutOverflow || jAddMillisWithoutOverflow >= 4611686018427L) {
            return DurationKt.durationOfMillis(jAddMillisWithoutOverflow);
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(jAddMillisWithoutOverflow) + (j3 - DurationKt.millisToNanos(jNanosToMillis)));
    }

    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public static final long m4472minusLRDsOJo(long j, long j2) {
        return m4473plusLRDsOJo(j, m4488unaryMinusUwyO8pc(j2));
    }

    /* JADX INFO: renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m4475timesUwyO8pc(long j, int i) {
        if (m4469isInfiniteimpl(j)) {
            if (i != 0) {
                return i > 0 ? j : m4488unaryMinusUwyO8pc(j);
            }
            f$$ExternalSyntheticBUOutline1.m212m("Multiplying infinite duration by zero yields an undefined result.");
            return 0L;
        }
        if (i == 0) {
            return ZERO;
        }
        long jM4464getValueimpl = m4464getValueimpl(j);
        long j2 = i;
        long j3 = jM4464getValueimpl * j2;
        if (!m4468isInNanosimpl(j)) {
            if (j3 / j2 == jM4464getValueimpl) {
                return DurationKt.durationOfMillis(RangesKt.coerceIn(j3, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            }
            return MathKt.getSign(jM4464getValueimpl) * MathKt.getSign(i) > 0 ? INFINITE : NEG_INFINITE;
        }
        if (-2147483647L <= jM4464getValueimpl && jM4464getValueimpl < 2147483648L) {
            return DurationKt.durationOfNanos(j3);
        }
        if (j3 / j2 == jM4464getValueimpl) {
            return DurationKt.durationOfNanosNormalized(j3);
        }
        long jNanosToMillis = DurationKt.nanosToMillis(jM4464getValueimpl);
        long j4 = jNanosToMillis * j2;
        long jNanosToMillis2 = DurationKt.nanosToMillis((jM4464getValueimpl - DurationKt.millisToNanos(jNanosToMillis)) * j2) + j4;
        if (j4 / j2 != jNanosToMillis || (jNanosToMillis2 ^ j4) < 0) {
            return MathKt.getSign(jM4464getValueimpl) * MathKt.getSign(i) > 0 ? INFINITE : NEG_INFINITE;
        }
        return DurationKt.durationOfMillis(RangesKt.coerceIn(jNanosToMillis2, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
    }

    /* JADX INFO: renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m4474timesUwyO8pc(long j, double d) {
        int iRoundToInt = MathKt.roundToInt(d);
        if (iRoundToInt == d) {
            return m4475timesUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitM4462getStorageUnitimpl = m4462getStorageUnitimpl(j);
        return DurationKt.toDuration(m4480toDoubleimpl(j, durationUnitM4462getStorageUnitimpl) * d, durationUnitM4462getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m4447divUwyO8pc(long j, int i) {
        if (i == 0) {
            if (m4471isPositiveimpl(j)) {
                return INFINITE;
            }
            if (m4470isNegativeimpl(j)) {
                return NEG_INFINITE;
            }
            f$$ExternalSyntheticBUOutline1.m212m("Dividing zero duration by zero yields an undefined result.");
            return 0L;
        }
        if (m4468isInNanosimpl(j)) {
            return DurationKt.durationOfNanos(m4464getValueimpl(j) / ((long) i));
        }
        if (m4469isInfiniteimpl(j)) {
            return m4475timesUwyO8pc(j, MathKt.getSign(i));
        }
        long j2 = i;
        long jM4464getValueimpl = m4464getValueimpl(j) / j2;
        if (-4611686018426L > jM4464getValueimpl || jM4464getValueimpl >= 4611686018427L) {
            return DurationKt.durationOfMillis(jM4464getValueimpl);
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(jM4464getValueimpl) + (DurationKt.millisToNanos(m4464getValueimpl(j) - (jM4464getValueimpl * j2)) / j2));
    }

    /* JADX INFO: renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m4446divUwyO8pc(long j, double d) {
        int iRoundToInt = MathKt.roundToInt(d);
        if (iRoundToInt == d && iRoundToInt != 0) {
            return m4447divUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitM4462getStorageUnitimpl = m4462getStorageUnitimpl(j);
        return DurationKt.toDuration(m4480toDoubleimpl(j, durationUnitM4462getStorageUnitimpl) / d, durationUnitM4462getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: div-LRDsOJo, reason: not valid java name */
    public static final double m4445divLRDsOJo(long j, long j2) {
        DurationUnit durationUnit = (DurationUnit) ComparisonsKt.maxOf(m4462getStorageUnitimpl(j), m4462getStorageUnitimpl(j2));
        return m4480toDoubleimpl(j, durationUnit) / m4480toDoubleimpl(j2, durationUnit);
    }

    /* JADX INFO: renamed from: truncateTo-UwyO8pc$kotlin_stdlib, reason: not valid java name */
    public static final long m4487truncateToUwyO8pc$kotlin_stdlib(long j, DurationUnit durationUnit) {
        DurationUnit durationUnitM4462getStorageUnitimpl = m4462getStorageUnitimpl(j);
        if (durationUnit.compareTo(durationUnitM4462getStorageUnitimpl) <= 0 || m4469isInfiniteimpl(j)) {
            return j;
        }
        return DurationKt.toDuration(m4464getValueimpl(j) - (m4464getValueimpl(j) % DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(1L, durationUnit, durationUnitM4462getStorageUnitimpl)), durationUnitM4462getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m4469isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* JADX INFO: renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m4466isFiniteimpl(long j) {
        return !m4469isInfiniteimpl(j);
    }

    /* JADX INFO: renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m4450getAbsoluteValueUwyO8pc(long j) {
        return m4470isNegativeimpl(j) ? m4488unaryMinusUwyO8pc(j) : j;
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m4489compareToLRDsOJo(long j) {
        return m4443compareToLRDsOJo(this.rawValue, j);
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m4443compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m4470isNegativeimpl(j) ? -i : i;
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m4479toComponentsimpl(long j, Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> function5) {
        return function5.invoke(Long.valueOf(m4452getInWholeDaysimpl(j)), Integer.valueOf(m4451getHoursComponentimpl(j)), Integer.valueOf(m4459getMinutesComponentimpl(j)), Integer.valueOf(m4461getSecondsComponentimpl(j)), Integer.valueOf(m4460getNanosecondsComponentimpl(j)));
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m4478toComponentsimpl(long j, Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> function4) {
        return function4.invoke(Long.valueOf(m4453getInWholeHoursimpl(j)), Integer.valueOf(m4459getMinutesComponentimpl(j)), Integer.valueOf(m4461getSecondsComponentimpl(j)), Integer.valueOf(m4460getNanosecondsComponentimpl(j)));
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m4477toComponentsimpl(long j, Function3<? super Long, ? super Integer, ? super Integer, ? extends T> function3) {
        return function3.invoke(Long.valueOf(m4456getInWholeMinutesimpl(j)), Integer.valueOf(m4461getSecondsComponentimpl(j)), Integer.valueOf(m4460getNanosecondsComponentimpl(j)));
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m4476toComponentsimpl(long j, Function2<? super Long, ? super Integer, ? extends T> function2) {
        return function2.invoke(Long.valueOf(m4458getInWholeSecondsimpl(j)), Integer.valueOf(m4460getNanosecondsComponentimpl(j)));
    }

    /* JADX INFO: renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m4451getHoursComponentimpl(long j) {
        if (m4469isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m4453getInWholeHoursimpl(j) % 24);
    }

    /* JADX INFO: renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m4459getMinutesComponentimpl(long j) {
        if (m4469isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m4456getInWholeMinutesimpl(j) % 60);
    }

    /* JADX INFO: renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m4461getSecondsComponentimpl(long j) {
        if (m4469isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m4458getInWholeSecondsimpl(j) % 60);
    }

    /* JADX INFO: renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m4460getNanosecondsComponentimpl(long j) {
        long jM4464getValueimpl;
        if (m4469isInfiniteimpl(j)) {
            return 0;
        }
        if (m4467isInMillisimpl(j)) {
            jM4464getValueimpl = DurationKt.millisToNanos(m4464getValueimpl(j) % 1000);
        } else {
            jM4464getValueimpl = m4464getValueimpl(j) % 1000000000;
        }
        return (int) jM4464getValueimpl;
    }

    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    public static final double m4480toDoubleimpl(long j, DurationUnit durationUnit) {
        if (j == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m4464getValueimpl(j), m4462getStorageUnitimpl(j), durationUnit);
    }

    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    public static final long m4483toLongimpl(long j, DurationUnit durationUnit) {
        if (j == INFINITE) {
            return LongCompanionObject.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m4464getValueimpl(j), m4462getStorageUnitimpl(j), durationUnit);
    }

    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    public static final int m4481toIntimpl(long j, DurationUnit durationUnit) {
        return (int) RangesKt.coerceIn(m4483toLongimpl(j, durationUnit), -2147483648L, 2147483647L);
    }

    /* JADX INFO: renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m4452getInWholeDaysimpl(long j) {
        return m4483toLongimpl(j, DurationUnit.DAYS);
    }

    /* JADX INFO: renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m4453getInWholeHoursimpl(long j) {
        return m4483toLongimpl(j, DurationUnit.HOURS);
    }

    /* JADX INFO: renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m4456getInWholeMinutesimpl(long j) {
        return m4483toLongimpl(j, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m4458getInWholeSecondsimpl(long j) {
        return m4483toLongimpl(j, DurationUnit.SECONDS);
    }

    /* JADX INFO: renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m4455getInWholeMillisecondsimpl(long j) {
        return (m4467isInMillisimpl(j) && m4466isFiniteimpl(j)) ? m4464getValueimpl(j) : m4483toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: getInWholeMicroseconds-impl, reason: not valid java name */
    public static final long m4454getInWholeMicrosecondsimpl(long j) {
        return m4483toLongimpl(j, DurationUnit.MICROSECONDS);
    }

    /* JADX INFO: renamed from: getInWholeNanoseconds-impl, reason: not valid java name */
    public static final long m4457getInWholeNanosecondsimpl(long j) {
        long jM4464getValueimpl = m4464getValueimpl(j);
        if (m4468isInNanosimpl(j)) {
            return jM4464getValueimpl;
        }
        if (jM4464getValueimpl > 9223372036854L) {
            return LongCompanionObject.MAX_VALUE;
        }
        if (jM4464getValueimpl < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return DurationKt.millisToNanos(jM4464getValueimpl);
    }

    public String toString() {
        return m4484toStringimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4484toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean zM4470isNegativeimpl = m4470isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (zM4470isNegativeimpl) {
            sb.append(SignatureVisitor.SUPER);
        }
        long jM4450getAbsoluteValueUwyO8pc = m4450getAbsoluteValueUwyO8pc(j);
        long jM4452getInWholeDaysimpl = m4452getInWholeDaysimpl(jM4450getAbsoluteValueUwyO8pc);
        int iM4451getHoursComponentimpl = m4451getHoursComponentimpl(jM4450getAbsoluteValueUwyO8pc);
        int iM4459getMinutesComponentimpl = m4459getMinutesComponentimpl(jM4450getAbsoluteValueUwyO8pc);
        int iM4461getSecondsComponentimpl = m4461getSecondsComponentimpl(jM4450getAbsoluteValueUwyO8pc);
        int iM4460getNanosecondsComponentimpl = m4460getNanosecondsComponentimpl(jM4450getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = jM4452getInWholeDaysimpl != 0;
        boolean z2 = iM4451getHoursComponentimpl != 0;
        boolean z3 = iM4459getMinutesComponentimpl != 0;
        boolean z4 = (iM4461getSecondsComponentimpl == 0 && iM4460getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(jM4452getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM4451getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM4459getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iM4461getSecondsComponentimpl != 0 || z || z2 || z3) {
                m4441appendFractionalimpl(j, sb, iM4461getSecondsComponentimpl, iM4460getNanosecondsComponentimpl, 9, "s", false);
            } else if (iM4460getNanosecondsComponentimpl >= 1000000) {
                m4441appendFractionalimpl(j, sb, iM4460getNanosecondsComponentimpl / DurationKt.NANOS_IN_MILLIS, iM4460getNanosecondsComponentimpl % DurationKt.NANOS_IN_MILLIS, 6, "ms", false);
            } else if (iM4460getNanosecondsComponentimpl >= 1000) {
                m4441appendFractionalimpl(j, sb, iM4460getNanosecondsComponentimpl / 1000, iM4460getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(iM4460getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (zM4470isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: appendFractional-impl, reason: not valid java name */
    private static final void m4441appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String strPadStart = StringsKt.padStart(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = strPadStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strPadStart.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (!z && i6 < 3) {
                sb.append((CharSequence) strPadStart, 0, i6);
            } else {
                sb.append((CharSequence) strPadStart, 0, ((i4 + 3) / 3) * 3);
            }
        }
        sb.append(str);
    }

    /* JADX INFO: renamed from: toString-impl$default, reason: not valid java name */
    public static /* synthetic */ String m4486toStringimpl$default(long j, DurationUnit durationUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m4485toStringimpl(j, durationUnit, i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static final String m4485toStringimpl(long j, DurationUnit durationUnit, int i) {
        if (i < 0) {
            Utf8$$ExternalSyntheticBUOutline1.m928m("decimals must be not negative, but was ", i);
            return null;
        }
        double dM4480toDoubleimpl = m4480toDoubleimpl(j, durationUnit);
        if (Double.isInfinite(dM4480toDoubleimpl)) {
            return String.valueOf(dM4480toDoubleimpl);
        }
        return DurationJvmKt.formatToExactDecimals(dM4480toDoubleimpl, RangesKt.coerceAtMost(i, 12)) + DurationUnitKt__DurationUnitKt.shortName(durationUnit);
    }

    /* JADX INFO: renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m4482toIsoStringimpl(long j) {
        StringBuilder sb = new StringBuilder();
        if (m4470isNegativeimpl(j)) {
            sb.append(SignatureVisitor.SUPER);
        }
        sb.append("PT");
        long jM4450getAbsoluteValueUwyO8pc = m4450getAbsoluteValueUwyO8pc(j);
        long jM4453getInWholeHoursimpl = m4453getInWholeHoursimpl(jM4450getAbsoluteValueUwyO8pc);
        int iM4459getMinutesComponentimpl = m4459getMinutesComponentimpl(jM4450getAbsoluteValueUwyO8pc);
        int iM4461getSecondsComponentimpl = m4461getSecondsComponentimpl(jM4450getAbsoluteValueUwyO8pc);
        int iM4460getNanosecondsComponentimpl = m4460getNanosecondsComponentimpl(jM4450getAbsoluteValueUwyO8pc);
        long j2 = m4469isInfiniteimpl(j) ? 9999999999999L : jM4453getInWholeHoursimpl;
        boolean z = false;
        boolean z2 = j2 != 0;
        boolean z3 = (iM4461getSecondsComponentimpl == 0 && iM4460getNanosecondsComponentimpl == 0) ? false : true;
        if (iM4459getMinutesComponentimpl != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(j2);
            sb.append('H');
        }
        if (z) {
            sb.append(iM4459getMinutesComponentimpl);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            m4441appendFractionalimpl(j, sb, iM4461getSecondsComponentimpl, iM4460getNanosecondsComponentimpl, 9, "S", true);
        }
        return sb.toString();
    }
}
