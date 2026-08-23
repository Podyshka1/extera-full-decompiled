package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: j$.util.stream.L */
/* JADX INFO: loaded from: classes2.dex */
public final class C2164L extends AbstractC2180c {

    /* JADX INFO: renamed from: j */
    public final C2158F f946j;

    /* JADX INFO: renamed from: k */
    public final boolean f947k;

    public C2164L(C2158F c2158f, boolean z, AbstractC2179b abstractC2179b, Spliterator spliterator) {
        super(abstractC2179b, spliterator);
        this.f947k = z;
        this.f946j = c2158f;
    }

    public C2164L(C2164L c2164l, Spliterator spliterator) {
        super(c2164l, spliterator);
        this.f947k = c2164l.f947k;
        this.f946j = c2164l.f946j;
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: c */
    public final AbstractC2182e mo802c(Spliterator spliterator) {
        return new C2164L(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2180c
    /* JADX INFO: renamed from: h */
    public final Object mo803h() {
        return this.f946j.f891b;
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: a */
    public final Object mo801a() {
        AbstractC6277y1 abstractC6277y1 = this.f1125a;
        N3 n3 = (N3) this.f946j.f893d.get();
        abstractC6277y1.s0(this.f1126b, n3);
        Object obj = n3.get();
        if (this.f947k) {
            if (obj != null) {
                AbstractC2182e abstractC2182e = this;
                while (abstractC2182e != null) {
                    AbstractC2182e abstractC2182e2 = (AbstractC2182e) abstractC2182e.getCompleter();
                    if (abstractC2182e2 != null && abstractC2182e2.f1128d != abstractC2182e) {
                        m842g();
                        return obj;
                    }
                    abstractC2182e = abstractC2182e2;
                }
                AtomicReference atomicReference = this.f1081h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
                return obj;
            }
        } else if (obj != null) {
            AtomicReference atomicReference2 = this.f1081h;
            while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC2182e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.f947k) {
            C2164L c2164l = (C2164L) this.f1128d;
            C2164L c2164l2 = null;
            while (true) {
                if (c2164l != c2164l2) {
                    Object objM843i = c2164l.m843i();
                    if (objM843i != null && this.f946j.f892c.test(objM843i)) {
                        mo840d(objM843i);
                        AbstractC2182e abstractC2182e = this;
                        while (true) {
                            if (abstractC2182e != null) {
                                AbstractC2182e abstractC2182e2 = (AbstractC2182e) abstractC2182e.getCompleter();
                                if (abstractC2182e2 != null && abstractC2182e2.f1128d != abstractC2182e) {
                                    m842g();
                                    break;
                                }
                                abstractC2182e = abstractC2182e2;
                            } else {
                                AtomicReference atomicReference = this.f1081h;
                                while (!atomicReference.compareAndSet(null, objM843i) && atomicReference.get() == null) {
                                }
                            }
                        }
                    } else {
                        c2164l2 = c2164l;
                        c2164l = (C2164L) this.f1129e;
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}
