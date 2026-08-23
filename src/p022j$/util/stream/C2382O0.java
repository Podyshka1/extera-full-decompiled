package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.O0 */
/* JADX INFO: loaded from: classes2.dex */
public class C2382O0 extends AbstractC2464e {

    /* JADX INFO: renamed from: h */
    public final AbstractC2573y1 f1206h;

    /* JADX INFO: renamed from: i */
    public final LongFunction f1207i;

    /* JADX INFO: renamed from: j */
    public final BinaryOperator f1208j;

    @Override // p022j$.util.stream.AbstractC2464e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2464e abstractC2464e = this.f1364d;
        if (abstractC2464e != null) {
            this.f1366f = (InterfaceC2352I0) this.f1208j.apply((InterfaceC2352I0) ((C2382O0) abstractC2464e).f1366f, (InterfaceC2352I0) ((C2382O0) this.f1365e).f1366f);
        }
        super.onCompletion(countedCompleter);
    }

    public C2382O0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(abstractC2573y1, spliterator);
        this.f1206h = abstractC2573y1;
        this.f1207i = longFunction;
        this.f1208j = binaryOperator;
    }

    public C2382O0(C2382O0 c2382o0, Spliterator spliterator) {
        super(c2382o0, spliterator);
        this.f1206h = c2382o0.f1206h;
        this.f1207i = c2382o0.f1207i;
        this.f1208j = c2382o0.f1208j;
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: c */
    public AbstractC2464e mo942c(Spliterator spliterator) {
        return new C2382O0(this, spliterator);
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final InterfaceC2352I0 mo941a() {
        InterfaceC2312A0 interfaceC2312A0 = (InterfaceC2312A0) this.f1207i.apply(this.f1206h.mo981e0(this.f1362b));
        this.f1206h.mo982s0(this.f1362b, interfaceC2312A0);
        return interfaceC2312A0.build();
    }
}
