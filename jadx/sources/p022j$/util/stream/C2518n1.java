package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.n1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2518n1 extends C2513m1 implements InterfaceC2577z0 {
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

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo876v((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2524o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo876v(Long l) {
        AbstractC2573y1.m1040E(this, l);
    }

    @Override // p022j$.util.stream.InterfaceC2312A0
    public final /* bridge */ /* synthetic */ InterfaceC2352I0 build() {
        build();
        return this;
    }

    @Override // p022j$.util.stream.InterfaceC2577z0, p022j$.util.stream.InterfaceC2312A0
    public final InterfaceC2342G0 build() {
        int i = this.f1430b;
        long[] jArr = this.f1429a;
        if (i >= jArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1430b), Integer.valueOf(jArr.length)));
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        long[] jArr = this.f1429a;
        if (j != jArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(jArr.length)));
        }
        this.f1430b = 0;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f1430b;
        long[] jArr = this.f1429a;
        if (i < jArr.length) {
            this.f1430b = i + 1;
            jArr[i] = j;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(jArr.length)));
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int i = this.f1430b;
        long[] jArr = this.f1429a;
        if (i < jArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1430b), Integer.valueOf(jArr.length)));
        }
    }

    @Override // p022j$.util.stream.C2513m1
    public final String toString() {
        long[] jArr = this.f1429a;
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(jArr.length - this.f1430b), Arrays.toString(jArr));
    }
}
