package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* JADX INFO: loaded from: classes2.dex */
public class O0 extends AbstractC2182e {

    /* JADX INFO: renamed from: h */
    public final AbstractC6277y1 f971h;

    /* JADX INFO: renamed from: i */
    public final LongFunction f972i;

    /* JADX INFO: renamed from: j */
    public final BinaryOperator f973j;

    @Override // j$.util.stream.AbstractC2182e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2182e abstractC2182e = this.f1128d;
        if (abstractC2182e != null) {
            this.f1130f = (I0) this.f973j.apply((I0) ((O0) abstractC2182e).f1130f, (I0) ((O0) this.f1129e).f1130f);
        }
        super.onCompletion(countedCompleter);
    }

    public O0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(abstractC6277y1, spliterator);
        this.f971h = abstractC6277y1;
        this.f972i = longFunction;
        this.f973j = binaryOperator;
    }

    public O0(O0 o0, Spliterator spliterator) {
        super(o0, spliterator);
        this.f971h = o0.f971h;
        this.f972i = o0.f972i;
        this.f973j = o0.f973j;
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: c */
    public AbstractC2182e mo802c(Spliterator spliterator) {
        return new O0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final I0 mo801a() {
        A0 a0 = (A0) this.f972i.apply(this.f971h.e0(this.f1126b));
        this.f971h.s0(this.f1126b, a0);
        return a0.build();
    }
}
