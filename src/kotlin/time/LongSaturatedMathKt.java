package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080\u0080\u0004¢\u0006\u0004\b\u0007\u0010\b\u001a)\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0004\b\u000b\u0010\f\u001a)\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0004\b\u000e\u0010\b\u001a\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0002\u0010\u0010\u001a'\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0080\u0080\u0004¢\u0006\u0002\u0010\u0014\u001a'\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0080\u0080\u0004¢\u0006\u0002\u0010\u0014\u001a'\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0080\u0004¢\u0006\u0002\u0010\u0014\u001a\u000e\u0010\u001b\u001a\u00020\u001c*\u00020\u0001H\u0080\u0088\u0004¨\u0006\u001d"}, d2 = {"saturatingAdd", _UrlKt.FRAGMENT_ENCODE_SET, "value", "unit", "Lkotlin/time/DurationUnit;", "duration", "Lkotlin/time/Duration;", "saturatingAdd-NuflL3o", "(JLkotlin/time/DurationUnit;J)J", "checkInfiniteSumDefined", "durationInUnit", "checkInfiniteSumDefined-PjuGub4", "(JJJ)J", "saturatingAddInHalves", "saturatingAddInHalves-NuflL3o", "infinityOfSign", "(J)J", "saturatingDiff", "valueNs", "origin", "(JJLkotlin/time/DurationUnit;)J", "saturatingOriginsDiff", "origin1", "origin2", "saturatingFiniteDiff", "value1", "value2", "isSaturated", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"})
public final class LongSaturatedMathKt {
    public static final boolean isSaturated(long j) {
        return ((j - 1) | 1) == LongCompanionObject.MAX_VALUE;
    }

    /* JADX INFO: renamed from: saturatingAdd-NuflL3o, reason: not valid java name */
    public static final long m4552saturatingAddNuflL3o(long j, DurationUnit durationUnit, long j2) {
        long jM4483toLongimpl = Duration.m4483toLongimpl(j2, durationUnit);
        if (((j - 1) | 1) == LongCompanionObject.MAX_VALUE) {
            return m4551checkInfiniteSumDefinedPjuGub4(j, j2, jM4483toLongimpl);
        }
        if (((jM4483toLongimpl - 1) | 1) == LongCompanionObject.MAX_VALUE) {
            return m4553saturatingAddInHalvesNuflL3o(j, durationUnit, j2);
        }
        long j3 = j + jM4483toLongimpl;
        if (((j ^ j3) & (jM4483toLongimpl ^ j3)) >= 0) {
            return j3;
        }
        if (j < 0) {
            return Long.MIN_VALUE;
        }
        return LongCompanionObject.MAX_VALUE;
    }

    /* JADX INFO: renamed from: checkInfiniteSumDefined-PjuGub4, reason: not valid java name */
    private static final long m4551checkInfiniteSumDefinedPjuGub4(long j, long j2, long j3) {
        if (!Duration.m4469isInfiniteimpl(j2) || (j ^ j3) >= 0) {
            return j;
        }
        f$$ExternalSyntheticBUOutline1.m212m("Summing infinities of different signs");
        return 0L;
    }

    /* JADX INFO: renamed from: saturatingAddInHalves-NuflL3o, reason: not valid java name */
    private static final long m4553saturatingAddInHalvesNuflL3o(long j, DurationUnit durationUnit, long j2) {
        long jM4447divUwyO8pc = Duration.m4447divUwyO8pc(j2, 2);
        long jM4483toLongimpl = Duration.m4483toLongimpl(jM4447divUwyO8pc, durationUnit);
        return (1 | (jM4483toLongimpl - 1)) == LongCompanionObject.MAX_VALUE ? jM4483toLongimpl : m4552saturatingAddNuflL3o(m4552saturatingAddNuflL3o(j, durationUnit, jM4447divUwyO8pc), durationUnit, Duration.m4472minusLRDsOJo(j2, jM4447divUwyO8pc));
    }

    private static final long infinityOfSign(long j) {
        return j < 0 ? Duration.INSTANCE.m4538getNEG_INFINITEUwyO8pc$kotlin_stdlib() : Duration.INSTANCE.m4536getINFINITEUwyO8pc();
    }

    public static final long saturatingDiff(long j, long j2, DurationUnit durationUnit) {
        if ((1 | (j2 - 1)) == LongCompanionObject.MAX_VALUE) {
            return Duration.m4488unaryMinusUwyO8pc(infinityOfSign(j2));
        }
        return saturatingFiniteDiff(j, j2, durationUnit);
    }

    public static final long saturatingOriginsDiff(long j, long j2, DurationUnit durationUnit) {
        if (((j2 - 1) | 1) == LongCompanionObject.MAX_VALUE) {
            if (j == j2) {
                return Duration.INSTANCE.m4539getZEROUwyO8pc();
            }
            return Duration.m4488unaryMinusUwyO8pc(infinityOfSign(j2));
        }
        if ((1 | (j - 1)) == LongCompanionObject.MAX_VALUE) {
            return infinityOfSign(j);
        }
        return saturatingFiniteDiff(j, j2, durationUnit);
    }

    private static final long saturatingFiniteDiff(long j, long j2, DurationUnit durationUnit) {
        long j3 = j - j2;
        if (((j3 ^ j) & (~(j3 ^ j2))) < 0) {
            DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
            if (durationUnit.compareTo(durationUnit2) < 0) {
                long jConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(1L, durationUnit2, durationUnit);
                long j4 = (j / jConvertDurationUnit) - (j2 / jConvertDurationUnit);
                long j5 = (j % jConvertDurationUnit) - (j2 % jConvertDurationUnit);
                Duration.Companion companion = Duration.INSTANCE;
                return Duration.m4473plusLRDsOJo(DurationKt.toDuration(j4, durationUnit2), DurationKt.toDuration(j5, durationUnit));
            }
            return Duration.m4488unaryMinusUwyO8pc(infinityOfSign(j3));
        }
        return DurationKt.toDuration(j3, durationUnit);
    }
}
