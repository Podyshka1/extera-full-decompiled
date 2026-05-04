package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* JADX INFO: renamed from: j$.util.stream.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6182a2 extends AbstractC2182e {

    /* JADX INFO: renamed from: h */
    public final AbstractC6277y1 f1058h;

    @Override // j$.util.stream.AbstractC2182e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2182e abstractC2182e = this.f1128d;
        if (abstractC2182e != null) {
            T1 t1 = (T1) ((C6182a2) abstractC2182e).f1130f;
            t1.mo746t((T1) ((C6182a2) this.f1129e).f1130f);
            this.f1130f = t1;
        }
        super.onCompletion(countedCompleter);
    }

    public C6182a2(AbstractC6277y1 abstractC6277y1, AbstractC6277y1 abstractC6277y12, Spliterator spliterator) {
        super(abstractC6277y12, spliterator);
        this.f1058h = abstractC6277y1;
    }

    public C6182a2(C6182a2 c6182a2, Spliterator spliterator) {
        super(c6182a2, spliterator);
        this.f1058h = c6182a2.f1058h;
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: c */
    public final AbstractC2182e mo802c(Spliterator spliterator) {
        return new C6182a2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: a */
    public final Object mo801a() {
        AbstractC6277y1 abstractC6277y1 = this.f1125a;
        T1 t1R0 = this.f1058h.r0();
        abstractC6277y1.s0(this.f1126b, t1R0);
        return t1R0;
    }
}
