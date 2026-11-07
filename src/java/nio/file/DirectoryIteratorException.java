package java.nio.file;

import java.io.IOException;
import java.util.ConcurrentModificationException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class DirectoryIteratorException extends ConcurrentModificationException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DirectoryIteratorException(IOException iOException) {
        super(iOException);
        Objects.requireNonNull(iOException);
    }

    @Override // java.lang.Throwable
    public IOException getCause() {
        return (IOException) super.getCause();
    }
}
