package j$.nio.file;

import java.nio.file.DirectoryStream;
import java.util.Iterator;

/* JADX INFO: renamed from: j$.nio.file.m */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2299m {

    /* JADX INFO: renamed from: a */
    public final Path f555a;

    /* JADX INFO: renamed from: b */
    public final Object f556b;

    /* JADX INFO: renamed from: c */
    public final DirectoryStream f557c;

    /* JADX INFO: renamed from: d */
    public final Iterator f558d;

    /* JADX INFO: renamed from: e */
    public boolean f559e;

    public C2299m(Path path, Object obj, DirectoryStream directoryStream) {
        this.f555a = path;
        this.f556b = obj;
        this.f557c = directoryStream;
        this.f558d = directoryStream.iterator();
    }
}
