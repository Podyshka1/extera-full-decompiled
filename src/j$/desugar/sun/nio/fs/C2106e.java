package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.e */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2106e extends FileChannel implements SeekableByteChannel {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f452e = 0;

    /* JADX INFO: renamed from: a */
    public final FileChannel f453a;

    /* JADX INFO: renamed from: b */
    public final boolean f454b;

    /* JADX INFO: renamed from: c */
    public final boolean f455c;

    /* JADX INFO: renamed from: d */
    public final Path f456d;

    public C2106e(FileChannel fileChannel, boolean z, boolean z2, Path path) {
        this.f453a = fileChannel;
        this.f454b = z;
        this.f455c = z2;
        this.f456d = z ? path : null;
    }

    @Override // java.nio.channels.FileChannel
    public final void force(boolean z) throws IOException {
        this.f453a.force(z);
    }

    @Override // java.nio.channels.spi.AbstractInterruptibleChannel
    public final void implCloseChannel() {
        this.f453a.close();
        if (this.f454b) {
            this.f456d.toFile().delete();
        }
    }

    @Override // java.nio.channels.FileChannel
    public final FileLock lock(long j, long j2, boolean z) throws IOException {
        FileLock fileLockLock = this.f453a.lock(j, j2, z);
        if (fileLockLock == null) {
            return null;
        }
        return new C2107f(fileLockLock, this);
    }

    @Override // java.nio.channels.FileChannel
    public final MappedByteBuffer map(FileChannel.MapMode mapMode, long j, long j2) {
        return this.f453a.map(mapMode, j, j2);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public final FileChannel position(long j) throws IOException {
        FileChannel fileChannelPosition = this.f453a.position(j);
        return fileChannelPosition instanceof C2106e ? (C2106e) fileChannelPosition : new C2106e(fileChannelPosition, false, false, null);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        return this.f453a.read(byteBuffer);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public final long size() {
        return this.f453a.size();
    }

    @Override // java.nio.channels.FileChannel
    public final long transferFrom(ReadableByteChannel readableByteChannel, long j, long j2) {
        return this.f453a.transferFrom(readableByteChannel, j, j2);
    }

    @Override // java.nio.channels.FileChannel
    public final long transferTo(long j, long j2, WritableByteChannel writableByteChannel) {
        return this.f453a.transferTo(j, j2, writableByteChannel);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public final FileChannel truncate(long j) throws IOException {
        FileChannel fileChannelTruncate = this.f453a.truncate(j);
        return fileChannelTruncate instanceof C2106e ? (C2106e) fileChannelTruncate : new C2106e(fileChannelTruncate, false, false, null);
    }

    @Override // java.nio.channels.FileChannel
    public final FileLock tryLock(long j, long j2, boolean z) throws IOException {
        FileLock fileLockTryLock = this.f453a.tryLock(j, j2, z);
        if (fileLockTryLock == null) {
            return null;
        }
        return new C2107f(fileLockTryLock, this);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        boolean z = this.f455c;
        FileChannel fileChannel = this.f453a;
        return z ? fileChannel.write(byteBuffer, fileChannel.size()) : fileChannel.write(byteBuffer);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.ScatteringByteChannel
    public final long read(ByteBuffer[] byteBufferArr, int i, int i2) {
        return this.f453a.read(byteBufferArr, i, i2);
    }

    @Override // java.nio.channels.FileChannel
    public final int read(ByteBuffer byteBuffer, long j) {
        return this.f453a.read(byteBuffer, j);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.GatheringByteChannel
    public final long write(ByteBuffer[] byteBufferArr, int i, int i2) {
        return this.f453a.write(byteBufferArr, i, i2);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public final long position() {
        return this.f453a.position();
    }

    @Override // java.nio.channels.FileChannel
    public final int write(ByteBuffer byteBuffer, long j) {
        return this.f453a.write(byteBuffer, j);
    }
}
