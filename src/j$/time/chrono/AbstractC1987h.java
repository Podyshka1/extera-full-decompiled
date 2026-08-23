package j$.time.chrono;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.chrono.h */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1987h {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f458a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f458a = iArr;
        try {
            iArr[EnumC2047a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f458a[EnumC2047a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
