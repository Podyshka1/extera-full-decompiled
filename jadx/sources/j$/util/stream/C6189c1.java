package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.c1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6189c1 extends L0 implements A0 {
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
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    @Override // j$.util.stream.A0
    public final I0 build() {
        int i = this.f949b;
        Object[] objArr = this.f948a;
        if (i >= objArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f949b), Integer.valueOf(objArr.length)));
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        Object[] objArr = this.f948a;
        if (j != objArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(objArr.length)));
        }
        this.f949b = 0;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        int i = this.f949b;
        Object[] objArr = this.f948a;
        if (i < objArr.length) {
            this.f949b = i + 1;
            objArr[i] = obj;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(objArr.length)));
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final void end() {
        int i = this.f949b;
        Object[] objArr = this.f948a;
        if (i < objArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f949b), Integer.valueOf(objArr.length)));
        }
    }

    @Override // j$.util.stream.L0
    public final String toString() {
        Object[] objArr = this.f948a;
        return String.format("FixedNodeBuilder[%d][%s]", Integer.valueOf(objArr.length - this.f949b), Arrays.toString(objArr));
    }
}
