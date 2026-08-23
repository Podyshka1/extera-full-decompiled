package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.c */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2452c extends AbstractC2464e {

    /* JADX INFO: renamed from: h */
    public final AtomicReference f1316h;

    /* JADX INFO: renamed from: i */
    public volatile boolean f1317i;

    /* JADX INFO: renamed from: h */
    public abstract Object mo943h();

    public AbstractC2452c(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        super(abstractC2573y1, spliterator);
        this.f1316h = new AtomicReference(null);
    }

    public AbstractC2452c(AbstractC2452c abstractC2452c, Spliterator spliterator) {
        super(abstractC2452c, spliterator);
        this.f1316h = abstractC2452c.f1316h;
    }

    @Override // p022j$.util.stream.AbstractC2464e, java.util.concurrent.CountedCompleter
    public final void compute() {
        Object objMo943h;
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1362b;
        long jEstimateSize = spliterator.estimateSize();
        long jM1003e = this.f1363c;
        if (jM1003e == 0) {
            jM1003e = AbstractC2464e.m1003e(jEstimateSize);
            this.f1363c = jM1003e;
        }
        AtomicReference atomicReference = this.f1316h;
        boolean z = false;
        AbstractC2452c abstractC2452c = this;
        while (true) {
            objMo943h = atomicReference.get();
            if (objMo943h != null) {
                break;
            }
            boolean z2 = abstractC2452c.f1317i;
            if (!z2) {
                CountedCompleter<?> completer = abstractC2452c.getCompleter();
                while (true) {
                    AbstractC2452c abstractC2452c2 = (AbstractC2452c) ((AbstractC2464e) completer);
                    if (z2 || abstractC2452c2 == null) {
                        break;
                    }
                    z2 = abstractC2452c2.f1317i;
                    completer = abstractC2452c2.getCompleter();
                }
            }
            if (z2) {
                objMo943h = abstractC2452c.mo943h();
                break;
            }
            if (jEstimateSize <= jM1003e || (spliteratorTrySplit = spliterator.trySplit()) == null) {
                break;
            }
            AbstractC2452c abstractC2452c3 = (AbstractC2452c) abstractC2452c.mo942c(spliteratorTrySplit);
            abstractC2452c.f1364d = abstractC2452c3;
            AbstractC2452c abstractC2452c4 = (AbstractC2452c) abstractC2452c.mo942c(spliterator);
            abstractC2452c.f1365e = abstractC2452c4;
            abstractC2452c.setPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
                abstractC2452c = abstractC2452c3;
                abstractC2452c3 = abstractC2452c4;
            } else {
                abstractC2452c = abstractC2452c4;
            }
            z = !z;
            abstractC2452c3.fork();
            jEstimateSize = spliterator.estimateSize();
        }
        objMo943h = abstractC2452c.mo941a();
        abstractC2452c.mo990d(objMo943h);
        abstractC2452c.tryComplete();
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: d */
    public final void mo990d(Object obj) {
        if (!m1004b()) {
            this.f1366f = obj;
        } else if (obj != null) {
            AtomicReference atomicReference = this.f1316h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    @Override // p022j$.util.stream.AbstractC2464e, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return m993i();
    }

    /* JADX INFO: renamed from: i */
    public final Object m993i() {
        if (m1004b()) {
            Object obj = this.f1316h.get();
            return obj == null ? mo943h() : obj;
        }
        return this.f1366f;
    }

    /* JADX INFO: renamed from: f */
    public void mo991f() {
        this.f1317i = true;
    }

    /* JADX INFO: renamed from: g */
    public final void m992g() {
        AbstractC2452c abstractC2452c = this;
        for (AbstractC2452c abstractC2452c2 = (AbstractC2452c) ((AbstractC2464e) getCompleter()); abstractC2452c2 != null; abstractC2452c2 = (AbstractC2452c) ((AbstractC2464e) abstractC2452c2.getCompleter())) {
            if (abstractC2452c2.f1364d == abstractC2452c) {
                AbstractC2452c abstractC2452c3 = (AbstractC2452c) abstractC2452c2.f1365e;
                if (!abstractC2452c3.f1317i) {
                    abstractC2452c3.mo991f();
                }
            }
            abstractC2452c = abstractC2452c2;
        }
    }
}
