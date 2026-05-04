package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.function.Consumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class V0 extends U0 implements InterfaceC6272x0 {
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
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo771A((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    @Override // j$.util.stream.A0
    public final /* bridge */ /* synthetic */ I0 build() {
        build();
        return this;
    }

    @Override // j$.util.stream.InterfaceC6272x0, j$.util.stream.A0
    public final C0 build() {
        int i = this.f1032b;
        double[] dArr = this.f1031a;
        if (i >= dArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1032b), Integer.valueOf(dArr.length)));
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        double[] dArr = this.f1031a;
        if (j != dArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(dArr.length)));
        }
        this.f1032b = 0;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        int i = this.f1032b;
        double[] dArr = this.f1031a;
        if (i < dArr.length) {
            this.f1032b = i + 1;
            dArr[i] = d;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(dArr.length)));
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final void end() {
        int i = this.f1032b;
        double[] dArr = this.f1031a;
        if (i < dArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1032b), Integer.valueOf(dArr.length)));
        }
    }

    @Override // j$.util.stream.U0
    public final String toString() {
        double[] dArr = this.f1031a;
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(dArr.length - this.f1032b), Arrays.toString(dArr));
    }
}
