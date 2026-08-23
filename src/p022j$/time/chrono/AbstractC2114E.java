package p022j$.time.chrono;

import p022j$.time.temporal.EnumC2186a;

/* JADX INFO: renamed from: j$.time.chrono.E */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2114E {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f674a;

    static {
        int[] iArr = new int[EnumC2186a.values().length];
        f674a = iArr;
        try {
            iArr[EnumC2186a.PROLEPTIC_MONTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f674a[EnumC2186a.YEAR_OF_ERA.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f674a[EnumC2186a.YEAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
