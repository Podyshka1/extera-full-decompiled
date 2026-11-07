package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.util.Iterator;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.l */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2253l implements Iterator {

    /* JADX INFO: renamed from: a */
    public final DirectoryStream.Filter f466a;

    /* JADX INFO: renamed from: b */
    public final File[] f467b;

    /* JADX INFO: renamed from: c */
    public int f468c = 0;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2254m f469d;

    public C2253l(C2254m c2254m, Path path, DirectoryStream.Filter filter) {
        this.f469d = c2254m;
        File[] fileArrListFiles = path.toFile().listFiles();
        this.f467b = fileArrListFiles == null ? new File[0] : fileArrListFiles;
        this.f466a = filter;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2256o next() {
        C2256o c2256o;
        do {
            int i = this.f468c;
            File[] fileArr = this.f467b;
            if (i >= fileArr.length) {
                return null;
            }
            this.f468c = i + 1;
            File file = fileArr[i];
            C2250i c2250i = this.f469d.f472g;
            String path = file.getPath();
            C2254m c2254m = this.f469d;
            c2256o = new C2256o(c2250i, path, c2254m.f470e, c2254m.f471f);
            try {
            } catch (IOException e) {
                throw new DirectoryIteratorException(e);
            }
        } while (!this.f466a.accept(c2256o));
        return c2256o;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (next() == null) {
            return false;
        }
        this.f468c--;
        return true;
    }
}
