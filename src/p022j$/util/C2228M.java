package p022j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.M */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2228M implements InterfaceC2230O, InterfaceC2587y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PrimitiveIterator.OfLong f909a;

    public /* synthetic */ C2228M(PrimitiveIterator.OfLong ofLong) {
        this.f909a = ofLong;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfLong ofLong = this.f909a;
        if (obj instanceof C2228M) {
            obj = ((C2228M) obj).f909a;
        }
        return ofLong.equals(obj);
    }

    @Override // p022j$.util.InterfaceC2231P
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f909a.forEachRemaining(obj);
    }

    @Override // p022j$.util.InterfaceC2230O, java.util.Iterator, p022j$.util.InterfaceC2587y
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f909a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // p022j$.util.InterfaceC2230O
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f909a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f909a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f909a.hashCode();
    }

    @Override // p022j$.util.InterfaceC2230O, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.f909a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f909a.next();
    }

    @Override // p022j$.util.InterfaceC2230O
    public final /* synthetic */ long nextLong() {
        return this.f909a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f909a.remove();
    }
}
