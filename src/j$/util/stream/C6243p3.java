package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.p3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C6243p3 implements InterfaceC6234n2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1211a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IntConsumer f1212b;

    public /* synthetic */ C6243p3(IntConsumer intConsumer, int i) {
        this.f1211a = i;
        this.f1212b = intConsumer;
    }

    /* JADX INFO: renamed from: a */
    private final /* synthetic */ void m871a(long j) {
    }

    /* JADX INFO: renamed from: b */
    private final /* synthetic */ void m872b(long j) {
    }

    /* JADX INFO: renamed from: c */
    private final /* synthetic */ void m873c() {
    }

    /* JADX INFO: renamed from: d */
    private final /* synthetic */ void m874d() {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        switch (this.f1211a) {
            case 0:
                AbstractC6277y1.m907z();
                throw null;
            default:
                AbstractC6277y1.m907z();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC6234n2, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        switch (this.f1211a) {
            case 0:
                this.f1212b.accept(i);
                break;
            default:
                ((V2) this.f1212b).accept(i);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.f1211a) {
            case 0:
                AbstractC6277y1.m889H();
                throw null;
            default:
                AbstractC6277y1.m889H();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        switch (this.f1211a) {
            case 0:
                mo814n((Integer) obj);
                break;
            default:
                mo814n((Integer) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1211a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f1211a) {
        }
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
        int i = this.f1211a;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo744m(long j) {
        int i = this.f1211a;
    }

    @Override // j$.util.stream.InterfaceC6234n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo814n(Integer num) {
        switch (this.f1211a) {
            case 0:
                AbstractC6277y1.m884C(this, num);
                break;
            default:
                AbstractC6277y1.m884C(this, num);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        switch (this.f1211a) {
        }
        return false;
    }
}
