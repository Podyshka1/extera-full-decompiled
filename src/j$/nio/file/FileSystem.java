package j$.nio.file;

import j$.nio.file.attribute.C2286y;
import j$.nio.file.spi.AbstractC2309d;
import java.io.Closeable;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class FileSystem implements Closeable {
    /* JADX INFO: renamed from: a */
    public abstract Iterable mo558a();

    /* JADX INFO: renamed from: b */
    public abstract g0 mo559b(String str);

    /* JADX INFO: renamed from: c */
    public abstract Iterable mo560c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    /* JADX INFO: renamed from: d */
    public abstract C2286y mo561d();

    /* JADX INFO: renamed from: e */
    public abstract boolean mo562e();

    /* JADX INFO: renamed from: f */
    public abstract q0 mo563f();

    /* JADX INFO: renamed from: g */
    public abstract AbstractC2309d mo564g();

    public abstract Path getPath(String str, String... strArr);

    public abstract String getSeparator();

    /* JADX INFO: renamed from: h */
    public abstract Set mo565h();

    public abstract boolean isOpen();
}
