package j$.desugar.sun.nio.fs;

import java.io.IOException;
import java.nio.channels.FileLock;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.f */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2247f extends FileLock {

    /* JADX INFO: renamed from: a */
    public final FileLock f458a;

    public C2247f(FileLock fileLock, C2246e c2246e) {
        super(c2246e, fileLock.position(), fileLock.size(), fileLock.isShared());
        this.f458a = fileLock;
    }

    @Override // java.nio.channels.FileLock
    public final boolean isValid() {
        return this.f458a.isValid();
    }

    @Override // java.nio.channels.FileLock
    public final void release() throws IOException {
        this.f458a.release();
    }
}
