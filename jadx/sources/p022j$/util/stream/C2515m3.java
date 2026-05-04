package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;
import p022j$.util.concurrent.C2265s;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.m3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2515m3 implements Spliterator, Consumer {

    /* JADX INFO: renamed from: d */
    public static final Object f1431d = new Object();

    /* JADX INFO: renamed from: a */
    public final Spliterator f1432a;

    /* JADX INFO: renamed from: b */
    public final ConcurrentHashMap f1433b;

    /* JADX INFO: renamed from: c */
    public Object f1434c;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    public C2515m3(Spliterator spliterator, ConcurrentHashMap concurrentHashMap) {
        this.f1432a = spliterator;
        this.f1433b = concurrentHashMap;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        this.f1434c = obj;
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        while (this.f1432a.tryAdvance(this)) {
            Object obj = this.f1434c;
            if (obj == null) {
                obj = f1431d;
            }
            if (this.f1433b.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.m940v(this.f1434c);
                this.f1434c = null;
                return true;
            }
        }
        return false;
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        this.f1432a.forEachRemaining(new C2265s(7, this, consumer));
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f1432a.trySplit();
        if (spliteratorTrySplit != null) {
            return new C2515m3(spliteratorTrySplit, this.f1433b);
        }
        return null;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1432a.estimateSize();
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return (this.f1432a.characteristics() & (-16469)) | 1;
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f1432a.getComparator();
    }
}
