package j$.adapter;

import android.os.StrictMode;
import j$.desugar.sun.nio.fs.AbstractC2105d;
import j$.nio.file.spi.AbstractC2169d;
import j$.nio.file.spi.C2167b;
import j$.nio.file.spi.C2168c;
import java.net.URI;
import java.nio.file.FileSystems;
import java.nio.file.spi.FileSystemProvider;

/* JADX INFO: renamed from: j$.adapter.b */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2101b {

    /* JADX INFO: renamed from: a */
    public static final AbstractC2169d f436a;

    static {
        AbstractC2169d c2167b;
        if (AbstractC2100a.f434a) {
            FileSystemProvider fileSystemProviderProvider = FileSystems.getDefault().provider();
            int i = C2167b.f577f;
            c2167b = fileSystemProviderProvider == null ? null : fileSystemProviderProvider instanceof C2168c ? ((C2168c) fileSystemProviderProvider).f580a : new C2167b(fileSystemProviderProvider);
        } else {
            if (AbstractC2100a.f435b) {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitDiskReads().build());
            }
            c2167b = AbstractC2105d.f451a;
        }
        f436a = c2167b;
        c2167b.mo555j(URI.create("file:///"));
    }
}
