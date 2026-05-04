package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes.dex */
public final class Http2Writer implements Closeable, Lockable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final Buffer hpackBuffer;
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    private final BufferedSink sink;

    public Http2Writer(BufferedSink sink, boolean z) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.sink = sink;
        this.client = z;
        Buffer buffer = new Buffer();
        this.hpackBuffer = buffer;
        this.maxFrameSize = 16384;
        this.hpackWriter = new Hpack.Writer(0, false, buffer, 3, null);
    }

    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final void applyAndAckSettings(Settings peerSettings) {
        Intrinsics.checkNotNullParameter(peerSettings, "peerSettings");
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                this.maxFrameSize = peerSettings.getMaxFrameSize(this.maxFrameSize);
                if (peerSettings.getHeaderTableSize() != -1) {
                    this.hpackWriter.resizeHeaderTable(peerSettings.getHeaderTableSize());
                }
                frameHeader(0, 0, 4, 1);
                this.sink.flush();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.closed = true;
            this.sink.close();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void connectionPreface() {
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                if (this.client) {
                    Logger logger2 = logger;
                    if (logger2.isLoggable(Level.FINE)) {
                        logger2.fine(_UtilJvmKt.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.hex(), new Object[0]));
                    }
                    this.sink.write(Http2.CONNECTION_PREFACE);
                    this.sink.flush();
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void data(boolean z, int i, Buffer buffer, int i2) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            dataFrame(i, z ? 1 : 0, buffer, i2);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void flush() {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.sink.flush();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void goAway(int i, ErrorCode errorCode, byte[] debugData) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(debugData, "debugData");
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                if (errorCode.getHttpCode() == -1) {
                    throw new IllegalArgumentException("errorCode.httpCode == -1");
                }
                frameHeader(0, debugData.length + 8, 7, 0);
                this.sink.writeInt(i);
                this.sink.writeInt(errorCode.getHttpCode());
                if (!(debugData.length == 0)) {
                    this.sink.write(debugData);
                }
                this.sink.flush();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void headers(boolean z, int i, List<Header> headerBlock) {
        Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                this.hpackWriter.writeHeaders(headerBlock);
                long size = this.hpackBuffer.size();
                long jMin = Math.min(this.maxFrameSize, size);
                int i2 = size == jMin ? 4 : 0;
                if (z) {
                    i2 |= 1;
                }
                frameHeader(i, (int) jMin, 1, i2);
                this.sink.write(this.hpackBuffer, jMin);
                if (size > jMin) {
                    writeContinuationFrames(i, size - jMin);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void ping(boolean z, int i, int i2) {
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            frameHeader(0, 8, 6, z ? 1 : 0);
            this.sink.writeInt(i);
            this.sink.writeInt(i2);
            this.sink.flush();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void pushPromise(int i, int i2, List<Header> requestHeaders) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                this.hpackWriter.writeHeaders(requestHeaders);
                long size = this.hpackBuffer.size();
                int iMin = (int) Math.min(((long) this.maxFrameSize) - 4, size);
                long j = iMin;
                frameHeader(i, iMin + 4, 5, size == j ? 4 : 0);
                this.sink.writeInt(i2 & Integer.MAX_VALUE);
                this.sink.write(this.hpackBuffer, j);
                if (size > j) {
                    writeContinuationFrames(i, size - j);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void rstStream(int i, ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            frameHeader(i, 4, 3, 0);
            this.sink.writeInt(errorCode.getHttpCode());
            this.sink.flush();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void settings(Settings settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                frameHeader(0, settings.size() * 6, 4, 0);
                for (int i = 0; i < 10; i++) {
                    if (settings.isSet(i)) {
                        this.sink.writeShort(i);
                        this.sink.writeInt(settings.get(i));
                    }
                }
                this.sink.flush();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void windowUpdate(int i, long j) {
        int i2;
        long j2;
        synchronized (this) {
            try {
                if (this.closed) {
                    throw new IOException("closed");
                }
                if (j == 0 || j > 2147483647L) {
                    throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
                }
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    i2 = i;
                    j2 = j;
                    logger2.fine(Http2.INSTANCE.frameLogWindowUpdate(false, i2, 4, j2));
                } else {
                    i2 = i;
                    j2 = j;
                }
                frameHeader(i2, 4, 8, 0);
                this.sink.writeInt((int) j2);
                this.sink.flush();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int maxDataLength() {
        return this.maxFrameSize;
    }

    public final void dataFrame(int i, int i2, Buffer buffer, int i3) {
        frameHeader(i, i3, 0, i2);
        if (i3 > 0) {
            BufferedSink bufferedSink = this.sink;
            Intrinsics.checkNotNull(buffer);
            bufferedSink.write(buffer, i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void frameHeader(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        if (i3 != 8) {
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                i5 = i;
                i6 = i2;
                i7 = i3;
                i8 = i4;
                logger2.fine(Http2.INSTANCE.frameLog(false, i5, i6, i7, i8));
            } else {
                i5 = i;
                i6 = i2;
                i7 = i3;
                i8 = i4;
            }
        }
        if (i6 > this.maxFrameSize) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i6).toString());
        }
        if ((Integer.MIN_VALUE & i5) != 0) {
            throw new IllegalArgumentException(("reserved bit set: " + i5).toString());
        }
        _UtilCommonKt.writeMedium(this.sink, i6);
        this.sink.writeByte(i7 & 255);
        this.sink.writeByte(i8 & 255);
        this.sink.writeInt(Integer.MAX_VALUE & i5);
    }

    private final void writeContinuationFrames(int i, long j) {
        while (j > 0) {
            long jMin = Math.min(this.maxFrameSize, j);
            j -= jMin;
            frameHeader(i, (int) jMin, 9, j == 0 ? 4 : 0);
            this.sink.write(this.hpackBuffer, jMin);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
