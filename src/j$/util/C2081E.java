package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.E */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2081E implements InterfaceC2083G, InterfaceC2209y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PrimitiveIterator.OfDouble f666a;

    public /* synthetic */ C2081E(PrimitiveIterator.OfDouble ofDouble) {
        this.f666a = ofDouble;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfDouble ofDouble = this.f666a;
        if (obj instanceof C2081E) {
            obj = ((C2081E) obj).f666a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.InterfaceC2092P
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f666a.forEachRemaining(obj);
    }

    @Override // j$.util.InterfaceC2083G, java.util.Iterator, j$.util.InterfaceC2209y
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f666a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.InterfaceC2083G
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f666a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f666a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f666a.hashCode();
    }

    @Override // j$.util.InterfaceC2083G, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f666a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f666a.next();
    }

    @Override // j$.util.InterfaceC2083G
    public final /* synthetic */ double nextDouble() {
        return this.f666a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f666a.remove();
    }
}
