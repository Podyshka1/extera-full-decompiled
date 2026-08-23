package j$.time;

import j$.time.temporal.ChronoUnit;

/* JADX INFO: renamed from: j$.time.p */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2168p {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f667a;

    static {
        int[] iArr = new int[ChronoUnit.values().length];
        f667a = iArr;
        try {
            iArr[ChronoUnit.NANOS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f667a[ChronoUnit.MICROS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f667a[ChronoUnit.MILLIS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f667a[ChronoUnit.SECONDS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f667a[ChronoUnit.MINUTES.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f667a[ChronoUnit.HOURS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f667a[ChronoUnit.HALF_DAYS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
