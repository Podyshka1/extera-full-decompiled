package j$.desugar.sun.nio.fs;

import java.io.IOException;
import java.nio.channels.FileLock;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.f */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2107f extends FileLock {

    /* JADX INFO: renamed from: a */
    public final FileLock f457a;

    public C2107f(FileLock fileLock, C2106e c2106e) {
        super(c2106e, fileLock.position(), fileLock.size(), fileLock.isShared());
        this.f457a = fileLock;
    }

    @Override // java.nio.channels.FileLock
    public final boolean isValid() {
        return this.f457a.isValid();
    }

    @Override // java.nio.channels.FileLock
    public final void release() throws IOException {
        this.f457a.release();
    }
}
