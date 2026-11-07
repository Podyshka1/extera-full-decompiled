package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a0 implements Consumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f496a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f497b;

    public /* synthetic */ a0(Consumer consumer, int i) {
        this.f496a = i;
        this.f497b = consumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f496a;
        Consumer consumer = this.f497b;
        switch (i) {
            case 0:
                consumer.accept(AbstractC2108g.m509f(obj));
                break;
            default:
                consumer.accept(AbstractC2108g.m509f(obj));
                break;
        }
    }
}
