package j$.time;

import j$.time.temporal.C2191s;

/* JADX INFO: renamed from: j$.time.g */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2159g {
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m684a(String str) {
        throw new C2103c(str);
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m685b(String str, int i) {
        throw new C2103c(str + i);
    }

    /* JADX INFO: renamed from: c */
    public static /* synthetic */ void m686c(String str, int i, Object obj) {
        throw new C2103c(str + i + obj);
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m687d(String str, Object obj) {
        throw new C2191s(str + obj);
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m688e(String str, Object obj, Object obj2) {
        throw new ClassCastException(str + obj + ((Object) ", actual: ") + obj2);
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m689f(String str, Object obj, Object obj2, Object obj3) {
        throw new C2103c(str + obj + obj2 + obj3);
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m690g(String str, Object obj, Object obj2, Throwable th) {
        throw new C2103c(str + obj + ((Object) " of type ") + obj2, th);
    }

    /* JADX INFO: renamed from: h */
    public static /* synthetic */ void m691h(String str, int i) {
        throw new IllegalArgumentException(str + i);
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ void m692i(String str, Object obj) {
        throw new C2103c(str + obj);
    }
}
