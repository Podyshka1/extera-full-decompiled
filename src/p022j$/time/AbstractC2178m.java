package p022j$.time;

import p022j$.time.temporal.EnumC2186a;

/* JADX INFO: renamed from: j$.time.m */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2178m {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f808a;

    static {
        int[] iArr = new int[EnumC2186a.values().length];
        f808a = iArr;
        try {
            iArr[EnumC2186a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f808a[EnumC2186a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
