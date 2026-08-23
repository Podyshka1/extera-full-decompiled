package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.e1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2466e1 extends C2460d1 implements InterfaceC2572y0 {
    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
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
        mo954n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2519n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo954n(Integer num) {
        AbstractC2573y1.m1038C(this, num);
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

    @Override // p022j$.util.stream.InterfaceC2572y0, p022j$.util.stream.InterfaceC2312A0
    public final InterfaceC2332E0 build() {
        int i = this.f1332b;
        int[] iArr = this.f1331a;
        if (i >= iArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1332b), Integer.valueOf(iArr.length)));
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        int[] iArr = this.f1331a;
        if (j != iArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(iArr.length)));
        }
        this.f1332b = 0;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        int i2 = this.f1332b;
        int[] iArr = this.f1331a;
        if (i2 < iArr.length) {
            this.f1332b = i2 + 1;
            iArr[i2] = i;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(iArr.length)));
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int i = this.f1332b;
        int[] iArr = this.f1331a;
        if (i < iArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1332b), Integer.valueOf(iArr.length)));
        }
    }

    @Override // p022j$.util.stream.C2460d1
    public final String toString() {
        int[] iArr = this.f1331a;
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(iArr.length - this.f1332b), Arrays.toString(iArr));
    }
}
