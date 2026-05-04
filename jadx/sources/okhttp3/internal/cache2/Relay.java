package okhttp3.internal.cache2;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.concurrent.Lockable;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class Relay implements Lockable {
    public static final Companion Companion = new Companion(null);
    private static final long FILE_HEADER_SIZE = 32;
    public static final ByteString PREFIX_CLEAN;
    public static final ByteString PREFIX_DIRTY;
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    private final Buffer buffer;
    private final long bufferMaxSize;
    private boolean complete;
    private RandomAccessFile file;
    private final ByteString metadata;
    private int sourceCount;
    private Source upstream;
    private final Buffer upstreamBuffer;
    private long upstreamPos;
    private Thread upstreamReader;

    public /* synthetic */ Relay(RandomAccessFile randomAccessFile, Source source, long j, ByteString byteString, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(randomAccessFile, source, j, byteString, j2);
    }

    private Relay(RandomAccessFile randomAccessFile, Source source, long j, ByteString byteString, long j2) {
        this.file = randomAccessFile;
        this.upstream = source;
        this.upstreamPos = j;
        this.metadata = byteString;
        this.bufferMaxSize = j2;
        this.upstreamBuffer = new Buffer();
        this.complete = this.upstream == null;
        this.buffer = new Buffer();
    }

    public final RandomAccessFile getFile() {
        return this.file;
    }

    public final void setFile(RandomAccessFile randomAccessFile) {
        this.file = randomAccessFile;
    }

    public final Source getUpstream() {
        return this.upstream;
    }

    public final void setUpstream(Source source) {
        this.upstream = source;
    }

    public final long getUpstreamPos() {
        return this.upstreamPos;
    }

    public final void setUpstreamPos(long j) {
        this.upstreamPos = j;
    }

    public final long getBufferMaxSize() {
        return this.bufferMaxSize;
    }

    public final Thread getUpstreamReader() {
        return this.upstreamReader;
    }

    public final void setUpstreamReader(Thread thread) {
        this.upstreamReader = thread;
    }

    public final Buffer getUpstreamBuffer() {
        return this.upstreamBuffer;
    }

    public final boolean getComplete() {
        return this.complete;
    }

    public final void setComplete(boolean z) {
        this.complete = z;
    }

    public final Buffer getBuffer() {
        return this.buffer;
    }

    public final int getSourceCount() {
        return this.sourceCount;
    }

    public final void setSourceCount(int i) {
        this.sourceCount = i;
    }

    public final boolean isClosed() {
        return this.file == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeHeader(ByteString byteString, long j, long j2) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(byteString);
        buffer.writeLong(j);
        buffer.writeLong(j2);
        if (buffer.size() != FILE_HEADER_SIZE) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        RandomAccessFile randomAccessFile = this.file;
        Intrinsics.checkNotNull(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        Intrinsics.checkNotNullExpressionValue(channel, "getChannel(...)");
        new FileOperator(channel).write(0L, buffer, FILE_HEADER_SIZE);
    }

    private final void writeMetadata(long j) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(this.metadata);
        RandomAccessFile randomAccessFile = this.file;
        Intrinsics.checkNotNull(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        Intrinsics.checkNotNullExpressionValue(channel, "getChannel(...)");
        new FileOperator(channel).write(FILE_HEADER_SIZE + j, buffer, this.metadata.size());
    }

    public final void commit(long j) throws IOException {
        writeMetadata(j);
        RandomAccessFile randomAccessFile = this.file;
        Intrinsics.checkNotNull(randomAccessFile);
        randomAccessFile.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j, this.metadata.size());
        RandomAccessFile randomAccessFile2 = this.file;
        Intrinsics.checkNotNull(randomAccessFile2);
        randomAccessFile2.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
            Unit unit = Unit.INSTANCE;
        }
        Source source = this.upstream;
        if (source != null) {
            _UtilCommonKt.closeQuietly(source);
        }
        this.upstream = null;
    }

    public final ByteString metadata() {
        return this.metadata;
    }

    public final Source newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }

    public final class RelaySource implements Source {
        private FileOperator fileOperator;
        private long sourcePos;
        private final Timeout timeout = new Timeout();

        public RelaySource() {
            RandomAccessFile file = Relay.this.getFile();
            Intrinsics.checkNotNull(file);
            FileChannel channel = file.getChannel();
            Intrinsics.checkNotNullExpressionValue(channel, "getChannel(...)");
            this.fileOperator = new FileOperator(channel);
        }

        @Override // okio.Source
        public long read(Buffer sink, long j) throws IOException {
            char c;
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (this.fileOperator == null) {
                throw new IllegalStateException("Check failed.");
            }
            Relay relay = Relay.this;
            synchronized (relay) {
                while (true) {
                    try {
                        if (this.sourcePos != relay.getUpstreamPos()) {
                            long upstreamPos = relay.getUpstreamPos() - relay.getBuffer().size();
                            if (this.sourcePos >= upstreamPos) {
                                long jMin = Math.min(j, relay.getUpstreamPos() - this.sourcePos);
                                relay.getBuffer().copyTo(sink, this.sourcePos - upstreamPos, jMin);
                                this.sourcePos += jMin;
                                return jMin;
                            }
                            c = 2;
                        } else if (!relay.getComplete()) {
                            if (relay.getUpstreamReader() == null) {
                                relay.setUpstreamReader(Thread.currentThread());
                                c = 1;
                                break;
                            }
                            this.timeout.waitUntilNotified(relay);
                        } else {
                            return -1L;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (c == 2) {
                    long jMin2 = Math.min(j, Relay.this.getUpstreamPos() - this.sourcePos);
                    FileOperator fileOperator = this.fileOperator;
                    Intrinsics.checkNotNull(fileOperator);
                    fileOperator.read(this.sourcePos + Relay.FILE_HEADER_SIZE, sink, jMin2);
                    this.sourcePos += jMin2;
                    return jMin2;
                }
                try {
                    Source upstream = Relay.this.getUpstream();
                    Intrinsics.checkNotNull(upstream);
                    long j2 = upstream.read(Relay.this.getUpstreamBuffer(), Relay.this.getBufferMaxSize());
                    if (j2 == -1) {
                        Relay relay2 = Relay.this;
                        relay2.commit(relay2.getUpstreamPos());
                        Relay relay3 = Relay.this;
                        synchronized (relay3) {
                            relay3.setUpstreamReader(null);
                            Intrinsics.checkNotNull(relay3, "null cannot be cast to non-null type java.lang.Object");
                            relay3.notifyAll();
                            Unit unit = Unit.INSTANCE;
                        }
                        return -1L;
                    }
                    long jMin3 = Math.min(j2, j);
                    Relay.this.getUpstreamBuffer().copyTo(sink, 0L, jMin3);
                    this.sourcePos += jMin3;
                    FileOperator fileOperator2 = this.fileOperator;
                    Intrinsics.checkNotNull(fileOperator2);
                    fileOperator2.write(Relay.this.getUpstreamPos() + Relay.FILE_HEADER_SIZE, Relay.this.getUpstreamBuffer().clone(), j2);
                    Relay relay4 = Relay.this;
                    synchronized (relay4) {
                        try {
                            relay4.getBuffer().write(relay4.getUpstreamBuffer(), j2);
                            if (relay4.getBuffer().size() > relay4.getBufferMaxSize()) {
                                relay4.getBuffer().skip(relay4.getBuffer().size() - relay4.getBufferMaxSize());
                            }
                            relay4.setUpstreamPos(relay4.getUpstreamPos() + j2);
                            Unit unit2 = Unit.INSTANCE;
                        } finally {
                        }
                    }
                    Relay relay5 = Relay.this;
                    synchronized (relay5) {
                        relay5.setUpstreamReader(null);
                        Intrinsics.checkNotNull(relay5, "null cannot be cast to non-null type java.lang.Object");
                        relay5.notifyAll();
                    }
                    return jMin3;
                } catch (Throwable th2) {
                    Relay relay6 = Relay.this;
                    synchronized (relay6) {
                        relay6.setUpstreamReader(null);
                        Intrinsics.checkNotNull(relay6, "null cannot be cast to non-null type java.lang.Object");
                        relay6.notifyAll();
                        Unit unit3 = Unit.INSTANCE;
                        throw th2;
                    }
                }
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            Relay relay = Relay.this;
            synchronized (relay) {
                try {
                    relay.setSourceCount(relay.getSourceCount() - 1);
                    if (relay.getSourceCount() == 0) {
                        RandomAccessFile file = relay.getFile();
                        relay.setFile(null);
                        randomAccessFile = file;
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (randomAccessFile != null) {
                _UtilCommonKt.closeQuietly(randomAccessFile);
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Relay edit(File file, Source upstream, ByteString metadata, long j) throws IOException {
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(upstream, "upstream");
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            Relay relay = new Relay(randomAccessFile, upstream, 0L, metadata, j, null);
            randomAccessFile.setLength(0L);
            relay.writeHeader(Relay.PREFIX_DIRTY, -1L, -1L);
            return relay;
        }

        public final Relay read(File file) throws IOException {
            Intrinsics.checkNotNullParameter(file, "file");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            FileChannel channel = randomAccessFile.getChannel();
            Intrinsics.checkNotNullExpressionValue(channel, "getChannel(...)");
            FileOperator fileOperator = new FileOperator(channel);
            Buffer buffer = new Buffer();
            fileOperator.read(0L, buffer, Relay.FILE_HEADER_SIZE);
            if (!Intrinsics.areEqual(buffer.readByteString(r11.size()), Relay.PREFIX_CLEAN)) {
                throw new IOException("unreadable cache file");
            }
            long j = buffer.readLong();
            long j2 = buffer.readLong();
            Buffer buffer2 = new Buffer();
            fileOperator.read(Relay.FILE_HEADER_SIZE + j, buffer2, j2);
            return new Relay(randomAccessFile, null, j, buffer2.readByteString(), 0L, null);
        }
    }

    static {
        ByteString.Companion companion = ByteString.Companion;
        PREFIX_CLEAN = companion.encodeUtf8("OkHttp cache v1\n");
        PREFIX_DIRTY = companion.encodeUtf8("OkHttp DIRTY :(\n");
    }
}
