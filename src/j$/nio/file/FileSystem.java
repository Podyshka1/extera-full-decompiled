package j$.nio.file;

import j$.nio.file.attribute.C2146y;
import j$.nio.file.spi.AbstractC2169d;
import java.io.Closeable;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class FileSystem implements Closeable {
    /* JADX INFO: renamed from: a */
    public abstract Iterable mo534a();

    /* JADX INFO: renamed from: b */
    public abstract g0 mo535b(String str);

    /* JADX INFO: renamed from: c */
    public abstract Iterable mo536c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    /* JADX INFO: renamed from: d */
    public abstract C2146y mo537d();

    /* JADX INFO: renamed from: e */
    public abstract boolean mo538e();

    /* JADX INFO: renamed from: f */
    public abstract q0 mo539f();

    /* JADX INFO: renamed from: g */
    public abstract AbstractC2169d mo540g();

    public abstract Path getPath(String str, String... strArr);

    public abstract String getSeparator();

    /* JADX INFO: renamed from: h */
    public abstract Set mo541h();

    public abstract boolean isOpen();
}
