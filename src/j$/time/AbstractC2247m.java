package j$.time;

import j$.time.temporal.EnumC2254a;

/* JADX INFO: renamed from: j$.time.m */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2247m {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f813a;

    static {
        int[] iArr = new int[EnumC2254a.values().length];
        f813a = iArr;
        try {
            iArr[EnumC2254a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f813a[EnumC2254a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
