package p022j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2263q extends C2257k {

    /* JADX INFO: renamed from: e */
    public C2263q f991e;

    /* JADX INFO: renamed from: f */
    public C2263q f992f;

    /* JADX INFO: renamed from: g */
    public C2263q f993g;

    /* JADX INFO: renamed from: h */
    public C2263q f994h;

    /* JADX INFO: renamed from: i */
    public boolean f995i;

    public C2263q(int i, Object obj, Object obj2, C2257k c2257k, C2263q c2263q) {
        super(i, obj, obj2, c2257k);
        this.f991e = c2263q;
    }

    @Override // p022j$.util.concurrent.C2257k
    /* JADX INFO: renamed from: a */
    public final C2257k mo848a(int i, Object obj) {
        return m858b(i, obj, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0047 A[PHI: r8
  0x0047: PHI (r8v5 java.lang.Class) = (r8v4 java.lang.Class), (r8v6 java.lang.Class) binds: [B:29:0x0040, B:21:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2263q m858b(int i, Object obj, Class cls) {
        if (obj == null) {
            return null;
        }
        C2263q c2263q = this;
        do {
            C2263q c2263q2 = c2263q.f992f;
            C2263q c2263q3 = c2263q.f993g;
            int i2 = c2263q.f970a;
            if (i2 <= i) {
                if (i2 >= i) {
                    Object obj2 = c2263q.f971b;
                    if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                        return c2263q;
                    }
                    if (c2263q2 != null) {
                        if (c2263q3 != null) {
                            if (cls != null || (cls = ConcurrentHashMap.m826c(obj)) != null) {
                                int i3 = ConcurrentHashMap.f935g;
                                int iCompareTo = (obj2 == null || obj2.getClass() != cls) ? 0 : ((Comparable) obj).compareTo(obj2);
                                if (iCompareTo == 0) {
                                    C2263q c2263qM858b = c2263q3.m858b(i, obj, cls);
                                    if (c2263qM858b != null) {
                                        return c2263qM858b;
                                    }
                                } else if (iCompareTo >= 0) {
                                    c2263q2 = c2263q3;
                                }
                            }
                        }
                        c2263q = c2263q2;
                    }
                }
                c2263q = c2263q3;
            } else {
                c2263q = c2263q2;
            }
        } while (c2263q != null);
        return null;
    }
}
