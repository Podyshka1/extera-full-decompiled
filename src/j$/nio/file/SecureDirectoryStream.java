package j$.nio.file;

import j$.nio.file.attribute.FileAttributeView;
import java.nio.file.DirectoryStream;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface SecureDirectoryStream<T> extends DirectoryStream<T> {
    void deleteDirectory(T t);

    void deleteFile(T t);

    <V extends FileAttributeView> V getFileAttributeView(T t, Class<V> cls, LinkOption... linkOptionArr);

    SecureDirectoryStream<T> newDirectoryStream(T t, LinkOption... linkOptionArr);
}
