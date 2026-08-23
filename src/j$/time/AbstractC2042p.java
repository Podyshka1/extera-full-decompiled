package j$.time;

import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;

/* JADX INFO: renamed from: j$.time.p */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2042p {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f579a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f580b;

    static {
        int[] iArr = new int[EnumC2048b.values().length];
        f580b = iArr;
        try {
            iArr[EnumC2048b.YEARS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f580b[EnumC2048b.DECADES.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f580b[EnumC2048b.CENTURIES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f580b[EnumC2048b.MILLENNIA.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f580b[EnumC2048b.ERAS.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        int[] iArr2 = new int[EnumC2047a.values().length];
        f579a = iArr2;
        try {
            iArr2[EnumC2047a.YEAR_OF_ERA.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f579a[EnumC2047a.YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f579a[EnumC2047a.ERA.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
