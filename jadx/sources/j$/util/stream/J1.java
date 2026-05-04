package j$.util.stream;

import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class J1 implements T1 {

    /* JADX INFO: renamed from: a */
    public boolean f926a;

    /* JADX INFO: renamed from: b */
    public Object f927b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ BinaryOperator f928c;

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

    public J1(BinaryOperator binaryOperator) {
        this.f928c = binaryOperator;
    }

    @Override // j$.util.stream.T1
    /* JADX INFO: renamed from: t */
    public final void mo746t(T1 t1) {
        J1 j1 = (J1) t1;
        if (j1.f926a) {
            return;
        }
        m800v(j1.f927b);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f926a = true;
        this.f927b = null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        if (this.f926a) {
            this.f926a = false;
            this.f927b = obj;
        } else {
            this.f927b = this.f928c.apply(this.f927b, obj);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f926a ? Optional.empty() : Optional.of(this.f927b);
    }
}
