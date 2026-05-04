package p022j$.time.chrono;

import p022j$.time.temporal.EnumC2186a;

/* JADX INFO: renamed from: j$.time.chrono.i */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2127i {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f692a;

    static {
        int[] iArr = new int[EnumC2186a.values().length];
        f692a = iArr;
        try {
            iArr[EnumC2186a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f692a[EnumC2186a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
