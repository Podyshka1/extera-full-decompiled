package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0080\u0004\u001a\u000e\u0010\u0003\u001a\u00020\u0002*\u00020\u0001H\u0087\u0080\u0004\u001a\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0081\u0080\u0004\u001a\"\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0081\u0080\u0004\u001a\"\u0010\u0004\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0081\u0080\u0004¨\u0006\u000b"}, d2 = {"toTimeUnit", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "toDurationUnit", "convertDurationUnit", _UrlKt.FRAGMENT_ENCODE_SET, "value", "sourceUnit", "targetUnit", "convertDurationUnitOverflow", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/time/DurationUnitKt")
class DurationUnitKt__DurationUnitJvmKt {

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m754k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @SinceKotlin(version = "1.8")
    public static final TimeUnit toTimeUnit(DurationUnit durationUnit) {
        return durationUnit.getTimeUnit();
    }

    @SinceKotlin(version = "1.8")
    public static final DurationUnit toDurationUnit(TimeUnit timeUnit) {
        switch (WhenMappings.$EnumSwitchMapping$0[timeUnit.ordinal()]) {
            case 1:
                return DurationUnit.NANOSECONDS;
            case 2:
                return DurationUnit.MICROSECONDS;
            case 3:
                return DurationUnit.MILLISECONDS;
            case 4:
                return DurationUnit.SECONDS;
            case 5:
                return DurationUnit.MINUTES;
            case 6:
                return DurationUnit.HOURS;
            case 7:
                return DurationUnit.DAYS;
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                return null;
        }
    }

    @SinceKotlin(version = "1.3")
    public static final double convertDurationUnit(double d, DurationUnit durationUnit, DurationUnit durationUnit2) {
        long jConvert = durationUnit2.getTimeUnit().convert(1L, durationUnit.getTimeUnit());
        return jConvert > 0 ? d * jConvert : d / durationUnit.getTimeUnit().convert(1L, durationUnit2.getTimeUnit());
    }

    @SinceKotlin(version = "1.5")
    public static final long convertDurationUnitOverflow(long j, DurationUnit durationUnit, DurationUnit durationUnit2) {
        return durationUnit2.getTimeUnit().convert(j, durationUnit.getTimeUnit());
    }

    @SinceKotlin(version = "1.5")
    public static final long convertDurationUnit(long j, DurationUnit durationUnit, DurationUnit durationUnit2) {
        return durationUnit2.getTimeUnit().convert(j, durationUnit.getTimeUnit());
    }
}
