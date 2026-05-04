package kotlin.time;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.http2.Http2Connection;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes.dex */
public final class Duration implements Comparable {
    private final long rawValue;
    public static final Companion Companion = new Companion(null);
    private static final long ZERO = m3629constructorimpl(0);
    private static final long INFINITE = DurationKt.durationOfMillis(4611686018427387903L);
    private static final long NEG_INFINITE = DurationKt.durationOfMillis(-4611686018427387903L);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m3627boximpl(long j) {
        return new Duration(j);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3630equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).m3655unboximpl();
    }

    /* JADX INFO: renamed from: getValue-impl, reason: not valid java name */
    private static final long m3642getValueimpl(long j) {
        return j >> 1;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3643hashCodeimpl(long j) {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(j);
    }

    /* JADX INFO: renamed from: isInMillis-impl, reason: not valid java name */
    private static final boolean m3645isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    /* JADX INFO: renamed from: isInNanos-impl, reason: not valid java name */
    private static final boolean m3646isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    /* JADX INFO: renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m3648isNegativeimpl(long j) {
        return j < 0;
    }

    /* JADX INFO: renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m3649isPositiveimpl(long j) {
        return j > 0;
    }

    public boolean equals(Object obj) {
        return m3630equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m3643hashCodeimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m3655unboximpl() {
        return this.rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return m3654compareToLRDsOJo(((Duration) obj).m3655unboximpl());
    }

    private /* synthetic */ Duration(long j) {
        this.rawValue = j;
    }

    /* JADX INFO: renamed from: getStorageUnit-impl, reason: not valid java name */
    private static final DurationUnit m3641getStorageUnitimpl(long j) {
        return m3646isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m3629constructorimpl(long j) {
        if (!DurationJvmKt.getDurationAssertionsEnabled()) {
            return j;
        }
        if (m3646isInNanosimpl(j)) {
            long jM3642getValueimpl = m3642getValueimpl(j);
            if (-4611686018426999999L <= jM3642getValueimpl && jM3642getValueimpl < 4611686018427000000L) {
                return j;
            }
            throw new AssertionError(m3642getValueimpl(j) + " ns is out of nanoseconds range");
        }
        long jM3642getValueimpl2 = m3642getValueimpl(j);
        if (-4611686018427387903L > jM3642getValueimpl2 || jM3642getValueimpl2 >= 4611686018427387904L) {
            throw new AssertionError(m3642getValueimpl(j) + " ms is out of milliseconds range");
        }
        long jM3642getValueimpl3 = m3642getValueimpl(j);
        if (-4611686018426L > jM3642getValueimpl3 || jM3642getValueimpl3 >= 4611686018427L) {
            return j;
        }
        throw new AssertionError(m3642getValueimpl(j) + " ms is denormalized");
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m3653unaryMinusUwyO8pc(long j) {
        return DurationKt.durationOf(-m3642getValueimpl(j), ((int) j) & 1);
    }

    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m3650plusLRDsOJo(long j, long j2) {
        if (m3647isInfiniteimpl(j)) {
            if (m3644isFiniteimpl(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (m3647isInfiniteimpl(j2)) {
            return j2;
        }
        if ((((int) j) & 1) == (((int) j2) & 1)) {
            long jM3642getValueimpl = m3642getValueimpl(j) + m3642getValueimpl(j2);
            return m3646isInNanosimpl(j) ? DurationKt.durationOfNanosNormalized(jM3642getValueimpl) : DurationKt.durationOfMillisNormalized(jM3642getValueimpl);
        }
        if (m3645isInMillisimpl(j)) {
            return m3625addValuesMixedRangesUwyO8pc(j, m3642getValueimpl(j), m3642getValueimpl(j2));
        }
        return m3625addValuesMixedRangesUwyO8pc(j, m3642getValueimpl(j2), m3642getValueimpl(j));
    }

    /* JADX INFO: renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    private static final long m3625addValuesMixedRangesUwyO8pc(long j, long j2, long j3) {
        long jNanosToMillis = DurationKt.nanosToMillis(j3);
        long j4 = j2 + jNanosToMillis;
        if (-4611686018426L > j4 || j4 >= 4611686018427L) {
            return DurationKt.durationOfMillis(RangesKt.coerceIn(j4, -4611686018427387903L, 4611686018427387903L));
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(j4) + (j3 - DurationKt.millisToNanos(jNanosToMillis)));
    }

    /* JADX INFO: renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m3647isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* JADX INFO: renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m3644isFiniteimpl(long j) {
        return !m3647isInfiniteimpl(j);
    }

    /* JADX INFO: renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m3631getAbsoluteValueUwyO8pc(long j) {
        return m3648isNegativeimpl(j) ? m3653unaryMinusUwyO8pc(j) : j;
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m3654compareToLRDsOJo(long j) {
        return m3628compareToLRDsOJo(this.rawValue, j);
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m3628compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m3648isNegativeimpl(j) ? -i : i;
    }

    /* JADX INFO: renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m3632getHoursComponentimpl(long j) {
        if (m3647isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m3634getInWholeHoursimpl(j) % ((long) 24));
    }

    /* JADX INFO: renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m3638getMinutesComponentimpl(long j) {
        if (m3647isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m3636getInWholeMinutesimpl(j) % ((long) 60));
    }

    /* JADX INFO: renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m3640getSecondsComponentimpl(long j) {
        if (m3647isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m3637getInWholeSecondsimpl(j) % ((long) 60));
    }

    /* JADX INFO: renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m3639getNanosecondsComponentimpl(long j) {
        long jM3642getValueimpl;
        if (m3647isInfiniteimpl(j)) {
            return 0;
        }
        if (m3645isInMillisimpl(j)) {
            jM3642getValueimpl = DurationKt.millisToNanos(m3642getValueimpl(j) % ((long) MediaDataController.MAX_STYLE_RUNS_COUNT));
        } else {
            jM3642getValueimpl = m3642getValueimpl(j) % ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
        }
        return (int) jM3642getValueimpl;
    }

    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    public static final long m3651toLongimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m3642getValueimpl(j), m3641getStorageUnitimpl(j), unit);
    }

    /* JADX INFO: renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m3633getInWholeDaysimpl(long j) {
        return m3651toLongimpl(j, DurationUnit.DAYS);
    }

    /* JADX INFO: renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m3634getInWholeHoursimpl(long j) {
        return m3651toLongimpl(j, DurationUnit.HOURS);
    }

    /* JADX INFO: renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m3636getInWholeMinutesimpl(long j) {
        return m3651toLongimpl(j, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m3637getInWholeSecondsimpl(long j) {
        return m3651toLongimpl(j, DurationUnit.SECONDS);
    }

    /* JADX INFO: renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m3635getInWholeMillisecondsimpl(long j) {
        return (m3645isInMillisimpl(j) && m3644isFiniteimpl(j)) ? m3642getValueimpl(j) : m3651toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    public String toString() {
        return m3652toStringimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3652toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean zM3648isNegativeimpl = m3648isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (zM3648isNegativeimpl) {
            sb.append(SignatureVisitor.SUPER);
        }
        long jM3631getAbsoluteValueUwyO8pc = m3631getAbsoluteValueUwyO8pc(j);
        long jM3633getInWholeDaysimpl = m3633getInWholeDaysimpl(jM3631getAbsoluteValueUwyO8pc);
        int iM3632getHoursComponentimpl = m3632getHoursComponentimpl(jM3631getAbsoluteValueUwyO8pc);
        int iM3638getMinutesComponentimpl = m3638getMinutesComponentimpl(jM3631getAbsoluteValueUwyO8pc);
        int iM3640getSecondsComponentimpl = m3640getSecondsComponentimpl(jM3631getAbsoluteValueUwyO8pc);
        int iM3639getNanosecondsComponentimpl = m3639getNanosecondsComponentimpl(jM3631getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = jM3633getInWholeDaysimpl != 0;
        boolean z2 = iM3632getHoursComponentimpl != 0;
        boolean z3 = iM3638getMinutesComponentimpl != 0;
        boolean z4 = (iM3640getSecondsComponentimpl == 0 && iM3639getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(jM3633getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM3632getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM3638getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iM3640getSecondsComponentimpl != 0 || z || z2 || z3) {
                m3626appendFractionalimpl(j, sb, iM3640getSecondsComponentimpl, iM3639getNanosecondsComponentimpl, 9, "s", false);
            } else if (iM3639getNanosecondsComponentimpl >= 1000000) {
                m3626appendFractionalimpl(j, sb, iM3639getNanosecondsComponentimpl / 1000000, iM3639getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (iM3639getNanosecondsComponentimpl >= 1000) {
                m3626appendFractionalimpl(j, sb, iM3639getNanosecondsComponentimpl / MediaDataController.MAX_STYLE_RUNS_COUNT, iM3639getNanosecondsComponentimpl % MediaDataController.MAX_STYLE_RUNS_COUNT, 3, "us", false);
            } else {
                sb.append(iM3639getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (zM3648isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: appendFractional-impl, reason: not valid java name */
    private static final void m3626appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
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
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            } else {
                sb.append((CharSequence) strPadStart, 0, ((i4 + 3) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            }
        }
        sb.append(str);
    }
}
