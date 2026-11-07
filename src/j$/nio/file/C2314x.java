package j$.nio.file;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: j$.nio.file.x */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2314x implements Iterator {

    /* JADX INFO: renamed from: a */
    public int f589a = 0;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Path f590b;

    public C2314x(Path path) {
        this.f590b = path;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f589a < this.f590b.getNameCount();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f589a >= this.f590b.getNameCount()) {
            throw new NoSuchElementException();
        }
        Path name = this.f590b.getName(this.f589a);
        this.f589a++;
        return name;
    }
}
