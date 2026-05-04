package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.C2079C;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class S1 implements T1, InterfaceC6238o2 {

    /* JADX INFO: renamed from: a */
    public boolean f1009a;

    /* JADX INFO: renamed from: b */
    public long f1010b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ LongBinaryOperator f1011c;

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

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo747v((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC6238o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo747v(Long l) {
        AbstractC6277y1.m886E(this, l);
    }

    public S1(LongBinaryOperator longBinaryOperator) {
        this.f1011c = longBinaryOperator;
    }

    @Override // j$.util.stream.T1
    /* JADX INFO: renamed from: t */
    public final void mo746t(T1 t1) {
        S1 s1 = (S1) t1;
        if (s1.f1009a) {
            return;
        }
        accept(s1.f1010b);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1009a = true;
        this.f1010b = 0L;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        if (this.f1009a) {
            this.f1009a = false;
            this.f1010b = j;
        } else {
            this.f1010b = this.f1011c.applyAsLong(this.f1010b, j);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f1009a ? C2079C.f661c : new C2079C(this.f1010b);
    }
}
