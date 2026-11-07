package j$.nio.file;

import j$.nio.file.attribute.BasicFileAttributes;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface FileVisitor<T> {
    FileVisitResult postVisitDirectory(Object obj, IOException iOException);

    FileVisitResult preVisitDirectory(Object obj, BasicFileAttributes basicFileAttributes);

    FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes);

    FileVisitResult visitFileFailed(Object obj, IOException iOException);
}
