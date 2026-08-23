package p022j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.stream.InterfaceC2529p2;

/* JADX INFO: renamed from: j$.util.L */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2227L implements LongConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f907a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f908b;

    public /* synthetic */ C2227L(Consumer consumer, int i) {
        this.f907a = i;
        this.f908b = consumer;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f907a) {
            case 0:
                this.f908b.accept(Long.valueOf(j));
                break;
            default:
                ((InterfaceC2529p2) this.f908b).accept(j);
                break;
        }
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f907a) {
        }
        return AbstractC2104a.m541d(this, longConsumer);
    }
}
