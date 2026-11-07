package j$.nio.file;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.DirectoryStream;
import java.util.Set;

/* JADX INFO: renamed from: j$.nio.file.s */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class RunnableC2165s implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f575a = 1;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f576b;

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f575a) {
            case 0:
                DirectoryStream directoryStream = (DirectoryStream) this.f576b;
                Set set = Files.f491a;
                try {
                    directoryStream.close();
                    return;
                } catch (IOException e) {
                    throw new UncheckedIOException(e);
                }
            default:
                ((C2157k) this.f576b).close();
                return;
        }
    }
}
