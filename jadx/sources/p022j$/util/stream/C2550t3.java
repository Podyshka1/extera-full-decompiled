package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2235U;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.t3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2550t3 extends AbstractC2565w3 implements InterfaceC2235U {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m547j(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m563z(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2575y3
    /* JADX INFO: renamed from: a */
    public final Spliterator mo1033a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C2550t3((InterfaceC2235U) spliterator, j, j2, j3, j4);
    }

    @Override // p022j$.util.stream.AbstractC2565w3
    /* JADX INFO: renamed from: b */
    public final Object mo1034b() {
        return new C2317B0(1);
    }
}
