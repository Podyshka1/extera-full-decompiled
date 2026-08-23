package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.r3 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2540r3 implements InterfaceC2524o2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1464a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ LongConsumer f1465b;

    public /* synthetic */ C2540r3(LongConsumer longConsumer, int i) {
        this.f1464a = i;
        this.f1465b = longConsumer;
    }

    /* JADX INFO: renamed from: a */
    private final /* synthetic */ void m1029a(long j) {
    }

    /* JADX INFO: renamed from: b */
    private final /* synthetic */ void m1030b(long j) {
    }

    /* JADX INFO: renamed from: c */
    private final /* synthetic */ void m1031c() {
    }

    /* JADX INFO: renamed from: d */
    private final /* synthetic */ void m1032d() {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        switch (this.f1464a) {
            case 0:
                AbstractC2573y1.m1074z();
                throw null;
            default:
                AbstractC2573y1.m1074z();
                throw null;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(int i) {
        switch (this.f1464a) {
            case 0:
                AbstractC2573y1.m1042G();
                throw null;
            default:
                AbstractC2573y1.m1042G();
                throw null;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f1464a) {
            case 0:
                this.f1465b.accept(j);
                break;
            default:
                ((C2428X2) this.f1465b).accept(j);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        switch (this.f1464a) {
            case 0:
                mo876v((Long) obj);
                break;
            default:
                mo876v((Long) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1464a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f1464a) {
        }
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
        int i = this.f1464a;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo873m(long j) {
        int i = this.f1464a;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        switch (this.f1464a) {
        }
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2524o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo876v(Long l) {
        switch (this.f1464a) {
            case 0:
                AbstractC2573y1.m1040E(this, l);
                break;
            default:
                AbstractC2573y1.m1040E(this, l);
                break;
        }
    }
}
