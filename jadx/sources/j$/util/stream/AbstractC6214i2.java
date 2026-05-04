package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6214i2 implements InterfaceC6230m2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC6242p2 f1158a;

    @Override // j$.util.stream.InterfaceC6230m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo771A(Double d) {
        AbstractC6277y1.m882A(this, d);
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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo771A((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    public AbstractC6214i2(InterfaceC6242p2 interfaceC6242p2) {
        this.f1158a = (InterfaceC6242p2) Objects.requireNonNull(interfaceC6242p2);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public void mo744m(long j) {
        this.f1158a.mo744m(j);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public void end() {
        this.f1158a.end();
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public boolean mo745p() {
        return this.f1158a.mo745p();
    }
}
