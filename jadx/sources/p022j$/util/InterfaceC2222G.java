package p022j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.G */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2222G extends InterfaceC2231P {
    @Override // java.util.Iterator, p022j$.util.InterfaceC2587y
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(DoubleConsumer doubleConsumer);

    @Override // java.util.Iterator
    Double next();

    double nextDouble();
}
