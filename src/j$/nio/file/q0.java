package j$.nio.file;

import java.io.Closeable;
import java.io.IOException;
import java.nio.file.WatchService;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class q0 implements Closeable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WatchService f574a;

    public /* synthetic */ q0(WatchService watchService) {
        this.f574a = watchService;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ q0 m653a(WatchService watchService) {
        if (watchService == null) {
            return null;
        }
        return new q0(watchService);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() throws IOException {
        this.f574a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        WatchService watchService = this.f574a;
        if (obj instanceof q0) {
            obj = ((q0) obj).f574a;
        }
        return watchService.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f574a.hashCode();
    }
}
