package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.n3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C6235n3 implements InterfaceC6230m2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1202a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ DoubleConsumer f1203b;

    public /* synthetic */ C6235n3(DoubleConsumer doubleConsumer, int i) {
        this.f1202a = i;
        this.f1203b = doubleConsumer;
    }

    /* JADX INFO: renamed from: a */
    private final /* synthetic */ void m866a(long j) {
    }

    /* JADX INFO: renamed from: b */
    private final /* synthetic */ void m867b(long j) {
    }

    /* JADX INFO: renamed from: c */
    private final /* synthetic */ void m868c() {
    }

    /* JADX INFO: renamed from: d */
    private final /* synthetic */ void m869d() {
    }

    @Override // j$.util.stream.InterfaceC6230m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo771A(Double d) {
        switch (this.f1202a) {
            case 0:
                AbstractC6277y1.m882A(this, d);
                break;
            default:
                AbstractC6277y1.m882A(this, d);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC6230m2, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        switch (this.f1202a) {
            case 0:
                this.f1203b.accept(d);
                break;
            default:
                ((T2) this.f1203b).accept(d);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(int i) {
        switch (this.f1202a) {
            case 0:
                AbstractC6277y1.m888G();
                throw null;
            default:
                AbstractC6277y1.m888G();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.f1202a) {
            case 0:
                AbstractC6277y1.m889H();
                throw null;
            default:
                AbstractC6277y1.m889H();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        switch (this.f1202a) {
            case 0:
                mo771A((Double) obj);
                break;
            default:
                mo771A((Double) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1202a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f1202a) {
        }
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
        int i = this.f1202a;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo744m(long j) {
        int i = this.f1202a;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        switch (this.f1202a) {
        }
        return false;
    }
}
