package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.v3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2560v3 extends AbstractC2565w3 implements InterfaceC2240Z {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m549l(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m516B(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2575y3
    /* JADX INFO: renamed from: a */
    public final Spliterator mo1033a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C2560v3((InterfaceC2240Z) spliterator, j, j2, j3, j4);
    }

    @Override // p022j$.util.stream.AbstractC2565w3
    /* JADX INFO: renamed from: b */
    public final Object mo1034b() {
        return new C2337F0(1);
    }
}
