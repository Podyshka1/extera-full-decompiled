package p022j$.util.concurrent;

import java.util.concurrent.locks.LockSupport;
import p022j$.sun.misc.C2106a;

/* JADX INFO: renamed from: j$.util.concurrent.p */
/* JADX INFO: loaded from: classes2.dex */
public final class C2262p extends C2257k {

    /* JADX INFO: renamed from: h */
    public static final C2106a f986h;

    /* JADX INFO: renamed from: i */
    public static final long f987i;

    /* JADX INFO: renamed from: e */
    public C2263q f988e;

    /* JADX INFO: renamed from: f */
    public volatile C2263q f989f;

    /* JADX INFO: renamed from: g */
    public volatile Thread f990g;
    volatile int lockState;

    static {
        C2106a c2106a = C2106a.f628b;
        f986h = c2106a;
        f987i = c2106a.m571h(C2262p.class, "lockState");
    }

    /* JADX INFO: renamed from: i */
    public static int m854i(Object obj, Object obj2) {
        int iCompareTo;
        return (obj == null || obj2 == null || (iCompareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : iCompareTo;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004b A[PHI: r7
  0x004b: PHI (r7v3 java.lang.Class<?>) = (r7v2 java.lang.Class<?>), (r7v4 java.lang.Class<?>) binds: [B:24:0x0049, B:16:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C2262p(C2263q c2263q) {
        int iM854i;
        super(-2, null, null);
        this.f989f = c2263q;
        C2263q c2263q2 = null;
        while (c2263q != null) {
            C2263q c2263q3 = (C2263q) c2263q.f973d;
            c2263q.f993g = null;
            c2263q.f992f = null;
            if (c2263q2 == null) {
                c2263q.f991e = null;
                c2263q.f995i = false;
            } else {
                Object obj = c2263q.f971b;
                int i = c2263q.f970a;
                C2263q c2263q4 = c2263q2;
                Class<?> clsM826c = null;
                while (true) {
                    Object obj2 = c2263q4.f971b;
                    int i2 = c2263q4.f970a;
                    if (i2 > i) {
                        iM854i = -1;
                    } else if (i2 < i) {
                        iM854i = 1;
                    } else if (clsM826c != null || (clsM826c = ConcurrentHashMap.m826c(obj)) != null) {
                        int i3 = ConcurrentHashMap.f935g;
                        int iCompareTo = (obj2 == null || obj2.getClass() != clsM826c) ? 0 : ((Comparable) obj).compareTo(obj2);
                        iM854i = iCompareTo == 0 ? m854i(obj, obj2) : iCompareTo;
                    }
                    C2263q c2263q5 = iM854i <= 0 ? c2263q4.f992f : c2263q4.f993g;
                    if (c2263q5 == null) {
                        break;
                    } else {
                        c2263q4 = c2263q5;
                    }
                }
                c2263q.f991e = c2263q4;
                if (iM854i <= 0) {
                    c2263q4.f992f = c2263q;
                } else {
                    c2263q4.f993g = c2263q;
                }
                c2263q = m851c(c2263q2, c2263q);
            }
            c2263q2 = c2263q;
            c2263q = c2263q3;
        }
        this.f988e = c2263q2;
    }

    /* JADX INFO: renamed from: d */
    public final void m855d() {
        if (f986h.m567c(this, f987i, 0, 1)) {
            return;
        }
        boolean z = false;
        while (true) {
            int i = this.lockState;
            if ((i & (-3)) == 0) {
                if (f986h.m567c(this, f987i, i, 1)) {
                    break;
                }
            } else if ((i & 2) == 0) {
                if (f986h.m567c(this, f987i, i, i | 2)) {
                    this.f990g = Thread.currentThread();
                    z = true;
                }
            } else if (z) {
                LockSupport.park(this);
            }
        }
        if (z) {
            this.f990g = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001b, code lost:
    
        return r0;
     */
    @Override // p022j$.util.concurrent.C2257k
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2257k mo848a(int i, Object obj) {
        Object obj2;
        Thread thread;
        C2257k c2257k = this.f989f;
        while (true) {
            C2263q c2263qM858b = null;
            if (c2257k == null) {
                return null;
            }
            int i2 = this.lockState;
            if ((i2 & 3) != 0) {
                if (c2257k.f970a == i && ((obj2 = c2257k.f971b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    break;
                }
                c2257k = c2257k.f973d;
            } else {
                C2106a c2106a = f986h;
                long j = f987i;
                if (c2106a.m567c(this, j, i2, i2 + 4)) {
                    try {
                        C2263q c2263q = this.f988e;
                        if (c2263q != null) {
                            c2263qM858b = c2263q.m858b(i, obj, null);
                        }
                        if (c2106a.m569e(this, j) == 6 && (thread = this.f990g) != null) {
                            LockSupport.unpark(thread);
                        }
                        return c2263qM858b;
                    } finally {
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a9 A[LOOP:0: B:3:0x0007->B:65:0x00a9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0079 A[SYNTHETIC] */
    /* JADX INFO: renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2263q m856e(int i, Object obj, Object obj2) {
        int i2;
        int iM854i;
        C2263q c2263qM858b;
        C2263q c2263qM858b2;
        C2263q c2263q;
        C2263q c2263q2 = this.f988e;
        Class<?> clsM826c = null;
        boolean z = false;
        while (c2263q2 != null) {
            int i3 = c2263q2.f970a;
            if (i3 > i) {
                iM854i = -1;
            } else {
                if (i3 < i) {
                    i2 = 1;
                } else {
                    Object obj3 = c2263q2.f971b;
                    if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                        return c2263q2;
                    }
                    if (clsM826c != null || (clsM826c = ConcurrentHashMap.m826c(obj)) != null) {
                        int i4 = ConcurrentHashMap.f935g;
                        int iCompareTo = (obj3 == null || obj3.getClass() != clsM826c) ? 0 : ((Comparable) obj).compareTo(obj3);
                        if (iCompareTo != 0) {
                            i2 = iCompareTo;
                        }
                    }
                    if (!z) {
                        C2263q c2263q3 = c2263q2.f992f;
                        if (c2263q3 != null && (c2263qM858b2 = c2263q3.m858b(i, obj, clsM826c)) != null) {
                            return c2263qM858b2;
                        }
                        C2263q c2263q4 = c2263q2.f993g;
                        if (c2263q4 != null && (c2263qM858b = c2263q4.m858b(i, obj, clsM826c)) != null) {
                            return c2263qM858b;
                        }
                        z = true;
                    }
                    iM854i = m854i(obj, obj3);
                }
                c2263q = i2 > 0 ? c2263q2.f992f : c2263q2.f993g;
                if (c2263q != null) {
                    C2263q c2263q5 = this.f989f;
                    C2263q c2263q6 = new C2263q(i, obj, obj2, c2263q5, c2263q2);
                    this.f989f = c2263q6;
                    if (c2263q5 != null) {
                        c2263q5.f994h = c2263q6;
                    }
                    if (i2 <= 0) {
                        c2263q2.f992f = c2263q6;
                    } else {
                        c2263q2.f993g = c2263q6;
                    }
                    if (!c2263q2.f995i) {
                        c2263q6.f995i = true;
                        return null;
                    }
                    m855d();
                    try {
                        this.f988e = m851c(this.f988e, c2263q6);
                        return null;
                    } finally {
                        this.lockState = 0;
                    }
                }
                c2263q2 = c2263q;
            }
            i2 = iM854i;
            if (i2 > 0) {
            }
            if (c2263q != null) {
            }
        }
        C2263q c2263q7 = new C2263q(i, obj, obj2, null, null);
        this.f988e = c2263q7;
        this.f989f = c2263q7;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x008e A[PHI: r0
  0x008e: PHI (r0v4 j$.util.concurrent.q) = (r0v3 j$.util.concurrent.q), (r0v12 j$.util.concurrent.q) binds: [B:55:0x008a, B:51:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m857f(C2263q c2263q) {
        C2263q c2263q2;
        C2263q c2263q3;
        C2263q c2263q4 = (C2263q) c2263q.f973d;
        C2263q c2263q5 = c2263q.f994h;
        if (c2263q5 == null) {
            this.f989f = c2263q4;
        } else {
            c2263q5.f973d = c2263q4;
        }
        if (c2263q4 != null) {
            c2263q4.f994h = c2263q5;
        }
        if (this.f989f == null) {
            this.f988e = null;
            return true;
        }
        C2263q c2263qM850b = this.f988e;
        if (c2263qM850b == null || c2263qM850b.f993g == null || (c2263q2 = c2263qM850b.f992f) == null || c2263q2.f992f == null) {
            return true;
        }
        m855d();
        try {
            C2263q c2263q6 = c2263q.f992f;
            C2263q c2263q7 = c2263q.f993g;
            if (c2263q6 != null && c2263q7 != null) {
                C2263q c2263q8 = c2263q7;
                while (true) {
                    C2263q c2263q9 = c2263q8.f992f;
                    if (c2263q9 == null) {
                        break;
                    }
                    c2263q8 = c2263q9;
                }
                boolean z = c2263q8.f995i;
                c2263q8.f995i = c2263q.f995i;
                c2263q.f995i = z;
                C2263q c2263q10 = c2263q8.f993g;
                C2263q c2263q11 = c2263q.f991e;
                if (c2263q8 == c2263q7) {
                    c2263q.f991e = c2263q8;
                    c2263q8.f993g = c2263q;
                } else {
                    C2263q c2263q12 = c2263q8.f991e;
                    c2263q.f991e = c2263q12;
                    if (c2263q12 != null) {
                        if (c2263q8 == c2263q12.f992f) {
                            c2263q12.f992f = c2263q;
                        } else {
                            c2263q12.f993g = c2263q;
                        }
                    }
                    c2263q8.f993g = c2263q7;
                    c2263q7.f991e = c2263q8;
                }
                c2263q.f992f = null;
                c2263q.f993g = c2263q10;
                if (c2263q10 != null) {
                    c2263q10.f991e = c2263q;
                }
                c2263q8.f992f = c2263q6;
                c2263q6.f991e = c2263q8;
                c2263q8.f991e = c2263q11;
                if (c2263q11 == null) {
                    c2263qM850b = c2263q8;
                } else if (c2263q == c2263q11.f992f) {
                    c2263q11.f992f = c2263q8;
                } else {
                    c2263q11.f993g = c2263q8;
                }
                if (c2263q10 != null) {
                    c2263q6 = c2263q10;
                }
            } else if (c2263q6 == null) {
                c2263q6 = c2263q7 != null ? c2263q7 : c2263q;
            }
            if (c2263q6 != c2263q) {
                C2263q c2263q13 = c2263q.f991e;
                c2263q6.f991e = c2263q13;
                if (c2263q13 == null) {
                    c2263qM850b = c2263q6;
                } else if (c2263q == c2263q13.f992f) {
                    c2263q13.f992f = c2263q6;
                } else {
                    c2263q13.f993g = c2263q6;
                }
                c2263q.f991e = null;
                c2263q.f993g = null;
                c2263q.f992f = null;
            }
            if (!c2263q.f995i) {
                c2263qM850b = m850b(c2263qM850b, c2263q6);
            }
            this.f988e = c2263qM850b;
            if (c2263q == c2263q6 && (c2263q3 = c2263q.f991e) != null) {
                if (c2263q == c2263q3.f992f) {
                    c2263q3.f992f = null;
                } else if (c2263q == c2263q3.f993g) {
                    c2263q3.f993g = null;
                }
                c2263q.f991e = null;
            }
            this.lockState = 0;
            return false;
        } catch (Throwable th) {
            this.lockState = 0;
            throw th;
        }
    }

    /* JADX INFO: renamed from: g */
    public static C2263q m852g(C2263q c2263q, C2263q c2263q2) {
        C2263q c2263q3;
        if (c2263q2 != null && (c2263q3 = c2263q2.f993g) != null) {
            C2263q c2263q4 = c2263q3.f992f;
            c2263q2.f993g = c2263q4;
            if (c2263q4 != null) {
                c2263q4.f991e = c2263q2;
            }
            C2263q c2263q5 = c2263q2.f991e;
            c2263q3.f991e = c2263q5;
            if (c2263q5 == null) {
                c2263q3.f995i = false;
                c2263q = c2263q3;
            } else if (c2263q5.f992f == c2263q2) {
                c2263q5.f992f = c2263q3;
            } else {
                c2263q5.f993g = c2263q3;
            }
            c2263q3.f992f = c2263q2;
            c2263q2.f991e = c2263q3;
        }
        return c2263q;
    }

    /* JADX INFO: renamed from: h */
    public static C2263q m853h(C2263q c2263q, C2263q c2263q2) {
        C2263q c2263q3;
        if (c2263q2 != null && (c2263q3 = c2263q2.f992f) != null) {
            C2263q c2263q4 = c2263q3.f993g;
            c2263q2.f992f = c2263q4;
            if (c2263q4 != null) {
                c2263q4.f991e = c2263q2;
            }
            C2263q c2263q5 = c2263q2.f991e;
            c2263q3.f991e = c2263q5;
            if (c2263q5 == null) {
                c2263q3.f995i = false;
                c2263q = c2263q3;
            } else if (c2263q5.f993g == c2263q2) {
                c2263q5.f993g = c2263q3;
            } else {
                c2263q5.f992f = c2263q3;
            }
            c2263q3.f993g = c2263q2;
            c2263q2.f991e = c2263q3;
        }
        return c2263q;
    }

    /* JADX INFO: renamed from: c */
    public static C2263q m851c(C2263q c2263q, C2263q c2263q2) {
        C2263q c2263q3;
        c2263q2.f995i = true;
        while (true) {
            C2263q c2263q4 = c2263q2.f991e;
            if (c2263q4 == null) {
                c2263q2.f995i = false;
                return c2263q2;
            }
            if (!c2263q4.f995i || (c2263q3 = c2263q4.f991e) == null) {
                break;
            }
            C2263q c2263q5 = c2263q3.f992f;
            if (c2263q4 == c2263q5) {
                C2263q c2263q6 = c2263q3.f993g;
                if (c2263q6 != null && c2263q6.f995i) {
                    c2263q6.f995i = false;
                    c2263q4.f995i = false;
                    c2263q3.f995i = true;
                    c2263q2 = c2263q3;
                } else {
                    if (c2263q2 == c2263q4.f993g) {
                        c2263q = m852g(c2263q, c2263q4);
                        C2263q c2263q7 = c2263q4.f991e;
                        c2263q3 = c2263q7 == null ? null : c2263q7.f991e;
                        c2263q4 = c2263q7;
                        c2263q2 = c2263q4;
                    }
                    if (c2263q4 != null) {
                        c2263q4.f995i = false;
                        if (c2263q3 != null) {
                            c2263q3.f995i = true;
                            c2263q = m853h(c2263q, c2263q3);
                        }
                    }
                }
            } else if (c2263q5 != null && c2263q5.f995i) {
                c2263q5.f995i = false;
                c2263q4.f995i = false;
                c2263q3.f995i = true;
                c2263q2 = c2263q3;
            } else {
                if (c2263q2 == c2263q4.f992f) {
                    c2263q = m853h(c2263q, c2263q4);
                    C2263q c2263q8 = c2263q4.f991e;
                    c2263q3 = c2263q8 == null ? null : c2263q8.f991e;
                    c2263q4 = c2263q8;
                    c2263q2 = c2263q4;
                }
                if (c2263q4 != null) {
                    c2263q4.f995i = false;
                    if (c2263q3 != null) {
                        c2263q3.f995i = true;
                        c2263q = m852g(c2263q, c2263q3);
                    }
                }
            }
        }
        return c2263q;
    }

    /* JADX INFO: renamed from: b */
    public static C2263q m850b(C2263q c2263q, C2263q c2263q2) {
        while (c2263q2 != null && c2263q2 != c2263q) {
            C2263q c2263q3 = c2263q2.f991e;
            if (c2263q3 == null) {
                c2263q2.f995i = false;
                return c2263q2;
            }
            if (c2263q2.f995i) {
                c2263q2.f995i = false;
                return c2263q;
            }
            C2263q c2263q4 = c2263q3.f992f;
            if (c2263q4 == c2263q2) {
                C2263q c2263q5 = c2263q3.f993g;
                if (c2263q5 != null && c2263q5.f995i) {
                    c2263q5.f995i = false;
                    c2263q3.f995i = true;
                    c2263q = m852g(c2263q, c2263q3);
                    c2263q3 = c2263q2.f991e;
                    c2263q5 = c2263q3 == null ? null : c2263q3.f993g;
                }
                if (c2263q5 != null) {
                    C2263q c2263q6 = c2263q5.f992f;
                    C2263q c2263q7 = c2263q5.f993g;
                    if ((c2263q7 == null || !c2263q7.f995i) && (c2263q6 == null || !c2263q6.f995i)) {
                        c2263q5.f995i = true;
                    } else {
                        if (c2263q7 == null || !c2263q7.f995i) {
                            if (c2263q6 != null) {
                                c2263q6.f995i = false;
                            }
                            c2263q5.f995i = true;
                            c2263q = m853h(c2263q, c2263q5);
                            c2263q3 = c2263q2.f991e;
                            c2263q5 = c2263q3 != null ? c2263q3.f993g : null;
                        }
                        if (c2263q5 != null) {
                            c2263q5.f995i = c2263q3 == null ? false : c2263q3.f995i;
                            C2263q c2263q8 = c2263q5.f993g;
                            if (c2263q8 != null) {
                                c2263q8.f995i = false;
                            }
                        }
                        if (c2263q3 != null) {
                            c2263q3.f995i = false;
                            c2263q = m852g(c2263q, c2263q3);
                        }
                        c2263q2 = c2263q;
                    }
                }
                c2263q2 = c2263q3;
            } else {
                if (c2263q4 != null && c2263q4.f995i) {
                    c2263q4.f995i = false;
                    c2263q3.f995i = true;
                    c2263q = m853h(c2263q, c2263q3);
                    c2263q3 = c2263q2.f991e;
                    c2263q4 = c2263q3 == null ? null : c2263q3.f992f;
                }
                if (c2263q4 != null) {
                    C2263q c2263q9 = c2263q4.f992f;
                    C2263q c2263q10 = c2263q4.f993g;
                    if ((c2263q9 == null || !c2263q9.f995i) && (c2263q10 == null || !c2263q10.f995i)) {
                        c2263q4.f995i = true;
                    } else {
                        if (c2263q9 == null || !c2263q9.f995i) {
                            if (c2263q10 != null) {
                                c2263q10.f995i = false;
                            }
                            c2263q4.f995i = true;
                            c2263q = m852g(c2263q, c2263q4);
                            c2263q3 = c2263q2.f991e;
                            c2263q4 = c2263q3 != null ? c2263q3.f992f : null;
                        }
                        if (c2263q4 != null) {
                            c2263q4.f995i = c2263q3 == null ? false : c2263q3.f995i;
                            C2263q c2263q11 = c2263q4.f992f;
                            if (c2263q11 != null) {
                                c2263q11.f995i = false;
                            }
                        }
                        if (c2263q3 != null) {
                            c2263q3.f995i = false;
                            c2263q = m853h(c2263q, c2263q3);
                        }
                        c2263q2 = c2263q;
                    }
                }
                c2263q2 = c2263q3;
            }
        }
        return c2263q;
    }
}
