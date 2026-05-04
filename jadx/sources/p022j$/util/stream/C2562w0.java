package p022j$.util.stream;

import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Supplier;
import p022j$.util.Spliterator;
import p022j$.util.concurrent.C2265s;

/* JADX INFO: renamed from: j$.util.stream.w0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2562w0 extends AbstractC2452c {

    /* JADX INFO: renamed from: j */
    public final C2265s f1497j;

    public C2562w0(C2265s c2265s, AbstractC2446b abstractC2446b, Spliterator spliterator) {
        super(abstractC2446b, spliterator);
        this.f1497j = c2265s;
    }

    public C2562w0(C2562w0 c2562w0, Spliterator spliterator) {
        super(c2562w0, spliterator);
        this.f1497j = c2562w0.f1497j;
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: c */
    public final AbstractC2464e mo942c(Spliterator spliterator) {
        return new C2562w0(this, spliterator);
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: a */
    public final Object mo941a() {
        AbstractC2573y1 abstractC2573y1 = this.f1361a;
        AbstractC2552u0 abstractC2552u0 = (AbstractC2552u0) ((Supplier) this.f1497j.f998c).get();
        abstractC2573y1.mo982s0(this.f1362b, abstractC2552u0);
        boolean z = abstractC2552u0.f1484b;
        if (z == ((EnumC2557v0) this.f1497j.f997b).f1491b) {
            Boolean boolValueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.f1316h;
            while (!atomicReference.compareAndSet(null, boolValueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // p022j$.util.stream.AbstractC2452c
    /* JADX INFO: renamed from: h */
    public final Object mo943h() {
        return Boolean.valueOf(!((EnumC2557v0) this.f1497j.f997b).f1491b);
    }
}
