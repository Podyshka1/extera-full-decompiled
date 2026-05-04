package j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2121q extends C2115k {

    /* JADX INFO: renamed from: e */
    public C2121q f756e;

    /* JADX INFO: renamed from: f */
    public C2121q f757f;

    /* JADX INFO: renamed from: g */
    public C2121q f758g;

    /* JADX INFO: renamed from: h */
    public C2121q f759h;

    /* JADX INFO: renamed from: i */
    public boolean f760i;

    public C2121q(int i, Object obj, Object obj2, C2115k c2115k, C2121q c2121q) {
        super(i, obj, obj2, c2115k);
        this.f756e = c2121q;
    }

    @Override // j$.util.concurrent.C2115k
    /* JADX INFO: renamed from: a */
    public final C2115k mo722a(int i, Object obj) {
        return m732b(i, obj, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0047 A[PHI: r8
  0x0047: PHI (r8v5 java.lang.Class) = (r8v4 java.lang.Class), (r8v6 java.lang.Class) binds: [B:29:0x0040, B:21:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2121q m732b(int i, Object obj, Class cls) {
        if (obj == null) {
            return null;
        }
        C2121q c2121q = this;
        do {
            C2121q c2121q2 = c2121q.f757f;
            C2121q c2121q3 = c2121q.f758g;
            int i2 = c2121q.f735a;
            if (i2 <= i) {
                if (i2 >= i) {
                    Object obj2 = c2121q.f736b;
                    if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                        return c2121q;
                    }
                    if (c2121q2 != null) {
                        if (c2121q3 != null) {
                            if (cls != null || (cls = ConcurrentHashMap.m700c(obj)) != null) {
                                int i3 = ConcurrentHashMap.f700g;
                                int iCompareTo = (obj2 == null || obj2.getClass() != cls) ? 0 : ((Comparable) obj).compareTo(obj2);
                                if (iCompareTo == 0) {
                                    C2121q c2121qM732b = c2121q3.m732b(i, obj, cls);
                                    if (c2121qM732b != null) {
                                        return c2121qM732b;
                                    }
                                } else if (iCompareTo >= 0) {
                                    c2121q2 = c2121q3;
                                }
                            }
                        }
                        c2121q = c2121q2;
                    }
                }
                c2121q = c2121q3;
            } else {
                c2121q = c2121q2;
            }
        } while (c2121q != null);
        return null;
    }
}
