package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.C2123s;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.w0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6268w0 extends AbstractC2180c {

    /* JADX INFO: renamed from: j */
    public final C2123s f1261j;

    public C6268w0(C2123s c2123s, AbstractC2179b abstractC2179b, Spliterator spliterator) {
        super(abstractC2179b, spliterator);
        this.f1261j = c2123s;
    }

    public C6268w0(C6268w0 c6268w0, Spliterator spliterator) {
        super(c6268w0, spliterator);
        this.f1261j = c6268w0.f1261j;
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: c */
    public final AbstractC2182e mo802c(Spliterator spliterator) {
        return new C6268w0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: a */
    public final Object mo801a() {
        AbstractC6277y1 abstractC6277y1 = this.f1125a;
        AbstractC6260u0 abstractC6260u0 = (AbstractC6260u0) ((Supplier) this.f1261j.f763c).get();
        abstractC6277y1.s0(this.f1126b, abstractC6260u0);
        boolean z = abstractC6260u0.f1248b;
        if (z == ((EnumC6264v0) this.f1261j.f762b).f1255b) {
            Boolean boolValueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.f1081h;
            while (!atomicReference.compareAndSet(null, boolValueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC2180c
    /* JADX INFO: renamed from: h */
    public final Object mo803h() {
        return Boolean.valueOf(!((EnumC6264v0) this.f1261j.f762b).f1255b);
    }
}
