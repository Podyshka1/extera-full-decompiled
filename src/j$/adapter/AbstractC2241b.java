package j$.adapter;

import android.os.StrictMode;
import j$.desugar.sun.nio.fs.AbstractC2245d;
import j$.nio.file.spi.AbstractC2309d;
import j$.nio.file.spi.C2307b;
import j$.nio.file.spi.C2308c;
import java.net.URI;
import java.nio.file.FileSystems;
import java.nio.file.spi.FileSystemProvider;

/* JADX INFO: renamed from: j$.adapter.b */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2241b {

    /* JADX INFO: renamed from: a */
    public static final AbstractC2309d f437a;

    static {
        AbstractC2309d c2307b;
        if (AbstractC2240a.f435a) {
            FileSystemProvider fileSystemProviderProvider = FileSystems.getDefault().provider();
            int i = C2307b.f578f;
            c2307b = fileSystemProviderProvider == null ? null : fileSystemProviderProvider instanceof C2308c ? ((C2308c) fileSystemProviderProvider).f581a : new C2307b(fileSystemProviderProvider);
        } else {
            if (AbstractC2240a.f436b) {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitDiskReads().build());
            }
            c2307b = AbstractC2245d.f452a;
        }
        f437a = c2307b;
        c2307b.mo579j(URI.create("file:///"));
    }
}
