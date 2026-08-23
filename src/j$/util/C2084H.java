package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.stream.InterfaceC6242p2;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.H */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2084H implements IntConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f668a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f669b;

    public /* synthetic */ C2084H(Consumer consumer, int i) {
        this.f668a = i;
        this.f669b = consumer;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        switch (this.f668a) {
            case 0:
                this.f669b.accept(Integer.valueOf(i));
                break;
            default:
                ((InterfaceC6242p2) this.f669b).accept(i);
                break;
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f668a) {
        }
        return AbstractC1965a.m420c(this, intConsumer);
    }
}
