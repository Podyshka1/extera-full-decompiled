package p022j$.util;

import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.U */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2235U extends InterfaceC2246c0 {
    void forEachRemaining(DoubleConsumer doubleConsumer);

    boolean tryAdvance(DoubleConsumer doubleConsumer);

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    InterfaceC2235U trySplit();
}
