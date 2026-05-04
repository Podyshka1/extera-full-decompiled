package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: j$.util.stream.c */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2180c extends AbstractC2182e {

    /* JADX INFO: renamed from: h */
    public final AtomicReference f1081h;

    /* JADX INFO: renamed from: i */
    public volatile boolean f1082i;

    /* JADX INFO: renamed from: h */
    public abstract Object mo803h();

    public AbstractC2180c(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        super(abstractC6277y1, spliterator);
        this.f1081h = new AtomicReference(null);
    }

    public AbstractC2180c(AbstractC2180c abstractC2180c, Spliterator spliterator) {
        super(abstractC2180c, spliterator);
        this.f1081h = abstractC2180c.f1081h;
    }

    @Override // j$.util.stream.AbstractC2182e, java.util.concurrent.CountedCompleter
    public final void compute() {
        Object objMo803h;
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1126b;
        long jEstimateSize = spliterator.estimateSize();
        long jM852e = this.f1127c;
        if (jM852e == 0) {
            jM852e = AbstractC2182e.m852e(jEstimateSize);
            this.f1127c = jM852e;
        }
        AtomicReference atomicReference = this.f1081h;
        boolean z = false;
        AbstractC2180c abstractC2180c = this;
        while (true) {
            objMo803h = atomicReference.get();
            if (objMo803h != null) {
                break;
            }
            boolean z2 = abstractC2180c.f1082i;
            if (!z2) {
                CountedCompleter<?> completer = abstractC2180c.getCompleter();
                while (true) {
                    AbstractC2180c abstractC2180c2 = (AbstractC2180c) ((AbstractC2182e) completer);
                    if (z2 || abstractC2180c2 == null) {
                        break;
                    }
                    z2 = abstractC2180c2.f1082i;
                    completer = abstractC2180c2.getCompleter();
                }
            }
            if (z2) {
                objMo803h = abstractC2180c.mo803h();
                break;
            }
            if (jEstimateSize <= jM852e || (spliteratorTrySplit = spliterator.trySplit()) == null) {
                break;
            }
            AbstractC2180c abstractC2180c3 = (AbstractC2180c) abstractC2180c.mo802c(spliteratorTrySplit);
            abstractC2180c.f1128d = abstractC2180c3;
            AbstractC2180c abstractC2180c4 = (AbstractC2180c) abstractC2180c.mo802c(spliterator);
            abstractC2180c.f1129e = abstractC2180c4;
            abstractC2180c.setPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
                abstractC2180c = abstractC2180c3;
                abstractC2180c3 = abstractC2180c4;
            } else {
                abstractC2180c = abstractC2180c4;
            }
            z = !z;
            abstractC2180c3.fork();
            jEstimateSize = spliterator.estimateSize();
        }
        objMo803h = abstractC2180c.mo801a();
        abstractC2180c.mo840d(objMo803h);
        abstractC2180c.tryComplete();
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: d */
    public final void mo840d(Object obj) {
        if (!m853b()) {
            this.f1130f = obj;
        } else if (obj != null) {
            AtomicReference atomicReference = this.f1081h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    @Override // j$.util.stream.AbstractC2182e, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return m843i();
    }

    /* JADX INFO: renamed from: i */
    public final Object m843i() {
        if (m853b()) {
            Object obj = this.f1081h.get();
            return obj == null ? mo803h() : obj;
        }
        return this.f1130f;
    }

    /* JADX INFO: renamed from: f */
    public void mo841f() {
        this.f1082i = true;
    }

    /* JADX INFO: renamed from: g */
    public final void m842g() {
        AbstractC2180c abstractC2180c = this;
        for (AbstractC2180c abstractC2180c2 = (AbstractC2180c) ((AbstractC2182e) getCompleter()); abstractC2180c2 != null; abstractC2180c2 = (AbstractC2180c) ((AbstractC2182e) abstractC2180c2.getCompleter())) {
            if (abstractC2180c2.f1128d == abstractC2180c) {
                AbstractC2180c abstractC2180c3 = (AbstractC2180c) abstractC2180c2.f1129e;
                if (!abstractC2180c3.f1082i) {
                    abstractC2180c3.mo841f();
                }
            }
            abstractC2180c = abstractC2180c2;
        }
    }
}
