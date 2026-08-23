package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.k3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2504k3 extends AbstractC2510l3 implements Consumer {

    /* JADX INFO: renamed from: b */
    public final Object[] f1410b;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public C2504k3(int i) {
        this.f1410b = new Object[i];
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f1424a;
        this.f1424a = i + 1;
        this.f1410b[i] = obj;
    }
}
