package j$.util.concurrent;

import j$.sun.misc.C1967a;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: renamed from: j$.util.concurrent.p */
/* JADX INFO: loaded from: classes2.dex */
public final class C2120p extends C2115k {

    /* JADX INFO: renamed from: h */
    public static final C1967a f751h;

    /* JADX INFO: renamed from: i */
    public static final long f752i;

    /* JADX INFO: renamed from: e */
    public C2121q f753e;

    /* JADX INFO: renamed from: f */
    public volatile C2121q f754f;

    /* JADX INFO: renamed from: g */
    public volatile Thread f755g;
    volatile int lockState;

    static {
        C1967a c1967a = C1967a.f396b;
        f751h = c1967a;
        f752i = c1967a.m451h(C2120p.class, "lockState");
    }

    /* JADX INFO: renamed from: i */
    public static int m728i(Object obj, Object obj2) {
        int iCompareTo;
        return (obj == null || obj2 == null || (iCompareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : iCompareTo;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004b A[PHI: r7
  0x004b: PHI (r7v3 java.lang.Class<?>) = (r7v2 java.lang.Class<?>), (r7v4 java.lang.Class<?>) binds: [B:24:0x0049, B:16:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C2120p(C2121q c2121q) {
        int iM728i;
        super(-2, null, null);
        this.f754f = c2121q;
        C2121q c2121q2 = null;
        while (c2121q != null) {
            C2121q c2121q3 = (C2121q) c2121q.f738d;
            c2121q.f758g = null;
            c2121q.f757f = null;
            if (c2121q2 == null) {
                c2121q.f756e = null;
                c2121q.f760i = false;
            } else {
                Object obj = c2121q.f736b;
                int i = c2121q.f735a;
                C2121q c2121q4 = c2121q2;
                Class<?> clsM700c = null;
                while (true) {
                    Object obj2 = c2121q4.f736b;
                    int i2 = c2121q4.f735a;
                    if (i2 > i) {
                        iM728i = -1;
                    } else if (i2 < i) {
                        iM728i = 1;
                    } else if (clsM700c != null || (clsM700c = ConcurrentHashMap.m700c(obj)) != null) {
                        int i3 = ConcurrentHashMap.f700g;
                        int iCompareTo = (obj2 == null || obj2.getClass() != clsM700c) ? 0 : ((Comparable) obj).compareTo(obj2);
                        iM728i = iCompareTo == 0 ? m728i(obj, obj2) : iCompareTo;
                    }
                    C2121q c2121q5 = iM728i <= 0 ? c2121q4.f757f : c2121q4.f758g;
                    if (c2121q5 == null) {
                        break;
                    } else {
                        c2121q4 = c2121q5;
                    }
                }
                c2121q.f756e = c2121q4;
                if (iM728i <= 0) {
                    c2121q4.f757f = c2121q;
                } else {
                    c2121q4.f758g = c2121q;
                }
                c2121q = m725c(c2121q2, c2121q);
            }
            c2121q2 = c2121q;
            c2121q = c2121q3;
        }
        this.f753e = c2121q2;
    }

    /* JADX INFO: renamed from: d */
    public final void m729d() {
        if (f751h.m447c(this, f752i, 0, 1)) {
            return;
        }
        boolean z = false;
        while (true) {
            int i = this.lockState;
            if ((i & (-3)) == 0) {
                if (f751h.m447c(this, f752i, i, 1)) {
                    break;
                }
            } else if ((i & 2) == 0) {
                if (f751h.m447c(this, f752i, i, i | 2)) {
                    this.f755g = Thread.currentThread();
                    z = true;
                }
            } else if (z) {
                LockSupport.park(this);
            }
        }
        if (z) {
            this.f755g = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001b, code lost:
    
        return r0;
     */
    @Override // j$.util.concurrent.C2115k
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2115k mo722a(int i, Object obj) {
        Object obj2;
        Thread thread;
        C2115k c2115k = this.f754f;
        while (true) {
            C2121q c2121qM732b = null;
            if (c2115k == null) {
                return null;
            }
            int i2 = this.lockState;
            if ((i2 & 3) != 0) {
                if (c2115k.f735a == i && ((obj2 = c2115k.f736b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    break;
                }
                c2115k = c2115k.f738d;
            } else {
                C1967a c1967a = f751h;
                long j = f752i;
                if (c1967a.m447c(this, j, i2, i2 + 4)) {
                    try {
                        C2121q c2121q = this.f753e;
                        if (c2121q != null) {
                            c2121qM732b = c2121q.m732b(i, obj, null);
                        }
                        if (c1967a.m449e(this, j) == 6 && (thread = this.f755g) != null) {
                            LockSupport.unpark(thread);
                        }
                        return c2121qM732b;
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
    public final C2121q m730e(int i, Object obj, Object obj2) {
        int i2;
        int iM728i;
        C2121q c2121qM732b;
        C2121q c2121qM732b2;
        C2121q c2121q;
        C2121q c2121q2 = this.f753e;
        Class<?> clsM700c = null;
        boolean z = false;
        while (c2121q2 != null) {
            int i3 = c2121q2.f735a;
            if (i3 > i) {
                iM728i = -1;
            } else {
                if (i3 < i) {
                    i2 = 1;
                } else {
                    Object obj3 = c2121q2.f736b;
                    if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                        return c2121q2;
                    }
                    if (clsM700c != null || (clsM700c = ConcurrentHashMap.m700c(obj)) != null) {
                        int i4 = ConcurrentHashMap.f700g;
                        int iCompareTo = (obj3 == null || obj3.getClass() != clsM700c) ? 0 : ((Comparable) obj).compareTo(obj3);
                        if (iCompareTo != 0) {
                            i2 = iCompareTo;
                        }
                    }
                    if (!z) {
                        C2121q c2121q3 = c2121q2.f757f;
                        if (c2121q3 != null && (c2121qM732b2 = c2121q3.m732b(i, obj, clsM700c)) != null) {
                            return c2121qM732b2;
                        }
                        C2121q c2121q4 = c2121q2.f758g;
                        if (c2121q4 != null && (c2121qM732b = c2121q4.m732b(i, obj, clsM700c)) != null) {
                            return c2121qM732b;
                        }
                        z = true;
                    }
                    iM728i = m728i(obj, obj3);
                }
                c2121q = i2 > 0 ? c2121q2.f757f : c2121q2.f758g;
                if (c2121q != null) {
                    C2121q c2121q5 = this.f754f;
                    C2121q c2121q6 = new C2121q(i, obj, obj2, c2121q5, c2121q2);
                    this.f754f = c2121q6;
                    if (c2121q5 != null) {
                        c2121q5.f759h = c2121q6;
                    }
                    if (i2 <= 0) {
                        c2121q2.f757f = c2121q6;
                    } else {
                        c2121q2.f758g = c2121q6;
                    }
                    if (!c2121q2.f760i) {
                        c2121q6.f760i = true;
                        return null;
                    }
                    m729d();
                    try {
                        this.f753e = m725c(this.f753e, c2121q6);
                        return null;
                    } finally {
                        this.lockState = 0;
                    }
                }
                c2121q2 = c2121q;
            }
            i2 = iM728i;
            if (i2 > 0) {
            }
            if (c2121q != null) {
            }
        }
        C2121q c2121q7 = new C2121q(i, obj, obj2, null, null);
        this.f753e = c2121q7;
        this.f754f = c2121q7;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x008e A[PHI: r0
  0x008e: PHI (r0v4 j$.util.concurrent.q) = (r0v3 j$.util.concurrent.q), (r0v12 j$.util.concurrent.q) binds: [B:55:0x008a, B:51:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m731f(C2121q c2121q) {
        C2121q c2121q2;
        C2121q c2121q3;
        C2121q c2121q4 = (C2121q) c2121q.f738d;
        C2121q c2121q5 = c2121q.f759h;
        if (c2121q5 == null) {
            this.f754f = c2121q4;
        } else {
            c2121q5.f738d = c2121q4;
        }
        if (c2121q4 != null) {
            c2121q4.f759h = c2121q5;
        }
        if (this.f754f == null) {
            this.f753e = null;
            return true;
        }
        C2121q c2121qM724b = this.f753e;
        if (c2121qM724b == null || c2121qM724b.f758g == null || (c2121q2 = c2121qM724b.f757f) == null || c2121q2.f757f == null) {
            return true;
        }
        m729d();
        try {
            C2121q c2121q6 = c2121q.f757f;
            C2121q c2121q7 = c2121q.f758g;
            if (c2121q6 != null && c2121q7 != null) {
                C2121q c2121q8 = c2121q7;
                while (true) {
                    C2121q c2121q9 = c2121q8.f757f;
                    if (c2121q9 == null) {
                        break;
                    }
                    c2121q8 = c2121q9;
                }
                boolean z = c2121q8.f760i;
                c2121q8.f760i = c2121q.f760i;
                c2121q.f760i = z;
                C2121q c2121q10 = c2121q8.f758g;
                C2121q c2121q11 = c2121q.f756e;
                if (c2121q8 == c2121q7) {
                    c2121q.f756e = c2121q8;
                    c2121q8.f758g = c2121q;
                } else {
                    C2121q c2121q12 = c2121q8.f756e;
                    c2121q.f756e = c2121q12;
                    if (c2121q12 != null) {
                        if (c2121q8 == c2121q12.f757f) {
                            c2121q12.f757f = c2121q;
                        } else {
                            c2121q12.f758g = c2121q;
                        }
                    }
                    c2121q8.f758g = c2121q7;
                    c2121q7.f756e = c2121q8;
                }
                c2121q.f757f = null;
                c2121q.f758g = c2121q10;
                if (c2121q10 != null) {
                    c2121q10.f756e = c2121q;
                }
                c2121q8.f757f = c2121q6;
                c2121q6.f756e = c2121q8;
                c2121q8.f756e = c2121q11;
                if (c2121q11 == null) {
                    c2121qM724b = c2121q8;
                } else if (c2121q == c2121q11.f757f) {
                    c2121q11.f757f = c2121q8;
                } else {
                    c2121q11.f758g = c2121q8;
                }
                if (c2121q10 != null) {
                    c2121q6 = c2121q10;
                }
            } else if (c2121q6 == null) {
                c2121q6 = c2121q7 != null ? c2121q7 : c2121q;
            }
            if (c2121q6 != c2121q) {
                C2121q c2121q13 = c2121q.f756e;
                c2121q6.f756e = c2121q13;
                if (c2121q13 == null) {
                    c2121qM724b = c2121q6;
                } else if (c2121q == c2121q13.f757f) {
                    c2121q13.f757f = c2121q6;
                } else {
                    c2121q13.f758g = c2121q6;
                }
                c2121q.f756e = null;
                c2121q.f758g = null;
                c2121q.f757f = null;
            }
            if (!c2121q.f760i) {
                c2121qM724b = m724b(c2121qM724b, c2121q6);
            }
            this.f753e = c2121qM724b;
            if (c2121q == c2121q6 && (c2121q3 = c2121q.f756e) != null) {
                if (c2121q == c2121q3.f757f) {
                    c2121q3.f757f = null;
                } else if (c2121q == c2121q3.f758g) {
                    c2121q3.f758g = null;
                }
                c2121q.f756e = null;
            }
            this.lockState = 0;
            return false;
        } catch (Throwable th) {
            this.lockState = 0;
            throw th;
        }
    }

    /* JADX INFO: renamed from: g */
    public static C2121q m726g(C2121q c2121q, C2121q c2121q2) {
        C2121q c2121q3;
        if (c2121q2 != null && (c2121q3 = c2121q2.f758g) != null) {
            C2121q c2121q4 = c2121q3.f757f;
            c2121q2.f758g = c2121q4;
            if (c2121q4 != null) {
                c2121q4.f756e = c2121q2;
            }
            C2121q c2121q5 = c2121q2.f756e;
            c2121q3.f756e = c2121q5;
            if (c2121q5 == null) {
                c2121q3.f760i = false;
                c2121q = c2121q3;
            } else if (c2121q5.f757f == c2121q2) {
                c2121q5.f757f = c2121q3;
            } else {
                c2121q5.f758g = c2121q3;
            }
            c2121q3.f757f = c2121q2;
            c2121q2.f756e = c2121q3;
        }
        return c2121q;
    }

    /* JADX INFO: renamed from: h */
    public static C2121q m727h(C2121q c2121q, C2121q c2121q2) {
        C2121q c2121q3;
        if (c2121q2 != null && (c2121q3 = c2121q2.f757f) != null) {
            C2121q c2121q4 = c2121q3.f758g;
            c2121q2.f757f = c2121q4;
            if (c2121q4 != null) {
                c2121q4.f756e = c2121q2;
            }
            C2121q c2121q5 = c2121q2.f756e;
            c2121q3.f756e = c2121q5;
            if (c2121q5 == null) {
                c2121q3.f760i = false;
                c2121q = c2121q3;
            } else if (c2121q5.f758g == c2121q2) {
                c2121q5.f758g = c2121q3;
            } else {
                c2121q5.f757f = c2121q3;
            }
            c2121q3.f758g = c2121q2;
            c2121q2.f756e = c2121q3;
        }
        return c2121q;
    }

    /* JADX INFO: renamed from: c */
    public static C2121q m725c(C2121q c2121q, C2121q c2121q2) {
        C2121q c2121q3;
        c2121q2.f760i = true;
        while (true) {
            C2121q c2121q4 = c2121q2.f756e;
            if (c2121q4 == null) {
                c2121q2.f760i = false;
                return c2121q2;
            }
            if (!c2121q4.f760i || (c2121q3 = c2121q4.f756e) == null) {
                break;
            }
            C2121q c2121q5 = c2121q3.f757f;
            if (c2121q4 == c2121q5) {
                C2121q c2121q6 = c2121q3.f758g;
                if (c2121q6 != null && c2121q6.f760i) {
                    c2121q6.f760i = false;
                    c2121q4.f760i = false;
                    c2121q3.f760i = true;
                    c2121q2 = c2121q3;
                } else {
                    if (c2121q2 == c2121q4.f758g) {
                        c2121q = m726g(c2121q, c2121q4);
                        C2121q c2121q7 = c2121q4.f756e;
                        c2121q3 = c2121q7 == null ? null : c2121q7.f756e;
                        c2121q4 = c2121q7;
                        c2121q2 = c2121q4;
                    }
                    if (c2121q4 != null) {
                        c2121q4.f760i = false;
                        if (c2121q3 != null) {
                            c2121q3.f760i = true;
                            c2121q = m727h(c2121q, c2121q3);
                        }
                    }
                }
            } else if (c2121q5 != null && c2121q5.f760i) {
                c2121q5.f760i = false;
                c2121q4.f760i = false;
                c2121q3.f760i = true;
                c2121q2 = c2121q3;
            } else {
                if (c2121q2 == c2121q4.f757f) {
                    c2121q = m727h(c2121q, c2121q4);
                    C2121q c2121q8 = c2121q4.f756e;
                    c2121q3 = c2121q8 == null ? null : c2121q8.f756e;
                    c2121q4 = c2121q8;
                    c2121q2 = c2121q4;
                }
                if (c2121q4 != null) {
                    c2121q4.f760i = false;
                    if (c2121q3 != null) {
                        c2121q3.f760i = true;
                        c2121q = m726g(c2121q, c2121q3);
                    }
                }
            }
        }
        return c2121q;
    }

    /* JADX INFO: renamed from: b */
    public static C2121q m724b(C2121q c2121q, C2121q c2121q2) {
        while (c2121q2 != null && c2121q2 != c2121q) {
            C2121q c2121q3 = c2121q2.f756e;
            if (c2121q3 == null) {
                c2121q2.f760i = false;
                return c2121q2;
            }
            if (c2121q2.f760i) {
                c2121q2.f760i = false;
                return c2121q;
            }
            C2121q c2121q4 = c2121q3.f757f;
            if (c2121q4 == c2121q2) {
                C2121q c2121q5 = c2121q3.f758g;
                if (c2121q5 != null && c2121q5.f760i) {
                    c2121q5.f760i = false;
                    c2121q3.f760i = true;
                    c2121q = m726g(c2121q, c2121q3);
                    c2121q3 = c2121q2.f756e;
                    c2121q5 = c2121q3 == null ? null : c2121q3.f758g;
                }
                if (c2121q5 != null) {
                    C2121q c2121q6 = c2121q5.f757f;
                    C2121q c2121q7 = c2121q5.f758g;
                    if ((c2121q7 == null || !c2121q7.f760i) && (c2121q6 == null || !c2121q6.f760i)) {
                        c2121q5.f760i = true;
                    } else {
                        if (c2121q7 == null || !c2121q7.f760i) {
                            if (c2121q6 != null) {
                                c2121q6.f760i = false;
                            }
                            c2121q5.f760i = true;
                            c2121q = m727h(c2121q, c2121q5);
                            c2121q3 = c2121q2.f756e;
                            c2121q5 = c2121q3 != null ? c2121q3.f758g : null;
                        }
                        if (c2121q5 != null) {
                            c2121q5.f760i = c2121q3 == null ? false : c2121q3.f760i;
                            C2121q c2121q8 = c2121q5.f758g;
                            if (c2121q8 != null) {
                                c2121q8.f760i = false;
                            }
                        }
                        if (c2121q3 != null) {
                            c2121q3.f760i = false;
                            c2121q = m726g(c2121q, c2121q3);
                        }
                        c2121q2 = c2121q;
                    }
                }
                c2121q2 = c2121q3;
            } else {
                if (c2121q4 != null && c2121q4.f760i) {
                    c2121q4.f760i = false;
                    c2121q3.f760i = true;
                    c2121q = m727h(c2121q, c2121q3);
                    c2121q3 = c2121q2.f756e;
                    c2121q4 = c2121q3 == null ? null : c2121q3.f757f;
                }
                if (c2121q4 != null) {
                    C2121q c2121q9 = c2121q4.f757f;
                    C2121q c2121q10 = c2121q4.f758g;
                    if ((c2121q9 == null || !c2121q9.f760i) && (c2121q10 == null || !c2121q10.f760i)) {
                        c2121q4.f760i = true;
                    } else {
                        if (c2121q9 == null || !c2121q9.f760i) {
                            if (c2121q10 != null) {
                                c2121q10.f760i = false;
                            }
                            c2121q4.f760i = true;
                            c2121q = m726g(c2121q, c2121q4);
                            c2121q3 = c2121q2.f756e;
                            c2121q4 = c2121q3 != null ? c2121q3.f757f : null;
                        }
                        if (c2121q4 != null) {
                            c2121q4.f760i = c2121q3 == null ? false : c2121q3.f760i;
                            C2121q c2121q11 = c2121q4.f757f;
                            if (c2121q11 != null) {
                                c2121q11.f760i = false;
                            }
                        }
                        if (c2121q3 != null) {
                            c2121q3.f760i = false;
                            c2121q = m727h(c2121q, c2121q3);
                        }
                        c2121q2 = c2121q;
                    }
                }
                c2121q2 = c2121q3;
            }
        }
        return c2121q;
    }
}
