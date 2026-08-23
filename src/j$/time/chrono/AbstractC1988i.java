package j$.time.chrono;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.chrono.i */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1988i {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f459a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f459a = iArr;
        try {
            iArr[EnumC2047a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f459a[EnumC2047a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
