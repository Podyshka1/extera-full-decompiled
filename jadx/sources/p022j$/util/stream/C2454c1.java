package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.Consumer;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.c1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2454c1 extends C2367L0 implements InterfaceC2312A0 {
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
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2312A0
    public final InterfaceC2352I0 build() {
        int i = this.f1184b;
        Object[] objArr = this.f1183a;
        if (i >= objArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1184b), Integer.valueOf(objArr.length)));
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        Object[] objArr = this.f1183a;
        if (j != objArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(objArr.length)));
        }
        this.f1184b = 0;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        int i = this.f1184b;
        Object[] objArr = this.f1183a;
        if (i < objArr.length) {
            this.f1184b = i + 1;
            objArr[i] = obj;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(objArr.length)));
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int i = this.f1184b;
        Object[] objArr = this.f1183a;
        if (i < objArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1184b), Integer.valueOf(objArr.length)));
        }
    }

    @Override // p022j$.util.stream.C2367L0
    public final String toString() {
        Object[] objArr = this.f1183a;
        return String.format("FixedNodeBuilder[%d][%s]", Integer.valueOf(objArr.length - this.f1184b), Arrays.toString(objArr));
    }
}
