package j$.nio.file.attribute;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileTime implements Comparable<FileTime> {

    /* JADX INFO: renamed from: a */
    public final long f499a;

    /* JADX INFO: renamed from: b */
    public Instant f500b = null;

    /* JADX INFO: renamed from: c */
    public String f501c;

    public FileTime(long j) {
        this.f499a = j;
    }

    /* JADX INFO: renamed from: I */
    public static long m623I(long j, long j2, long j3) {
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
    public static void m624s(StringBuilder sb, int i, int i2) {
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
            return Long.compare(this.f499a, fileTime.f499a);
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
        long epochSecond2 = timeUnit != null ? this.f499a / DurationKt.MILLIS_IN_DAY : toInstant().getEpochSecond() / 86400;
        long epochSecond3 = timeUnit != null ? fileTime.f499a / DurationKt.MILLIS_IN_DAY : fileTime.toInstant().getEpochSecond() / 86400;
        return epochSecond2 == epochSecond3 ? Long.compare(m626K(epochSecond2), fileTime.m626K(epochSecond3)) : Long.compare(epochSecond2, epochSecond3);
    }

    /* JADX INFO: renamed from: K */
    public final long m626K(long j) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
        if (timeUnit2 != null) {
            return timeUnit2.toNanos(this.f499a - timeUnit2.convert(j, timeUnit));
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
        long jM623I;
        int iFloorMod;
        long jFloorDiv;
        if (this.f500b == null) {
            switch (AbstractC2279r.f518a[TimeUnit.MILLISECONDS.ordinal()]) {
                case 1:
                    jM623I = m623I(this.f499a, 86400L, 106751991167300L);
                    long j = jM623I;
                    iFloorMod = 0;
                    jFloorDiv = j;
                    if (jFloorDiv <= -31557014167219200L) {
                        this.f500b = Instant.f606d;
                    } else if (jFloorDiv < 31556889864403199L) {
                        this.f500b = Instant.ofEpochSecond(jFloorDiv, iFloorMod);
                    } else {
                        this.f500b = Instant.f607e;
                    }
                    break;
                case 2:
                    jM623I = m623I(this.f499a, 3600L, 2562047788015215L);
                    long j2 = jM623I;
                    iFloorMod = 0;
                    jFloorDiv = j2;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 3:
                    jM623I = m623I(this.f499a, 60L, 153722867280912930L);
                    long j22 = jM623I;
                    iFloorMod = 0;
                    jFloorDiv = j22;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 4:
                    jM623I = this.f499a;
                    long j222 = jM623I;
                    iFloorMod = 0;
                    jFloorDiv = j222;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 5:
                    jFloorDiv = Math.floorDiv(this.f499a, 1000L);
                    iFloorMod = ((int) Math.floorMod(this.f499a, 1000L)) * DurationKt.NANOS_IN_MILLIS;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 6:
                    jFloorDiv = Math.floorDiv(this.f499a, 1000000L);
                    iFloorMod = ((int) Math.floorMod(this.f499a, 1000000L)) * 1000;
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                case 7:
                    jFloorDiv = Math.floorDiv(this.f499a, 1000000000L);
                    iFloorMod = (int) Math.floorMod(this.f499a, 1000000000L);
                    if (jFloorDiv <= -31557014167219200L) {
                    }
                    break;
                default:
                    throw new AssertionError("Unit not handled");
            }
        }
        return this.f500b;
    }

    public long toMillis() {
        if (TimeUnit.MILLISECONDS != null) {
            return this.f499a;
        }
        long epochSecond = this.f500b.getEpochSecond();
        int nano = this.f500b.getNano();
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
        LocalDateTime localDateTimeM696K;
        int year;
        if (this.f501c == null) {
            if (this.f500b != null || TimeUnit.MILLISECONDS.compareTo(TimeUnit.SECONDS) < 0) {
                epochSecond = toInstant().getEpochSecond();
                nano = toInstant().getNano();
            } else {
                epochSecond = this.f499a / 1000;
                nano = 0;
            }
            if (epochSecond >= -62167219200L) {
                long j = epochSecond - 253402300800L;
                jFloorDiv = Math.floorDiv(j, 315569520000L) + 1;
                localDateTimeM696K = LocalDateTime.m696K(Math.floorMod(j, 315569520000L) - 62167219200L, nano, ZoneOffset.UTC);
                year = localDateTimeM696K.f617a.getYear();
            } else {
                long j2 = epochSecond + 62167219200L;
                jFloorDiv = j2 / 315569520000L;
                localDateTimeM696K = LocalDateTime.m696K((j2 % 315569520000L) - 62167219200L, nano, ZoneOffset.UTC);
                year = localDateTimeM696K.f617a.getYear();
            }
            int i = (((int) jFloorDiv) * 10000) + year;
            if (i <= 0) {
                i--;
            }
            int nano2 = localDateTimeM696K.f618b.getNano();
            StringBuilder sb = new StringBuilder(64);
            sb.append(i < 0 ? "-" : _UrlKt.FRAGMENT_ENCODE_SET);
            int iAbs = Math.abs(i);
            if (iAbs < 10000) {
                m624s(sb, 1000, Math.abs(iAbs));
            } else {
                sb.append(String.valueOf(iAbs));
            }
            sb.append(SignatureVisitor.SUPER);
            m624s(sb, 10, localDateTimeM696K.f617a.getMonthValue());
            sb.append(SignatureVisitor.SUPER);
            m624s(sb, 10, localDateTimeM696K.f617a.getDayOfMonth());
            sb.append('T');
            m624s(sb, 10, localDateTimeM696K.f618b.getHour());
            sb.append(':');
            m624s(sb, 10, localDateTimeM696K.f618b.getMinute());
            sb.append(':');
            m624s(sb, 10, localDateTimeM696K.f618b.getSecond());
            if (nano2 != 0) {
                sb.append('.');
                int i2 = 100000000;
                while (nano2 % 10 == 0) {
                    nano2 /= 10;
                    i2 /= 10;
                }
                m624s(sb, i2, nano2);
            }
            sb.append('Z');
            this.f501c = sb.toString();
        }
        return this.f501c;
    }
}
