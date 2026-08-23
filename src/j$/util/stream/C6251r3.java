package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.r3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C6251r3 implements InterfaceC6238o2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1228a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ LongConsumer f1229b;

    public /* synthetic */ C6251r3(LongConsumer longConsumer, int i) {
        this.f1228a = i;
        this.f1229b = longConsumer;
    }

    /* JADX INFO: renamed from: a */
    private final /* synthetic */ void m875a(long j) {
    }

    /* JADX INFO: renamed from: b */
    private final /* synthetic */ void m876b(long j) {
    }

    /* JADX INFO: renamed from: c */
    private final /* synthetic */ void m877c() {
    }

    /* JADX INFO: renamed from: d */
    private final /* synthetic */ void m878d() {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        switch (this.f1228a) {
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
        switch (this.f1228a) {
            case 0:
                AbstractC6277y1.m888G();
                throw null;
            default:
                AbstractC6277y1.m888G();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f1228a) {
            case 0:
                this.f1229b.accept(j);
                break;
            default:
                ((X2) this.f1229b).accept(j);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        switch (this.f1228a) {
            case 0:
                mo747v((Long) obj);
                break;
            default:
                mo747v((Long) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1228a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f1228a) {
        }
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
        int i = this.f1228a;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo744m(long j) {
        int i = this.f1228a;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        switch (this.f1228a) {
        }
        return false;
    }

    @Override // j$.util.stream.InterfaceC6238o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo747v(Long l) {
        switch (this.f1228a) {
            case 0:
                AbstractC6277y1.m886E(this, l);
                break;
            default:
                AbstractC6277y1.m886E(this, l);
                break;
        }
    }
}
