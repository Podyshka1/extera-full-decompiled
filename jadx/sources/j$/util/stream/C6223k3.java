package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.k3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6223k3 extends AbstractC6227l3 implements Consumer {

    /* JADX INFO: renamed from: b */
    public final Object[] f1174b;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public C6223k3(int i) {
        this.f1174b = new Object[i];
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f1188a;
        this.f1188a = i + 1;
        this.f1174b[i] = obj;
    }
}
