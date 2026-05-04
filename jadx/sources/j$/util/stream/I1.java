package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class I1 extends U1 implements T1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f917b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ BiFunction f918c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ BinaryOperator f919d;

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
        this.f1033a = this.f919d.apply(this.f1033a, ((I1) t1).f1033a);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1033a = this.f917b;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        this.f1033a = this.f918c.apply(this.f1033a, obj);
    }

    public I1(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        this.f917b = obj;
        this.f918c = biFunction;
        this.f919d = binaryOperator;
    }
}
