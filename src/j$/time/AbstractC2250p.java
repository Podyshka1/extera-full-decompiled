package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;

/* JADX INFO: renamed from: j$.time.p */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2250p {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f817a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f818b;

    static {
        int[] iArr = new int[ChronoUnit.values().length];
        f818b = iArr;
        try {
            iArr[ChronoUnit.YEARS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f818b[ChronoUnit.DECADES.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f818b[ChronoUnit.CENTURIES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f818b[ChronoUnit.MILLENNIA.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f818b[ChronoUnit.ERAS.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        int[] iArr2 = new int[EnumC2254a.values().length];
        f817a = iArr2;
        try {
            iArr2[EnumC2254a.YEAR_OF_ERA.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f817a[EnumC2254a.YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f817a[EnumC2254a.ERA.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
