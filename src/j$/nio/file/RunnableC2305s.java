package j$.nio.file;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.DirectoryStream;
import java.util.Set;

/* JADX INFO: renamed from: j$.nio.file.s */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class RunnableC2305s implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f576a = 1;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f577b;

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f576a) {
            case 0:
                DirectoryStream directoryStream = (DirectoryStream) this.f577b;
                Set set = Files.f492a;
                try {
                    directoryStream.close();
                    return;
                } catch (IOException e) {
                    throw new UncheckedIOException(e);
                }
            default:
                ((C2297k) this.f577b).close();
                return;
        }
    }
}
