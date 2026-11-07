package j$.nio.file;

import java.nio.file.DirectoryStream;
import java.util.Iterator;

/* JADX INFO: renamed from: j$.nio.file.m */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2159m {

    /* JADX INFO: renamed from: a */
    public final Path f554a;

    /* JADX INFO: renamed from: b */
    public final Object f555b;

    /* JADX INFO: renamed from: c */
    public final DirectoryStream f556c;

    /* JADX INFO: renamed from: d */
    public final Iterator f557d;

    /* JADX INFO: renamed from: e */
    public boolean f558e;

    public C2159m(Path path, Object obj, DirectoryStream directoryStream) {
        this.f554a = path;
        this.f555b = obj;
        this.f556c = directoryStream;
        this.f557d = directoryStream.iterator();
    }
}
