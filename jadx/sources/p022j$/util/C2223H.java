package p022j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.stream.InterfaceC2529p2;

/* JADX INFO: renamed from: j$.util.H */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2223H implements IntConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f903a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f904b;

    public /* synthetic */ C2223H(Consumer consumer, int i) {
        this.f903a = i;
        this.f904b = consumer;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        switch (this.f903a) {
            case 0:
                this.f904b.accept(Integer.valueOf(i));
                break;
            default:
                ((InterfaceC2529p2) this.f904b).accept(i);
                break;
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f903a) {
        }
        return AbstractC2104a.m540c(this, intConsumer);
    }
}
