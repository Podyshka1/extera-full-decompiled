package p022j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import p022j$.util.Optional;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.J1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2358J1 implements InterfaceC2407T1 {

    /* JADX INFO: renamed from: a */
    public boolean f1161a;

    /* JADX INFO: renamed from: b */
    public Object f1162b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ BinaryOperator f1163c;

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(int i) {
        AbstractC2573y1.m1042G();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    public C2358J1(BinaryOperator binaryOperator) {
        this.f1163c = binaryOperator;
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        C2358J1 c2358j1 = (C2358J1) interfaceC2407T1;
        if (c2358j1.f1161a) {
            return;
        }
        m940v(c2358j1.f1162b);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1161a = true;
        this.f1162b = null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        if (this.f1161a) {
            this.f1161a = false;
            this.f1162b = obj;
        } else {
            this.f1162b = this.f1163c.apply(this.f1162b, obj);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f1161a ? Optional.empty() : Optional.m814of(this.f1162b);
    }
}
