package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.p3 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2530p3 implements InterfaceC2519n2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1447a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IntConsumer f1448b;

    public /* synthetic */ C2530p3(IntConsumer intConsumer, int i) {
        this.f1447a = i;
        this.f1448b = intConsumer;
    }

    /* JADX INFO: renamed from: a */
    private final /* synthetic */ void m1025a(long j) {
    }

    /* JADX INFO: renamed from: b */
    private final /* synthetic */ void m1026b(long j) {
    }

    /* JADX INFO: renamed from: c */
    private final /* synthetic */ void m1027c() {
    }

    /* JADX INFO: renamed from: d */
    private final /* synthetic */ void m1028d() {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        switch (this.f1447a) {
            case 0:
                AbstractC2573y1.m1074z();
                throw null;
            default:
                AbstractC2573y1.m1074z();
                throw null;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2519n2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        switch (this.f1447a) {
            case 0:
                this.f1448b.accept(i);
                break;
            default:
                ((C2418V2) this.f1448b).accept(i);
                break;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.f1447a) {
            case 0:
                AbstractC2573y1.m1043H();
                throw null;
            default:
                AbstractC2573y1.m1043H();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        switch (this.f1447a) {
            case 0:
                mo954n((Integer) obj);
                break;
            default:
                mo954n((Integer) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1447a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f1447a) {
        }
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
        int i = this.f1447a;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo873m(long j) {
        int i = this.f1447a;
    }

    @Override // p022j$.util.stream.InterfaceC2519n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo954n(Integer num) {
        switch (this.f1447a) {
            case 0:
                AbstractC2573y1.m1038C(this, num);
                break;
            default:
                AbstractC2573y1.m1038C(this, num);
                break;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        switch (this.f1447a) {
        }
        return false;
    }
}
