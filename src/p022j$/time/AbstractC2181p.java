package p022j$.time;

import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;

/* JADX INFO: renamed from: j$.time.p */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2181p {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f814a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int[] f815b;

    static {
        int[] iArr = new int[EnumC2187b.values().length];
        f815b = iArr;
        try {
            iArr[EnumC2187b.YEARS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f815b[EnumC2187b.DECADES.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f815b[EnumC2187b.CENTURIES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f815b[EnumC2187b.MILLENNIA.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f815b[EnumC2187b.ERAS.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        int[] iArr2 = new int[EnumC2186a.values().length];
        f814a = iArr2;
        try {
            iArr2[EnumC2186a.YEAR_OF_ERA.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f814a[EnumC2186a.YEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f814a[EnumC2186a.ERA.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
