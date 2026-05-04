package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import j$.util.concurrent.C2123s;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.m3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6231m3 implements Spliterator, Consumer {

    /* JADX INFO: renamed from: d */
    public static final Object f1195d = new Object();

    /* JADX INFO: renamed from: a */
    public final Spliterator f1196a;

    /* JADX INFO: renamed from: b */
    public final ConcurrentHashMap f1197b;

    /* JADX INFO: renamed from: c */
    public Object f1198c;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    public C6231m3(Spliterator spliterator, ConcurrentHashMap concurrentHashMap) {
        this.f1196a = spliterator;
        this.f1197b = concurrentHashMap;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        this.f1198c = obj;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        while (this.f1196a.tryAdvance(this)) {
            Object obj = this.f1198c;
            if (obj == null) {
                obj = f1195d;
            }
            if (this.f1197b.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.m800v(this.f1198c);
                this.f1198c = null;
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        this.f1196a.forEachRemaining(new C2123s(7, this, consumer));
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f1196a.trySplit();
        if (spliteratorTrySplit != null) {
            return new C6231m3(spliteratorTrySplit, this.f1197b);
        }
        return null;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f1196a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return (this.f1196a.characteristics() & (-16469)) | 1;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f1196a.getComparator();
    }
}
