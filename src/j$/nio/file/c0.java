package j$.nio.file;

import java.util.Iterator;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class c0 implements Iterable {

    /* JADX INFO: renamed from: a */
    public final Iterable f529a;

    public c0(Iterable iterable) {
        this.f529a = iterable;
    }

    @Override // java.lang.Iterable
    public final void forEach(Consumer consumer) {
        this.f529a.forEach(new a0(consumer, 1));
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new d0(this.f529a.iterator());
    }
}
