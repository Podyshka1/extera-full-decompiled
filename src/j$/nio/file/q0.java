package j$.nio.file;

import java.io.Closeable;
import java.io.IOException;
import java.nio.file.WatchService;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class q0 implements Closeable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WatchService f573a;

    public /* synthetic */ q0(WatchService watchService) {
        this.f573a = watchService;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ q0 m629a(WatchService watchService) {
        if (watchService == null) {
            return null;
        }
        return new q0(watchService);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() throws IOException {
        this.f573a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        WatchService watchService = this.f573a;
        if (obj instanceof q0) {
            obj = ((q0) obj).f573a;
        }
        return watchService.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f573a.hashCode();
    }
}
