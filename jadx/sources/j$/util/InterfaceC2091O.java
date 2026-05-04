package j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.O */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2091O extends InterfaceC2092P {
    @Override // java.util.Iterator, j$.util.InterfaceC2209y
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(LongConsumer longConsumer);

    @Override // java.util.Iterator
    Long next();

    long nextLong();
}
