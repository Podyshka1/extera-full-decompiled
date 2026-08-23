package j$.time;

import j$.time.temporal.EnumC2047a;

/* JADX INFO: renamed from: j$.time.u */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2068u {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f621a;

    static {
        int[] iArr = new int[EnumC2047a.values().length];
        f621a = iArr;
        try {
            iArr[EnumC2047a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f621a[EnumC2047a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
