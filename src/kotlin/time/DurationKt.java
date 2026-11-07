package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b-\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0005\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0007\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\u008a\u0004¢\u0006\u0004\b\f\u0010\r\u001a\u001d\u0010\n\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\u008a\u0004¢\u0006\u0004\b\u000e\u0010\u000f\u001a)\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0082\u0080\u0004¢\u0006\u0002\u0010\u0016\u001a'\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0082\u0080\u0004¢\u0006\u0002\u0010\u0019\u001a/\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0082\u0080\u0004¢\u0006\u0002\u0010\u001c\u001a\u0016\u0010\u001d\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0082\u0080\u0004\u001a\u000e\u0010\u001f\u001a\u00020\u0014*\u00020\u0006H\u0083\u0088\u0004\u001a\u000e\u0010 \u001a\u00020\u0014*\u00020\u0006H\u0083\u0088\u0004\u001a\u001a\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006H\u0083\u0088\u0004\u001a&\u0010$\u001a\u00020\u0006*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0080\u0004\u001a\u0016\u0010&\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0080\u0004\u001a!\u0010'\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010(\u001a\u00020\u0012H\u0083\u0088\u0004¢\u0006\u0002\u0010)\u001a'\u0010*\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u000e\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010,H\u0082\u0088\u0004¢\u0006\u0004\b-\u0010.\u001a\u0018\u0010/\u001a\u0004\u0018\u00010\u0004*\u00020\u00122\u0006\u00100\u001a\u00020\u0002H\u0082\u0080\u0004\u001a\u0018\u00101\u001a\u0004\u0018\u00010\u0004*\u00020\u00122\u0006\u00100\u001a\u00020\u0002H\u0082\u0080\u0004\u001a\u000e\u0010=\u001a\u00020\u0006*\u00020\u0006H\u0083\u0088\u0004\u001a\u000e\u0010=\u001a\u00020\u0002*\u00020\u0002H\u0083\u0088\u0004\u001a\u0012\u0010J\u001a\u00020\u00062\u0006\u0010K\u001a\u00020\u0006H\u0082\u0080\u0004\u001a\u0012\u0010L\u001a\u00020\u00062\u0006\u0010M\u001a\u00020\u0006H\u0082\u0080\u0004\u001a\u0017\u0010N\u001a\u00020\u00012\u0006\u0010O\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0002\u0010P\u001a\u0017\u0010Q\u001a\u00020\u00012\u0006\u0010R\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0002\u0010P\u001a\u001f\u0010S\u001a\u00020\u00012\u0006\u0010T\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0002H\u0082\u0080\u0004¢\u0006\u0002\u0010V\u001a\u0017\u0010W\u001a\u00020\u00012\u0006\u0010K\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0002\u0010P\u001a\u0017\u0010X\u001a\u00020\u00012\u0006\u0010M\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0002\u0010P\"\u001f\u00102\u001a\u00020\b*\u00020\u00048BX\u0082\u0084\b¢\u0006\f\u0012\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0019\u00107\u001a\u00020\u0006*\u00020\u00048BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b8\u00109\"\u0019\u0010:\u001a\u00020\u0002*\u00020\u00048BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b;\u0010<\"\u000f\u0010>\u001a\u00020\u0002X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010?\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010@\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010A\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010B\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010C\u001a\u00020\u0006X\u0082Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010D\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010E\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010F\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010G\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010H\u001a\u00020\u0012X\u0082Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010I\u001a\u00020\u0002X\u0082Ô\b¢\u0006\u0002\n\u0000¨\u0006Y"}, d2 = {"toDuration", "Lkotlin/time/Duration;", _UrlKt.FRAGMENT_ENCODE_SET, "unit", "Lkotlin/time/DurationUnit;", "(ILkotlin/time/DurationUnit;)J", _UrlKt.FRAGMENT_ENCODE_SET, "(JLkotlin/time/DurationUnit;)J", _UrlKt.FRAGMENT_ENCODE_SET, "(DLkotlin/time/DurationUnit;)J", "times", "duration", "times-mvk6XK0", "(IJ)J", "times-kIfJnKk", "(DJ)J", "parseDuration", "value", _UrlKt.FRAGMENT_ENCODE_SET, "strictIso", _UrlKt.FRAGMENT_ENCODE_SET, "throwException", "(Ljava/lang/String;ZZ)J", "parseIsoStringFormat", "startIndex", "(Ljava/lang/String;IZ)J", "parseDefaultStringFormat", "hasSign", "(Ljava/lang/String;IZZ)J", "addMillisWithoutOverflow", "other", "isInfiniteMillis", "isFiniteMillis", "sameSign", "a", "b", "parseFractionFallback", "endIndex", "fractionDigitsToNanos", "handleError", "message", "(ZLjava/lang/String;)J", "onInvalid", "block", "Lkotlin/Function0;", "onInvalid-ge6A_vg", "(JLkotlin/jvm/functions/Function0;)Lkotlin/time/Duration;", "defaultDurationUnitByShortNameOrNull", "start", "isoDurationUnitByShortNameOrNull", "fractionMultiplier", "getFractionMultiplier$annotations", "(Lkotlin/time/DurationUnit;)V", "getFractionMultiplier", "(Lkotlin/time/DurationUnit;)D", "fallbackFractionMultiplier", "getFallbackFractionMultiplier", "(Lkotlin/time/DurationUnit;)J", "shortNameLength", "getShortNameLength", "(Lkotlin/time/DurationUnit;)I", "multiplyBy10", "NANOS_IN_MILLIS", "MICROS_IN_MILLIS", "NANOS_IN_MICROS", "MAX_NANOS", "MAX_MILLIS", "MAX_NANOS_IN_MILLIS", "MILLIS_IN_SECOND", "MILLIS_IN_MINUTE", "MILLIS_IN_HOUR", "MILLIS_IN_DAY", "INFINITY_STRING", "FRACTION_LIMIT", "nanosToMillis", "nanos", "millisToNanos", "millis", "durationOfNanos", "normalNanos", "(J)J", "durationOfMillis", "normalMillis", "durationOf", "normalValue", "unitDiscriminator", "(JI)J", "durationOfNanosNormalized", "durationOfMillisNormalized", "kotlin-stdlib"}, m910k = 2, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Duration.kt\nkotlin/time/LongParser\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 Duration.kt\nkotlin/time/FractionalParser\n*L\n1#1,1613:1\n1#2:1614\n1284#3,12:1615\n1296#3,15:1630\n1284#3,12:1674\n1296#3,15:1689\n1656#4,3:1627\n1656#4,3:1668\n1656#4,3:1671\n1656#4,3:1686\n1656#4,3:1727\n1342#5,23:1645\n1342#5,23:1704\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n1100#1:1615,12\n1100#1:1630,15\n1179#1:1674,12\n1179#1:1689,15\n1100#1:1627,3\n1109#1:1668,3\n1174#1:1671,3\n1179#1:1686,3\n1191#1:1727,3\n1109#1:1645,23\n1191#1:1704,23\n*E\n"})
public final class DurationKt {
    private static final int FRACTION_LIMIT = 15;
    private static final String INFINITY_STRING = "Infinity";
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    private static final long MAX_NANOS_IN_MILLIS = 4611686018426L;
    public static final long MICROS_IN_MILLIS = 1000;
    public static final long MILLIS_IN_DAY = 86400000;
    public static final long MILLIS_IN_HOUR = 3600000;
    public static final long MILLIS_IN_MINUTE = 60000;
    public static final long MILLIS_IN_SECOND = 1000;
    public static final long NANOS_IN_MICROS = 1000;
    public static final int NANOS_IN_MILLIS = 1000000;

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m910k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DurationUnit.values().length];
            try {
                iArr[DurationUnit.MICROSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DurationUnit.NANOSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DurationUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DurationUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DurationUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DurationUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DurationUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static /* synthetic */ void getFractionMultiplier$annotations(DurationUnit durationUnit) {
    }

    @InlineOnly
    private static final boolean isFiniteMillis(long j) {
        return -4611686018427387903L < j && j < MAX_MILLIS;
    }

    @InlineOnly
    private static final boolean isInfiniteMillis(long j) {
        return j == MAX_MILLIS || j == -4611686018427387903L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long millisToNanos(long j) {
        return j * 1000000;
    }

    @InlineOnly
    private static final int multiplyBy10(int i) {
        return (i << 3) + (i << 1);
    }

    @InlineOnly
    private static final long multiplyBy10(long j) {
        return (j << 3) + (j << 1);
    }

    @InlineOnly
    private static final boolean sameSign(long j, long j2) {
        return (j ^ j2) >= 0;
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(int i, DurationUnit durationUnit) {
        if (durationUnit.compareTo(DurationUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(i, durationUnit, DurationUnit.NANOSECONDS));
        }
        return toDuration(i, durationUnit);
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(long j, DurationUnit durationUnit) {
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        long jConvertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(MAX_NANOS, durationUnit2, durationUnit);
        if ((-jConvertDurationUnitOverflow) <= j && j <= jConvertDurationUnitOverflow) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j, durationUnit, durationUnit2));
        }
        DurationUnit durationUnit3 = DurationUnit.MILLISECONDS;
        if (durationUnit.compareTo(durationUnit3) >= 0) {
            return durationOfMillis(((long) MathKt.getSign(j)) * DurationUnitKt__DurationUnitKt.convertDurationUnitToMilliseconds(Math.abs(RangesKt.coerceAtLeast(j, -9223372036854775807L)), durationUnit));
        }
        return durationOfMillis(RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j, durationUnit, durationUnit3), -4611686018427387903L, MAX_MILLIS));
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(double d, DurationUnit durationUnit) {
        double dConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, durationUnit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(dConvertDurationUnit)) {
            f$$ExternalSyntheticBUOutline1.m215m("Duration value cannot be NaN.");
            return 0L;
        }
        long jRoundToLong = MathKt.roundToLong(dConvertDurationUnit);
        if (-4611686018426999999L <= jRoundToLong && jRoundToLong < 4611686018427000000L) {
            return durationOfNanos(jRoundToLong);
        }
        return durationOfMillisNormalized(MathKt.roundToLong(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, durationUnit, DurationUnit.MILLISECONDS)));
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    /* JADX INFO: renamed from: times-mvk6XK0, reason: not valid java name */
    private static final long m5067timesmvk6XK0(int i, long j) {
        return Duration.m4996timesUwyO8pc(j, i);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    /* JADX INFO: renamed from: times-kIfJnKk, reason: not valid java name */
    private static final long m5066timeskIfJnKk(double d, long j) {
        return Duration.m4995timesUwyO8pc(j, d);
    }

    public static /* synthetic */ long parseDuration$default(String str, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = true;
        }
        return parseDuration(str, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long parseDuration(String str, boolean z, boolean z2) {
        int i;
        int i2;
        long defaultStringFormat;
        if (str.length() == 0) {
            if (!z2) {
                return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
            }
            f$$ExternalSyntheticBUOutline1.m215m("The string is empty");
            return 0L;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt != '+') {
            i = cCharAt != '-' ? 0 : 1;
            i2 = i;
        } else {
            i = 0;
            i2 = 1;
        }
        boolean z3 = i2 > 0;
        if (str.length() <= i2) {
            if (!z2) {
                return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
            }
            f$$ExternalSyntheticBUOutline1.m215m("No components");
            return 0L;
        }
        if (str.charAt(i2) == 'P') {
            defaultStringFormat = parseIsoStringFormat(str, i2 + 1, z2);
        } else {
            if (z) {
                if (!z2) {
                    return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
                }
                f$$ExternalSyntheticBUOutline1.m215m(_UrlKt.FRAGMENT_ENCODE_SET);
                return 0L;
            }
            if (StringsKt.regionMatches(str, i2, INFINITY_STRING, 0, Math.max(str.length() - i2, 8), true)) {
                defaultStringFormat = Duration.INSTANCE.m5057getINFINITEUwyO8pc();
            } else {
                defaultStringFormat = parseDefaultStringFormat(str, i2, z3, z2);
            }
        }
        return (i == 0 || Duration.m4970equalsimpl0(defaultStringFormat, Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib())) ? defaultStringFormat : Duration.m5009unaryMinusUwyO8pc(defaultStringFormat);
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x01ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x012c  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:42:0x0089
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final long parseIsoStringFormat(java.lang.String r25, int r26, boolean r27) {
        /*
            Method dump skipped, instruction units count: 657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.DurationKt.parseIsoStringFormat(java.lang.String, int, boolean):long");
    }

    private static final long parseDefaultStringFormat(String str, int i, boolean z, boolean z2) {
        boolean z3;
        int i2;
        char c2;
        boolean z4;
        int i3;
        int i4;
        long j;
        char cCharAt;
        char cCharAt2;
        char cCharAt3;
        char cCharAt4;
        int length = str.length();
        boolean z5 = !z;
        long j2 = 0;
        if (z && str.charAt(i) == '(' && str.charAt(length - 1) == ')') {
            i2 = i + 1;
            length--;
            if (i2 == length) {
                if (!z2) {
                    return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
                }
                f$$ExternalSyntheticBUOutline1.m215m("No components");
                return 0L;
            }
            z3 = true;
        } else {
            z3 = z5;
            i2 = i;
        }
        DurationUnit durationUnit = null;
        long jAddMillisWithoutOverflow = 0;
        long jFractionDigitsToNanos = 0;
        boolean z6 = true;
        while (i2 < length) {
            if (!z6 && z3) {
                while (i2 < str.length() && str.charAt(i2) == ' ') {
                    i2++;
                }
            }
            LongParser longParser = LongParser.INSTANCE.getDefault();
            int i5 = (longParser.allowSign && ((cCharAt4 = str.charAt(i2)) == '+' || cCharAt4 == '-')) ? i2 + 1 : i2;
            while (true) {
                c2 = '0';
                if (i5 >= str.length() || str.charAt(i5) != '0') {
                    break;
                }
                i5++;
            }
            long j3 = j2;
            while (i5 < str.length() && '0' <= (cCharAt2 = str.charAt(i5)) && cCharAt2 < ':') {
                int i6 = cCharAt2 - '0';
                if (j2 <= longParser.overflowThreshold) {
                    boolean z7 = z3;
                    if (j2 != longParser.overflowThreshold || i6 <= longParser.lastDigitMax) {
                        j2 = ((long) i6) + (j2 << 3) + (j2 << 1);
                        i5++;
                        z3 = z7;
                    }
                }
                while (i5 < str.length() && '0' <= (cCharAt3 = str.charAt(i5)) && cCharAt3 < ':') {
                    i5++;
                }
                if (!z2) {
                    return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
                }
                f$$ExternalSyntheticBUOutline1.m215m(_UrlKt.FRAGMENT_ENCODE_SET);
                return j3;
            }
            boolean z8 = z3;
            if (i5 == i2 || i5 == length) {
                if (!z2) {
                    return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
                }
                f$$ExternalSyntheticBUOutline1.m215m(_UrlKt.FRAGMENT_ENCODE_SET);
                return j3;
            }
            boolean z9 = str.charAt(i5) == '.';
            if (z9) {
                int i7 = i5 + 1;
                FractionalParser fractionalParser = FractionalParser.INSTANCE;
                int iMin = Math.min(i5 + 7, str.length());
                int i8 = i7;
                int i9 = 0;
                while (i8 < iMin) {
                    char cCharAt5 = str.charAt(i8);
                    if (c2 > cCharAt5 || cCharAt5 >= ':') {
                        break;
                    }
                    i9 = (i9 << 3) + (i9 << 1) + (cCharAt5 - '0');
                    i8++;
                    c2 = '0';
                }
                int i10 = i9;
                for (int i11 = 0; i11 < 6 - (i8 - i7); i11++) {
                    i10 = (i10 << 3) + (i10 << 1);
                }
                int iMin2 = Math.min(i8 + 9, str.length());
                i3 = i8;
                int i12 = 0;
                while (true) {
                    z4 = z9;
                    if (i3 >= iMin2) {
                        break;
                    }
                    char cCharAt6 = str.charAt(i3);
                    int i13 = iMin2;
                    if ('0' > cCharAt6 || cCharAt6 >= ':') {
                        break;
                    }
                    i12 = (i12 << 3) + (i12 << 1) + (cCharAt6 - '0');
                    i3++;
                    z9 = z4;
                    iMin2 = i13;
                }
                int i14 = 9 - (i3 - i8);
                int i15 = i12;
                for (int i16 = 0; i16 < i14; i16++) {
                    i15 = (i15 << 3) + (i15 << 1);
                }
                while (i3 < str.length() && '0' <= (cCharAt = str.charAt(i3)) && cCharAt < ':') {
                    i3++;
                }
                if (i3 == i7 || i3 == length) {
                    if (!z2) {
                        return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
                    }
                    f$$ExternalSyntheticBUOutline1.m215m(_UrlKt.FRAGMENT_ENCODE_SET);
                    return j3;
                }
                i4 = i5;
                j = (((long) i10) * 1000000000) + ((long) i15);
            } else {
                z4 = z9;
                i3 = i5;
                i4 = -1;
                j = j3;
            }
            DurationUnit durationUnitDefaultDurationUnitByShortNameOrNull = defaultDurationUnitByShortNameOrNull(str, i3);
            if (durationUnitDefaultDurationUnitByShortNameOrNull == null) {
                String str2 = "Unknown duration unit short name: " + str.charAt(i3);
                if (!z2) {
                    return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
                }
                f$$ExternalSyntheticBUOutline1.m215m(str2);
                return j3;
            }
            if (durationUnit != null && durationUnit.compareTo(durationUnitDefaultDurationUnitByShortNameOrNull) <= 0) {
                if (!z2) {
                    return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
                }
                f$$ExternalSyntheticBUOutline1.m215m("Unexpected order of duration components");
                return j3;
            }
            int i17 = WhenMappings.$EnumSwitchMapping$0[durationUnitDefaultDurationUnitByShortNameOrNull.ordinal()];
            if (i17 == 1) {
                jAddMillisWithoutOverflow += j2 / 1000;
                if (jAddMillisWithoutOverflow <= MAX_NANOS_IN_MILLIS) {
                    jFractionDigitsToNanos = (j2 % 1000) * 1000;
                }
            } else if (i17 != 2) {
                jAddMillisWithoutOverflow = addMillisWithoutOverflow(jAddMillisWithoutOverflow, DurationUnitKt__DurationUnitKt.convertDurationUnitToMilliseconds(j2, durationUnitDefaultDurationUnitByShortNameOrNull));
            } else {
                jAddMillisWithoutOverflow += j2 / 1000000;
                jFractionDigitsToNanos += j2 % 1000000;
            }
            int shortNameLength = getShortNameLength(durationUnitDefaultDurationUnitByShortNameOrNull) + i3;
            if (z4) {
                if (shortNameLength < length) {
                    if (!z2) {
                        return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
                    }
                    f$$ExternalSyntheticBUOutline1.m215m("Fractional component must be last");
                    return j3;
                }
                jFractionDigitsToNanos += (durationUnitDefaultDurationUnitByShortNameOrNull.compareTo(DurationUnit.MINUTES) < 0 || shortNameLength - i4 <= 15) ? fractionDigitsToNanos(j, durationUnitDefaultDurationUnitByShortNameOrNull) : parseFractionFallback(str, i4, shortNameLength - getShortNameLength(durationUnitDefaultDurationUnitByShortNameOrNull), durationUnitDefaultDurationUnitByShortNameOrNull);
            }
            z3 = z8;
            i2 = shortNameLength;
            durationUnit = durationUnitDefaultDurationUnitByShortNameOrNull;
            j2 = j3;
            z6 = false;
        }
        return Duration.m4994plusLRDsOJo(toDuration(jAddMillisWithoutOverflow, DurationUnit.MILLISECONDS), toDuration(jFractionDigitsToNanos, DurationUnit.NANOSECONDS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long addMillisWithoutOverflow(long j, long j2) {
        return (j == MAX_MILLIS || j == -4611686018427387903L) ? ((-4611686018427387903L >= j2 || j2 >= MAX_MILLIS) && (j2 ^ j) < 0) ? Duration.INVALID_RAW_VALUE : j : (j2 == MAX_MILLIS || j2 == -4611686018427387903L) ? j2 : RangesKt.coerceIn(j + j2, -4611686018427387903L, MAX_MILLIS);
    }

    private static final long parseFractionFallback(String str, int i, int i2, DurationUnit durationUnit) {
        return MathKt.roundToLong(Double.parseDouble(str.substring(i, i2)) * getFallbackFractionMultiplier(durationUnit));
    }

    private static final long fractionDigitsToNanos(long j, DurationUnit durationUnit) {
        return MathKt.roundToLong(j * getFractionMultiplier(durationUnit));
    }

    public static /* synthetic */ long handleError$default(boolean z, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (z) {
            f$$ExternalSyntheticBUOutline1.m215m(str);
            return 0L;
        }
        return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
    }

    @InlineOnly
    private static final long handleError(boolean z, String str) {
        if (z) {
            f$$ExternalSyntheticBUOutline1.m215m(str);
            return 0L;
        }
        return Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib();
    }

    /* JADX INFO: renamed from: onInvalid-ge6A_vg, reason: not valid java name */
    private static final Duration m5065onInvalidge6A_vg(long j, Function0<Duration> function0) {
        return Duration.m4970equalsimpl0(j, Duration.INSTANCE.m5058getINVALIDUwyO8pc$kotlin_stdlib()) ? function0.invoke() : Duration.m4963boximpl(j);
    }

    private static final DurationUnit defaultDurationUnitByShortNameOrNull(String str, int i) {
        char cCharAt = str.charAt(i);
        char cCharAt2 = i < StringsKt.getLastIndex(str) ? str.charAt(i + 1) : (char) 0;
        if (cCharAt == 'd') {
            return DurationUnit.DAYS;
        }
        if (cCharAt == 'h') {
            return DurationUnit.HOURS;
        }
        if (cCharAt == 's') {
            return DurationUnit.SECONDS;
        }
        if (cCharAt == 'u') {
            if (cCharAt2 == 's') {
                return DurationUnit.MICROSECONDS;
            }
            return null;
        }
        if (cCharAt == 'm') {
            return cCharAt2 == 's' ? DurationUnit.MILLISECONDS : DurationUnit.MINUTES;
        }
        if (cCharAt == 'n' && cCharAt2 == 's') {
            return DurationUnit.NANOSECONDS;
        }
        return null;
    }

    private static final DurationUnit isoDurationUnitByShortNameOrNull(String str, int i) {
        char cCharAt = str.charAt(i);
        if (cCharAt == 'D') {
            return DurationUnit.DAYS;
        }
        if (cCharAt == 'H') {
            return DurationUnit.HOURS;
        }
        if (cCharAt == 'M') {
            return DurationUnit.MINUTES;
        }
        if (cCharAt != 'S') {
            return null;
        }
        return DurationUnit.SECONDS;
    }

    private static final double getFractionMultiplier(DurationUnit durationUnit) {
        switch (WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()]) {
            case 1:
                return 1.0E-12d;
            case 2:
                return 1.0E-15d;
            case 3:
                return 1.0E-9d;
            case 4:
                return 1.0E-6d;
            case 5:
                return 6.0E-5d;
            case 6:
                return 0.0036d;
            case 7:
                return 0.0864d;
            default:
                DurationKt$$ExternalSyntheticBUOutline0.m941m("Unknown unit: ", durationUnit);
                return 0.0d;
        }
    }

    private static final long getFallbackFractionMultiplier(DurationUnit durationUnit) {
        int i = WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()];
        if (i == 5) {
            return 60000000000L;
        }
        if (i == 6) {
            return 3600000000000L;
        }
        if (i == 7) {
            return 86400000000000L;
        }
        DurationKt$$ExternalSyntheticBUOutline1.m942m("Invalid unit: ", durationUnit, " for fallback fraction multiplier");
        return 0L;
    }

    private static final int getShortNameLength(DurationUnit durationUnit) {
        int i = WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()];
        return (i == 1 || i == 2 || i == 3) ? 2 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long nanosToMillis(long j) {
        return j / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanos(long j) {
        return Duration.INSTANCE.m5056fromRawValueUwyO8pc$kotlin_stdlib(j << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillis(long j) {
        return Duration.INSTANCE.m5056fromRawValueUwyO8pc$kotlin_stdlib((j << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOf(long j, int i) {
        return Duration.INSTANCE.m5056fromRawValueUwyO8pc$kotlin_stdlib((j << 1) + ((long) i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanosNormalized(long j) {
        if (-4611686018426999999L <= j && j < 4611686018427000000L) {
            return durationOfNanos(j);
        }
        return durationOfMillis(nanosToMillis(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillisNormalized(long j) {
        if (-4611686018426L <= j && j < 4611686018427L) {
            return durationOfNanos(millisToNanos(j));
        }
        return durationOfMillis(RangesKt.coerceIn(j, -4611686018427387903L, MAX_MILLIS));
    }
}
