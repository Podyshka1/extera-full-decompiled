package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.L */
/* JADX INFO: loaded from: classes2.dex */
public final class C2366L extends AbstractC2452c {

    /* JADX INFO: renamed from: j */
    public final C2336F f1181j;

    /* JADX INFO: renamed from: k */
    public final boolean f1182k;

    public C2366L(C2336F c2336f, boolean z, AbstractC2446b abstractC2446b, Spliterator spliterator) {
        super(abstractC2446b, spliterator);
        this.f1182k = z;
        this.f1181j = c2336f;
    }

    public C2366L(C2366L c2366l, Spliterator spliterator) {
        super(c2366l, spliterator);
        this.f1182k = c2366l.f1182k;
        this.f1181j = c2366l.f1181j;
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: c */
    public final AbstractC2464e mo942c(Spliterator spliterator) {
        return new C2366L(this, spliterator);
    }

    @Override // p022j$.util.stream.AbstractC2452c
    /* JADX INFO: renamed from: h */
    public final Object mo943h() {
        return this.f1181j.f1126b;
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: a */
    public final Object mo941a() {
        AbstractC2573y1 abstractC2573y1 = this.f1361a;
        InterfaceC2380N3 interfaceC2380N3 = (InterfaceC2380N3) this.f1181j.f1128d.get();
        abstractC2573y1.mo982s0(this.f1362b, interfaceC2380N3);
        Object obj = interfaceC2380N3.get();
        if (this.f1182k) {
            if (obj != null) {
                AbstractC2464e abstractC2464e = this;
                while (abstractC2464e != null) {
                    AbstractC2464e abstractC2464e2 = (AbstractC2464e) abstractC2464e.getCompleter();
                    if (abstractC2464e2 != null && abstractC2464e2.f1364d != abstractC2464e) {
                        m992g();
                        return obj;
                    }
                    abstractC2464e = abstractC2464e2;
                }
                AtomicReference atomicReference = this.f1316h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
                return obj;
            }
        } else if (obj != null) {
            AtomicReference atomicReference2 = this.f1316h;
            while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
            }
        }
        return null;
    }

    @Override // p022j$.util.stream.AbstractC2464e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.f1182k) {
            C2366L c2366l = (C2366L) this.f1364d;
            C2366L c2366l2 = null;
            while (true) {
                if (c2366l != c2366l2) {
                    Object objM993i = c2366l.m993i();
                    if (objM993i != null && this.f1181j.f1127c.test(objM993i)) {
                        mo990d(objM993i);
                        AbstractC2464e abstractC2464e = this;
                        while (true) {
                            if (abstractC2464e != null) {
                                AbstractC2464e abstractC2464e2 = (AbstractC2464e) abstractC2464e.getCompleter();
                                if (abstractC2464e2 != null && abstractC2464e2.f1364d != abstractC2464e) {
                                    m992g();
                                    break;
                                }
                                abstractC2464e = abstractC2464e2;
                            } else {
                                AtomicReference atomicReference = this.f1316h;
                                while (!atomicReference.compareAndSet(null, objM993i) && atomicReference.get() == null) {
                                }
                            }
                        }
                    } else {
                        c2366l2 = c2366l;
                        c2366l = (C2366L) this.f1365e;
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}
