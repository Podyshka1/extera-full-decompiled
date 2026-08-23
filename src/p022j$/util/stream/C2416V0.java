package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.V0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2416V0 extends C2411U0 implements InterfaceC2567x0 {
    @Override // p022j$.util.stream.InterfaceC2514m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo907A(Double d) {
        AbstractC2573y1.m1036A(this, d);
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

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo907A((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2312A0
    public final /* bridge */ /* synthetic */ InterfaceC2352I0 build() {
        build();
        return this;
    }

    @Override // p022j$.util.stream.InterfaceC2567x0, p022j$.util.stream.InterfaceC2312A0
    public final InterfaceC2322C0 build() {
        int i = this.f1267b;
        double[] dArr = this.f1266a;
        if (i >= dArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1267b), Integer.valueOf(dArr.length)));
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        double[] dArr = this.f1266a;
        if (j != dArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(dArr.length)));
        }
        this.f1267b = 0;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        int i = this.f1267b;
        double[] dArr = this.f1266a;
        if (i < dArr.length) {
            this.f1267b = i + 1;
            dArr[i] = d;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(dArr.length)));
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int i = this.f1267b;
        double[] dArr = this.f1266a;
        if (i < dArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1267b), Integer.valueOf(dArr.length)));
        }
    }

    @Override // p022j$.util.stream.C2411U0
    public final String toString() {
        double[] dArr = this.f1266a;
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(dArr.length - this.f1267b), Arrays.toString(dArr));
    }
}
