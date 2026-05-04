package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.OptionalInt;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class P1 implements T1, InterfaceC6234n2 {

    /* JADX INFO: renamed from: a */
    public boolean f980a;

    /* JADX INFO: renamed from: b */
    public int f981b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IntBinaryOperator f982c;

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo814n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.InterfaceC6234n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo814n(Integer num) {
        AbstractC6277y1.m884C(this, num);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    public P1(IntBinaryOperator intBinaryOperator) {
        this.f982c = intBinaryOperator;
    }

    @Override // j$.util.stream.T1
    /* JADX INFO: renamed from: t */
    public final void mo746t(T1 t1) {
        P1 p1 = (P1) t1;
        if (p1.f980a) {
            return;
        }
        accept(p1.f981b);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f980a = true;
        this.f981b = 0;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        if (this.f980a) {
            this.f980a = false;
            this.f981b = i;
        } else {
            this.f981b = this.f982c.applyAsInt(this.f981b, i);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f980a ? OptionalInt.f678c : new OptionalInt(this.f981b);
    }
}
