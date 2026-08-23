package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;

/* JADX INFO: renamed from: j$.time.s */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2171s {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f673a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f674b;

    static {
        int[] iArr = new int[ChronoUnit.values().length];
        f674b = iArr;
        try {
            iArr[ChronoUnit.YEARS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f674b[ChronoUnit.DECADES.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f674b[ChronoUnit.CENTURIES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f674b[ChronoUnit.MILLENNIA.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f674b[ChronoUnit.ERAS.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        int[] iArr2 = new int[EnumC2173a.values().length];
        f673a = iArr2;
        try {
            iArr2[EnumC2173a.YEAR_OF_ERA.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f673a[EnumC2173a.YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f673a[EnumC2173a.ERA.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
