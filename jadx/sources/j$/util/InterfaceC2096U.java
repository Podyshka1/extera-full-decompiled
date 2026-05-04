package j$.util;

import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.U */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2096U extends c0 {
    void forEachRemaining(DoubleConsumer doubleConsumer);

    boolean tryAdvance(DoubleConsumer doubleConsumer);

    @Override // j$.util.c0, j$.util.Spliterator
    InterfaceC2096U trySplit();
}
