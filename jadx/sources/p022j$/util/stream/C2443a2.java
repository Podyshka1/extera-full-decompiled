package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.a2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2443a2 extends AbstractC2464e {

    /* JADX INFO: renamed from: h */
    public final AbstractC2573y1 f1293h;

    @Override // p022j$.util.stream.AbstractC2464e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2464e abstractC2464e = this.f1364d;
        if (abstractC2464e != null) {
            InterfaceC2407T1 interfaceC2407T1 = (InterfaceC2407T1) ((C2443a2) abstractC2464e).f1366f;
            interfaceC2407T1.mo875t((InterfaceC2407T1) ((C2443a2) this.f1365e).f1366f);
            this.f1366f = interfaceC2407T1;
        }
        super.onCompletion(countedCompleter);
    }

    public C2443a2(AbstractC2573y1 abstractC2573y1, AbstractC2573y1 abstractC2573y12, Spliterator spliterator) {
        super(abstractC2573y12, spliterator);
        this.f1293h = abstractC2573y1;
    }

    public C2443a2(C2443a2 c2443a2, Spliterator spliterator) {
        super(c2443a2, spliterator);
        this.f1293h = c2443a2.f1293h;
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: c */
    public final AbstractC2464e mo942c(Spliterator spliterator) {
        return new C2443a2(this, spliterator);
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: a */
    public final Object mo941a() {
        AbstractC2573y1 abstractC2573y1 = this.f1361a;
        InterfaceC2407T1 interfaceC2407T1Mo905r0 = this.f1293h.mo905r0();
        abstractC2573y1.mo982s0(this.f1362b, interfaceC2407T1Mo905r0);
        return interfaceC2407T1Mo905r0;
    }
}
