package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a0 implements Consumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f497a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f498b;

    public /* synthetic */ a0(Consumer consumer, int i) {
        this.f497a = i;
        this.f498b = consumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f497a;
        Consumer consumer = this.f498b;
        switch (i) {
            case 0:
                consumer.accept(AbstractC2248g.m533f(obj));
                break;
            default:
                consumer.accept(AbstractC2248g.m533f(obj));
                break;
        }
    }
}
