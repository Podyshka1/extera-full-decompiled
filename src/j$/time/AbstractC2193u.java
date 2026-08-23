package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.u */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2193u {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f708a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f709b;

    static {
        int[] iArr = new int[ChronoUnit.values().length];
        f709b = iArr;
        try {
            iArr[ChronoUnit.MONTHS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f709b[ChronoUnit.YEARS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f709b[ChronoUnit.DECADES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f709b[ChronoUnit.CENTURIES.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f709b[ChronoUnit.MILLENNIA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f709b[ChronoUnit.ERAS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr2 = new int[EnumC2173a.values().length];
        f708a = iArr2;
        try {
            iArr2[EnumC2173a.MONTH_OF_YEAR.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f708a[EnumC2173a.PROLEPTIC_MONTH.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f708a[EnumC2173a.YEAR_OF_ERA.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f708a[EnumC2173a.YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f708a[EnumC2173a.ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused11) {
        }
    }
}
