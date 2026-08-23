package p022j$.time;

import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;

/* JADX INFO: renamed from: j$.time.r */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2183r {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f818a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f819b;

    static {
        int[] iArr = new int[EnumC2187b.values().length];
        f819b = iArr;
        try {
            iArr[EnumC2187b.MONTHS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f819b[EnumC2187b.YEARS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f819b[EnumC2187b.DECADES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f819b[EnumC2187b.CENTURIES.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f819b[EnumC2187b.MILLENNIA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f819b[EnumC2187b.ERAS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr2 = new int[EnumC2186a.values().length];
        f818a = iArr2;
        try {
            iArr2[EnumC2186a.MONTH_OF_YEAR.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f818a[EnumC2186a.PROLEPTIC_MONTH.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f818a[EnumC2186a.YEAR_OF_ERA.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f818a[EnumC2186a.YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f818a[EnumC2186a.ERA.ordinal()] = 5;
        } catch (NoSuchFieldError unused11) {
        }
    }
}
