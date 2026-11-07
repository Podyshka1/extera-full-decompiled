package org.simplifiles.files;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import j$.nio.file.Path;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0015R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015¨\u0006\u0018"}, d2 = {"Lorg/simplifiles/files/BoundedInputStream;", "Ljava/io/InputStream;", "delegate", _UrlKt.FRAGMENT_ENCODE_SET, "maxBytes", "j$/nio/file/Path", "path", "<init>", "(Ljava/io/InputStream;JLj$/nio/file/Path;)V", _UrlKt.FRAGMENT_ENCODE_SET, "read", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "buffer", "offset", "length", "([BII)I", _UrlKt.FRAGMENT_ENCODE_SET, "close", "()V", "Ljava/io/InputStream;", "J", "Lj$/nio/file/Path;", "readBytes", "simplifiles"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
final class BoundedInputStream extends InputStream implements InputStreamRetargetInterface {
    private final InputStream delegate;
    private final long maxBytes;
    private final Path path;
    private long readBytes;

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    public BoundedInputStream(InputStream inputStream, long j, Path path) {
        this.delegate = inputStream;
        this.maxBytes = j;
        this.path = path;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        long j = this.readBytes;
        long j2 = this.maxBytes;
        InputStream inputStream = this.delegate;
        if (j == j2) {
            if (inputStream.read() < 0) {
                return -1;
            }
            SimpliFile$$ExternalSyntheticBUOutline1.m983m("File exceeds read limit of ", this.maxBytes, this.path);
            return 0;
        }
        int i = inputStream.read();
        if (i >= 0) {
            this.readBytes++;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer, int offset, int length) throws IOException {
        if (length == 0) {
            return 0;
        }
        long j = this.readBytes;
        long j2 = this.maxBytes;
        if (j == j2) {
            if (this.delegate.read() < 0) {
                return -1;
            }
            SimpliFile$$ExternalSyntheticBUOutline1.m983m("File exceeds read limit of ", this.maxBytes, this.path);
            return 0;
        }
        int i = this.delegate.read(buffer, offset, (int) Math.min(length, j2 - j));
        if (i > 0) {
            this.readBytes += (long) i;
        }
        return i;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }
}
