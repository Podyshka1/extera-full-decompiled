package j$.nio.file.attribute;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileTime implements Comparable<FileTime> {

    /* JADX INFO: renamed from: a */
    public final long f498a;

    /* JADX INFO: renamed from: b */
    public Instant f499b = null;

    /* JADX INFO: renamed from: c */
    public String f500c;

    public FileTime(long j) {
        this.f498a = j;
    }

    /* JADX INFO: renamed from: I */
    public static long m599I(long j, long j2, long j3) {
        if (j > j3) {
            return LongCompanionObject.MAX_VALUE;
        }
        if (j < (-j3)) {
            return Long.MIN_VALUE;
        }
        return j * j2;
    }

    public static FileTime fromMillis(long j) {
        return new FileTime(j);
    }

    /* JADX INFO: renamed from: s */
    public static void m600s(StringBuilder sb, int i, int i2) {
        while (i > 0) {
            sb.append((char) ((i2 / i) + 48));
            i2 %= i;
            i /= 10;
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final int compareTo(FileTime fileTime) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (timeUnit != null) {
            fileTime.getClass();
            return Long.compare(this.f498a, fileTime.f498a);
        }
        long epochSecond = toInstant().getEpochSecond();
        int iCompare = Long.compare(epochSecond, fileTime.toInstant().getEpochSecond());
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompare2 = Long.compare(toInstant().getNano(), fileTime.toInstant().getNano());
        if (iCompare2 != 0) {
            return iCompare2;
        }
        if (epochSecond != 31556889864403199L && epochSecond != -31557014167219200L) {
            return 0;
        }
        long epochSecond2 = timeUnit != null ? this.f498a / DurationKt.MILLIS_IN_DAY : toInstant().getEpochSecond() / 86400;
        long epochSecond3 = timeUnit != null ? fileTime.f498a / DurationKt.MILLIS_IN_DAY : fileTime.toInstant().getEpochSecond() / 86400;
        return epochSecond2 == epochSecond3 ? Long.compare(m602K(epochSecond2), fileTime.m602K(epochSecond3)) : Long.compare(epochSecond2, epochSecond3);
    }

    /* JADX INFO: renamed from: K */
    public final long m602K(long j) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
        if (timeUnit2 != null) {
            return timeUnit2.toNanos(this.f498a - timeUnit2.convert(j, timeUnit));
        }
        return TimeUnit.SECONDS.toNanos(toInstant().getEpochSecond() - timeUnit.toSeconds(j));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof FileTime) && compareTo((FileTime) obj) == 0;
    }

    public final int hashCode() {
        return toInstant().hashCode();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Instant toInstant() {
        long jM599I;
        int iFloorMod;
        long jFloorDiv;
        if (this.f499b == null) {
            switch (AbstractC2139r.f517a[TimeUnit.MILLISECONDS.ordinal()]) {
                case 1:
                    jM599I = m599I(this.f498a, 86400L, 106751991167300L);
                    long j = jM599I;
                    iFloorMod = 0;
                    jFloorDiv = j;
                    if (jFloorDiv <= -31557014167219200L) {
                        this.f499b = Instant.f605d;
                    } else if (jFloorDiv < 31556889864403199L) {
                        this.f499b = Instant.ofEpochSecond(jFloorDiv, iFloorMod);
                    } else {
                        this.f499b = Instant.f606e;
                    }
                    break;
                case 2:
                    jM599I = m599I(this.f498a, 3600L, 2562047788015215L);
                    long j2 = jM599I;
                    iFloorMod = 0;
                    jFloorDiv = j2;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 3:
                    jM599I = m599I(this.f498a, 60L, 153722867280912930L);
                    long j22 = jM599I;
                    iFloorMod = 0;
                    jFloorDiv = j22;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 4:
                    jM599I = this.f498a;
                    long j222 = jM599I;
                    iFloorMod = 0;
                    jFloorDiv = j222;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 5:
                    jFloorDiv = Math.floorDiv(this.f498a, 1000L);
                    iFloorMod = ((int) Math.floorMod(this.f498a, 1000L)) * DurationKt.NANOS_IN_MILLIS;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 6:
                    jFloorDiv = Math.floorDiv(this.f498a, 1000000L);
                    iFloorMod = ((int) Math.floorMod(this.f498a, 1000000L)) * 1000;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 7:
                    jFloorDiv = Math.floorDiv(this.f498a, 1000000000L);
                    iFloorMod = (int) Math.floorMod(this.f498a, 1000000000L);
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                default:
                    throw new AssertionError("Unit not handled");
            }
        }
        return this.f499b;
    }

    public long toMillis() {
        if (TimeUnit.MILLISECONDS != null) {
            return this.f498a;
        }
        long epochSecond = this.f499b.getEpochSecond();
        int nano = this.f499b.getNano();
        long j = epochSecond * 1000;
        if (((Math.abs(epochSecond) | 1000) >>> 31) == 0 || j / 1000 == epochSecond) {
            return j + ((long) (nano / DurationKt.NANOS_IN_MILLIS));
        }
        if (epochSecond < 0) {
            return Long.MIN_VALUE;
        }
        return LongCompanionObject.MAX_VALUE;
    }

    public final String toString() {
        long epochSecond;
        int nano;
        long jFloorDiv;
        LocalDateTime localDateTimeM671K;
        int year;
        if (this.f500c == null) {
            if (this.f499b != null || TimeUnit.MILLISECONDS.compareTo(TimeUnit.SECONDS) < 0) {
                epochSecond = toInstant().getEpochSecond();
                nano = toInstant().getNano();
            } else {
                epochSecond = this.f498a / 1000;
                nano = 0;
            }
            if (epochSecond >= -62167219200L) {
                long j = epochSecond - 253402300800L;
                jFloorDiv = Math.floorDiv(j, 315569520000L) + 1;
                localDateTimeM671K = LocalDateTime.m671K(Math.floorMod(j, 315569520000L) - 62167219200L, nano, ZoneOffset.UTC);
                year = localDateTimeM671K.f616a.getYear();
            } else {
                long j2 = epochSecond + 62167219200L;
                jFloorDiv = j2 / 315569520000L;
                localDateTimeM671K = LocalDateTime.m671K((j2 % 315569520000L) - 62167219200L, nano, ZoneOffset.UTC);
                year = localDateTimeM671K.f616a.getYear();
            }
            int i = (((int) jFloorDiv) * 10000) + year;
            if (i <= 0) {
                i--;
            }
            int nano2 = localDateTimeM671K.f617b.getNano();
            StringBuilder sb = new StringBuilder(64);
            sb.append(i < 0 ? "-" : _UrlKt.FRAGMENT_ENCODE_SET);
            int iAbs = Math.abs(i);
            if (iAbs < 10000) {
                m600s(sb, 1000, Math.abs(iAbs));
            } else {
                sb.append(String.valueOf(iAbs));
            }
            sb.append(SignatureVisitor.SUPER);
            m600s(sb, 10, localDateTimeM671K.f616a.getMonthValue());
            sb.append(SignatureVisitor.SUPER);
            m600s(sb, 10, localDateTimeM671K.f616a.getDayOfMonth());
            sb.append('T');
            m600s(sb, 10, localDateTimeM671K.f617b.getHour());
            sb.append(':');
            m600s(sb, 10, localDateTimeM671K.f617b.getMinute());
            sb.append(':');
            m600s(sb, 10, localDateTimeM671K.f617b.getSecond());
            if (nano2 != 0) {
                sb.append('.');
                int i2 = 100000000;
                while (nano2 % 10 == 0) {
                    nano2 /= 10;
                    i2 /= 10;
                }
                m600s(sb, i2, nano2);
            }
            sb.append('Z');
            this.f500c = sb.toString();
        }
        return this.f500c;
    }
}
