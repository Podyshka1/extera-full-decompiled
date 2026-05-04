package p022j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.E */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2220E implements InterfaceC2222G, InterfaceC2587y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PrimitiveIterator.OfDouble f901a;

    public /* synthetic */ C2220E(PrimitiveIterator.OfDouble ofDouble) {
        this.f901a = ofDouble;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfDouble ofDouble = this.f901a;
        if (obj instanceof C2220E) {
            obj = ((C2220E) obj).f901a;
        }
        return ofDouble.equals(obj);
    }

    @Override // p022j$.util.InterfaceC2231P
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f901a.forEachRemaining(obj);
    }

    @Override // p022j$.util.InterfaceC2222G, java.util.Iterator, p022j$.util.InterfaceC2587y
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f901a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // p022j$.util.InterfaceC2222G
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f901a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f901a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f901a.hashCode();
    }

    @Override // p022j$.util.InterfaceC2222G, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f901a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f901a.next();
    }

    @Override // p022j$.util.InterfaceC2222G
    public final /* synthetic */ double nextDouble() {
        return this.f901a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f901a.remove();
    }
}
