package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class G3 implements InterfaceC6242p2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f908a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f909b;

    public /* synthetic */ G3(Consumer consumer, int i) {
        this.f908a = i;
        this.f909b = consumer;
    }

    /* JADX INFO: renamed from: a */
    private final /* synthetic */ void m778a(long j) {
    }

    /* JADX INFO: renamed from: b */
    private final /* synthetic */ void m779b(long j) {
    }

    /* JADX INFO: renamed from: c */
    private final /* synthetic */ void m780c() {
    }

    /* JADX INFO: renamed from: d */
    private final /* synthetic */ void m781d() {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        switch (this.f908a) {
            case 0:
                AbstractC6277y1.m907z();
                throw null;
            default:
                AbstractC6277y1.m907z();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(int i) {
        switch (this.f908a) {
            case 0:
                AbstractC6277y1.m888G();
                throw null;
            default:
                AbstractC6277y1.m888G();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.f908a) {
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
    public final void m800v(Object obj) {
        switch (this.f908a) {
            case 0:
                ((C6183a3) this.f909b).m800v(obj);
                break;
            default:
                this.f909b.m800v(obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f908a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
        int i = this.f908a;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo744m(long j) {
        int i = this.f908a;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        switch (this.f908a) {
        }
        return false;
    }
}
