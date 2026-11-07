package j$.nio.file;

import j$.time.DateTimeException;
import j$.time.temporal.C2410r;

/* JADX INFO: renamed from: j$.nio.file.b */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2288b {
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m632a(String str) {
        throw new IllegalArgumentException(str);
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m633b(String str, int i) {
        throw new DateTimeException(str + i);
    }

    /* JADX INFO: renamed from: c */
    public static /* synthetic */ void m634c(String str, int i, Object obj) {
        throw new DateTimeException(str + i + obj);
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m635d(String str, Object obj) {
        throw new C2410r(str + obj);
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m636e(String str, Object obj, Object obj2) {
        throw new UnsupportedOperationException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m637f(String str, Object obj, Object obj2, Object obj3) {
        throw new DateTimeException(str + obj + obj2 + obj3);
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m638g(String str, Object obj, Object obj2, Throwable th) {
        throw new DateTimeException(str + obj + ((Object) " of type ") + obj2, th);
    }

    /* JADX INFO: renamed from: h */
    public static /* synthetic */ void m639h(String str) {
        throw new DateTimeException(str);
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ void m640i(String str, int i) {
        throw new IllegalArgumentException(str + i);
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ void m641j(String str, Object obj) {
        throw new DateTimeException(str + obj);
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m642k(String str, Object obj, Object obj2) {
        throw new ClassCastException(str + obj + ((Object) ", actual: ") + obj2);
    }
}
