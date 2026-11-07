package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.util.Iterator;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.l */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2113l implements Iterator {

    /* JADX INFO: renamed from: a */
    public final DirectoryStream.Filter f465a;

    /* JADX INFO: renamed from: b */
    public final File[] f466b;

    /* JADX INFO: renamed from: c */
    public int f467c = 0;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2114m f468d;

    public C2113l(C2114m c2114m, Path path, DirectoryStream.Filter filter) {
        this.f468d = c2114m;
        File[] fileArrListFiles = path.toFile().listFiles();
        this.f466b = fileArrListFiles == null ? new File[0] : fileArrListFiles;
        this.f465a = filter;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2116o next() {
        C2116o c2116o;
        do {
            int i = this.f467c;
            File[] fileArr = this.f466b;
            if (i >= fileArr.length) {
                return null;
            }
            this.f467c = i + 1;
            File file = fileArr[i];
            C2110i c2110i = this.f468d.f471g;
            String path = file.getPath();
            C2114m c2114m = this.f468d;
            c2116o = new C2116o(c2110i, path, c2114m.f469e, c2114m.f470f);
            try {
            } catch (IOException e) {
                throw new DirectoryIteratorException(e);
            }
        } while (!this.f465a.accept(c2116o));
        return c2116o;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (next() == null) {
            return false;
        }
        this.f467c--;
        return true;
    }
}
