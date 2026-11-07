package j$.nio.file;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.util.Iterator;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class b0 implements DirectoryStream {

    /* JADX INFO: renamed from: a */
    public final DirectoryStream f527a;

    public b0(DirectoryStream directoryStream) {
        this.f527a = directoryStream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f527a.close();
    }

    @Override // java.lang.Iterable
    public final void forEach(Consumer consumer) {
        this.f527a.forEach(new a0(consumer, 0));
    }

    @Override // java.nio.file.DirectoryStream, java.lang.Iterable
    public final Iterator iterator() {
        return new d0(this.f527a.iterator());
    }
}
