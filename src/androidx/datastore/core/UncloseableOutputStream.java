package androidx.datastore.core;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class UncloseableOutputStream extends OutputStream {
    private final FileOutputStream fileOutputStream;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public UncloseableOutputStream(FileOutputStream fileOutputStream) {
        Intrinsics.checkNotNullParameter(fileOutputStream, "fileOutputStream");
        this.fileOutputStream = fileOutputStream;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.fileOutputStream.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] b) throws IOException {
        Intrinsics.checkNotNullParameter(b, "b");
        this.fileOutputStream.write(b);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bytes, int i, int i2) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.fileOutputStream.write(bytes, i, i2);
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.fileOutputStream.flush();
    }
}
