package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.G3 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2345G3 implements InterfaceC2529p2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1143a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f1144b;

    public /* synthetic */ C2345G3(Consumer consumer, int i) {
        this.f1143a = i;
        this.f1144b = consumer;
    }

    /* JADX INFO: renamed from: a */
    private final /* synthetic */ void m915a(long j) {
    }

    /* JADX INFO: renamed from: b */
    private final /* synthetic */ void m916b(long j) {
    }

    /* JADX INFO: renamed from: c */
    private final /* synthetic */ void m917c() {
    }

    /* JADX INFO: renamed from: d */
    private final /* synthetic */ void m918d() {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        switch (this.f1143a) {
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
        switch (this.f1143a) {
            case 0:
                AbstractC2573y1.m1042G();
                throw null;
            default:
                AbstractC2573y1.m1042G();
                throw null;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.f1143a) {
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
    public final void m940v(Object obj) {
        switch (this.f1143a) {
            case 0:
                ((C2444a3) this.f1144b).m940v(obj);
                break;
            default:
                this.f1144b.m940v(obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1143a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
        int i = this.f1143a;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo873m(long j) {
        int i = this.f1143a;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        switch (this.f1143a) {
        }
        return false;
    }
}
