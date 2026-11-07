package j$.nio.file;

import j$.nio.file.attribute.BasicFileAttributes;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class SimpleFileVisitor<T> implements FileVisitor<T> {
    @Override // j$.nio.file.FileVisitor
    public FileVisitResult postVisitDirectory(T t, IOException iOException) throws IOException {
        Objects.requireNonNull(t);
        if (iOException == null) {
            return FileVisitResult.CONTINUE;
        }
        throw iOException;
    }

    @Override // j$.nio.file.FileVisitor
    public FileVisitResult preVisitDirectory(T t, BasicFileAttributes basicFileAttributes) {
        Objects.requireNonNull(t);
        Objects.requireNonNull(basicFileAttributes);
        return FileVisitResult.CONTINUE;
    }

    @Override // j$.nio.file.FileVisitor
    public FileVisitResult visitFile(T t, BasicFileAttributes basicFileAttributes) {
        Objects.requireNonNull(t);
        Objects.requireNonNull(basicFileAttributes);
        return FileVisitResult.CONTINUE;
    }

    @Override // j$.nio.file.FileVisitor
    public FileVisitResult visitFileFailed(T t, IOException iOException) throws IOException {
        Objects.requireNonNull(t);
        throw iOException;
    }
}
