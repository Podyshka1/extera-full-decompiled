package j$.desugar.sun.nio.fs;

import j$.nio.file.EnumC2121a;
import j$.nio.file.Path;
import j$.nio.file.attribute.BasicFileAttributeView;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileTime;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.b */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2103b implements BasicFileAttributeView {

    /* JADX INFO: renamed from: b */
    public static final Set f440b;

    /* JADX INFO: renamed from: a */
    public final Path f441a;

    static {
        String[] strArr = {"size", "creationTime", "lastAccessTime", "lastModifiedTime", "fileKey", "isDirectory", "isRegularFile", "isSymbolicLink", "isOther"};
        Charset charset = AbstractC2118q.f483a;
        HashSet hashSet = new HashSet();
        for (int i = 0; i < 9; i++) {
            hashSet.add(strArr[i]);
        }
        f440b = hashSet;
    }

    public C2103b(Path path) {
        this.f441a = path;
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    /* JADX INFO: renamed from: a */
    public final void mo502a(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) {
        long jConvert;
        if (fileTime == null && fileTime2 == null) {
            return;
        }
        Path path = this.f441a;
        path.getFileSystem().mo540g().mo546a(path, EnumC2121a.WRITE);
        File file = path.toFile();
        fileTime.getClass();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Objects.requireNonNull(timeUnit, "unit");
        if (timeUnit != null) {
            jConvert = fileTime.f498a;
        } else {
            jConvert = timeUnit.convert(fileTime.f499b.getEpochSecond(), TimeUnit.SECONDS);
            if (jConvert != Long.MIN_VALUE && jConvert != LongCompanionObject.MAX_VALUE) {
                long nano = ((long) fileTime.f499b.getNano()) / 1000000;
                long j = jConvert + nano;
                jConvert = ((nano ^ j) & (jConvert ^ j)) < 0 ? jConvert < 0 ? Long.MIN_VALUE : Long.MAX_VALUE : j;
            }
        }
        if (file.setLastModified(jConvert)) {
            return;
        }
        throw new IOException("File.setLastModified did not succeed on " + path);
    }

    @Override // j$.nio.file.attribute.InterfaceC2123b
    public final String name() {
        return "basic";
    }

    @Override // j$.nio.file.attribute.BasicFileAttributeView
    public final BasicFileAttributes readAttributes() {
        boolean z;
        Path path = this.f441a;
        path.getFileSystem().mo540g().mo546a(path, new EnumC2121a[0]);
        File file = path.toFile();
        long jLastModified = file.lastModified();
        Objects.requireNonNull(TimeUnit.MILLISECONDS, "unit");
        FileTime fileTime = new FileTime(jLastModified);
        boolean zIsFile = file.isFile();
        boolean zIsDirectory = file.isDirectory();
        try {
            File file2 = file.getParent() == null ? file : new File(file.getParentFile().getCanonicalFile(), file.getName());
            z = !file2.getCanonicalFile().equals(file2.getAbsoluteFile());
        } catch (IOException unused) {
            z = false;
        }
        return new C2104c(fileTime, fileTime, fileTime, zIsFile, zIsDirectory, z, (zIsFile || zIsDirectory || z) ? false : true, file.length(), Integer.valueOf(file.hashCode()));
    }
}
