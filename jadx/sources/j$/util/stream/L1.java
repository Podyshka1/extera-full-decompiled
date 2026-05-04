package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public final class L1 extends U1 implements T1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Supplier f950b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ BiConsumer f951c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ BinaryOperator f952d;

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(int i) {
        AbstractC6277y1.m888G();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    @Override // j$.util.stream.T1
    /* JADX INFO: renamed from: t */
    public final void mo746t(T1 t1) {
        this.f1033a = this.f952d.apply(this.f1033a, ((L1) t1).f1033a);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1033a = this.f950b.get();
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        this.f951c.accept(this.f1033a, obj);
    }

    public L1(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator) {
        this.f950b = supplier;
        this.f951c = biConsumer;
        this.f952d = binaryOperator;
    }
}
