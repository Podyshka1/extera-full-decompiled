package j$.nio.file;

import j$.time.C2184b;
import j$.time.temporal.C2271r;

/* JADX INFO: renamed from: j$.nio.file.b */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2148b {
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m608a(String str) {
        throw new IllegalArgumentException(str);
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m609b(String str, int i) {
        throw new C2184b(str + i);
    }

    /* JADX INFO: renamed from: c */
    public static /* synthetic */ void m610c(String str, int i, Object obj) {
        throw new C2184b(str + i + obj);
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m611d(String str, Object obj) {
        throw new C2271r(str + obj);
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m612e(String str, Object obj, Object obj2) {
        throw new UnsupportedOperationException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m613f(String str, Object obj, Object obj2, Object obj3) {
        throw new C2184b(str + obj + obj2 + obj3);
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m614g(String str, Object obj, Object obj2, Throwable th) {
        throw new C2184b(str + obj + ((Object) " of type ") + obj2, th);
    }

    /* JADX INFO: renamed from: h */
    public static /* synthetic */ void m615h(String str) {
        throw new C2184b(str);
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ void m616i(String str, int i) {
        throw new IllegalArgumentException(str + i);
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ void m617j(String str, Object obj) {
        throw new C2184b(str + obj);
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m618k(String str, Object obj, Object obj2) {
        throw new ClassCastException(str + obj + ((Object) ", actual: ") + obj2);
    }
}
