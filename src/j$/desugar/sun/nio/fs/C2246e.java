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
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2246e extends FileChannel implements SeekableByteChannel {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f453e = 0;

    /* JADX INFO: renamed from: a */
    public final FileChannel f454a;

    /* JADX INFO: renamed from: b */
    public final boolean f455b;

    /* JADX INFO: renamed from: c */
    public final boolean f456c;

    /* JADX INFO: renamed from: d */
    public final Path f457d;

    public C2246e(FileChannel fileChannel, boolean z, boolean z2, Path path) {
        this.f454a = fileChannel;
        this.f455b = z;
        this.f456c = z2;
        this.f457d = z ? path : null;
    }

    @Override // java.nio.channels.FileChannel
    public final void force(boolean z) throws IOException {
        this.f454a.force(z);
    }

    @Override // java.nio.channels.spi.AbstractInterruptibleChannel
    public final void implCloseChannel() {
        this.f454a.close();
        if (this.f455b) {
            this.f457d.toFile().delete();
        }
    }

    @Override // java.nio.channels.FileChannel
    public final FileLock lock(long j, long j2, boolean z) throws IOException {
        FileLock fileLockLock = this.f454a.lock(j, j2, z);
        if (fileLockLock == null) {
            return null;
        }
        return new C2247f(fileLockLock, this);
    }

    @Override // java.nio.channels.FileChannel
    public final MappedByteBuffer map(FileChannel.MapMode mapMode, long j, long j2) {
        return this.f454a.map(mapMode, j, j2);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public final FileChannel position(long j) throws IOException {
        FileChannel fileChannelPosition = this.f454a.position(j);
        return fileChannelPosition instanceof C2246e ? (C2246e) fileChannelPosition : new C2246e(fileChannelPosition, false, false, null);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        return this.f454a.read(byteBuffer);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public final long size() {
        return this.f454a.size();
    }

    @Override // java.nio.channels.FileChannel
    public final long transferFrom(ReadableByteChannel readableByteChannel, long j, long j2) {
        return this.f454a.transferFrom(readableByteChannel, j, j2);
    }

    @Override // java.nio.channels.FileChannel
    public final long transferTo(long j, long j2, WritableByteChannel writableByteChannel) {
        return this.f454a.transferTo(j, j2, writableByteChannel);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public final FileChannel truncate(long j) throws IOException {
        FileChannel fileChannelTruncate = this.f454a.truncate(j);
        return fileChannelTruncate instanceof C2246e ? (C2246e) fileChannelTruncate : new C2246e(fileChannelTruncate, false, false, null);
    }

    @Override // java.nio.channels.FileChannel
    public final FileLock tryLock(long j, long j2, boolean z) throws IOException {
        FileLock fileLockTryLock = this.f454a.tryLock(j, j2, z);
        if (fileLockTryLock == null) {
            return null;
        }
        return new C2247f(fileLockTryLock, this);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        boolean z = this.f456c;
        FileChannel fileChannel = this.f454a;
        return z ? fileChannel.write(byteBuffer, fileChannel.size()) : fileChannel.write(byteBuffer);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.ScatteringByteChannel
    public final long read(ByteBuffer[] byteBufferArr, int i, int i2) {
        return this.f454a.read(byteBufferArr, i, i2);
    }

    @Override // java.nio.channels.FileChannel
    public final int read(ByteBuffer byteBuffer, long j) {
        return this.f454a.read(byteBuffer, j);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.GatheringByteChannel
    public final long write(ByteBuffer[] byteBufferArr, int i, int i2) {
        return this.f454a.write(byteBufferArr, i, i2);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public final long position() {
        return this.f454a.position();
    }

    @Override // java.nio.channels.FileChannel
    public final int write(ByteBuffer byteBuffer, long j) {
        return this.f454a.write(byteBuffer, j);
    }
}
