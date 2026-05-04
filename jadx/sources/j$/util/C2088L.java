package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.stream.InterfaceC6242p2;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.L */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2088L implements LongConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f672a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f673b;

    public /* synthetic */ C2088L(Consumer consumer, int i) {
        this.f672a = i;
        this.f673b = consumer;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f672a) {
            case 0:
                this.f673b.accept(Long.valueOf(j));
                break;
            default:
                ((InterfaceC6242p2) this.f673b).accept(j);
                break;
        }
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f672a) {
        }
        return AbstractC1965a.m421d(this, longConsumer);
    }
}
