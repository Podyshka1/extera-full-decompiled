package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class GzipSource implements Source {
    private final CRC32 crc;
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private byte section;
    private final RealBufferedSource source;

    public GzipSource(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.source = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new InflaterSource((BufferedSource) realBufferedSource, inflater);
        this.crc = new CRC32();
    }

    @Override // okio.Source
    public long read(Buffer sink, long j) throws IOException {
        GzipSource gzipSource;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        }
        if (j == 0) {
            return 0L;
        }
        if (this.section == 0) {
            consumeHeader();
            this.section = (byte) 1;
        }
        if (this.section == 1) {
            long size = sink.size();
            long j2 = this.inflaterSource.read(sink, j);
            if (j2 != -1) {
                updateCrc(sink, size, j2);
                return j2;
            }
            gzipSource = this;
            gzipSource.section = (byte) 2;
        } else {
            gzipSource = this;
        }
        if (gzipSource.section == 2) {
            consumeTrailer();
            gzipSource.section = (byte) 3;
            if (!gzipSource.source.exhausted()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    private final void consumeHeader() throws IOException {
        this.source.require(10L);
        byte b = this.source.bufferField.getByte(3L);
        boolean z = ((b >> 1) & 1) == 1;
        if (z) {
            updateCrc(this.source.bufferField, 0L, 10L);
        }
        checkEqual("ID1ID2", 8075, this.source.readShort());
        this.source.skip(8L);
        if (((b >> 2) & 1) == 1) {
            this.source.require(2L);
            if (z) {
                updateCrc(this.source.bufferField, 0L, 2L);
            }
            long shortLe = this.source.bufferField.readShortLe() & 65535;
            this.source.require(shortLe);
            if (z) {
                updateCrc(this.source.bufferField, 0L, shortLe);
            }
            this.source.skip(shortLe);
        }
        if (((b >> 3) & 1) == 1) {
            long jIndexOf = this.source.indexOf((byte) 0);
            if (jIndexOf == -1) {
                throw new EOFException();
            }
            if (z) {
                updateCrc(this.source.bufferField, 0L, jIndexOf + 1);
            }
            this.source.skip(jIndexOf + 1);
        }
        if (((b >> 4) & 1) == 1) {
            long jIndexOf2 = this.source.indexOf((byte) 0);
            if (jIndexOf2 == -1) {
                throw new EOFException();
            }
            if (z) {
                updateCrc(this.source.bufferField, 0L, jIndexOf2 + 1);
            }
            this.source.skip(jIndexOf2 + 1);
        }
        if (z) {
            checkEqual("FHCRC", this.source.readShortLe(), (short) this.crc.getValue());
            this.crc.reset();
        }
    }

    private final void consumeTrailer() throws IOException {
        checkEqual("CRC", this.source.readIntLe(), (int) this.crc.getValue());
        checkEqual("ISIZE", this.source.readIntLe(), (int) this.inflater.getBytesWritten());
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.inflaterSource.close();
    }

    private final void updateCrc(Buffer buffer, long j, long j2) {
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        while (true) {
            int i = segment.limit;
            int i2 = segment.pos;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
        }
        while (j2 > 0) {
            int i3 = (int) (((long) segment.pos) + j);
            int iMin = (int) Math.min(segment.limit - i3, j2);
            this.crc.update(segment.data, i3, iMin);
            j2 -= (long) iMin;
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            j = 0;
        }
    }

    private final void checkEqual(String str, int i, int i2) throws IOException {
        if (i2 == i) {
            return;
        }
        throw new IOException(str + ": actual 0x" + StringsKt.padStart(SegmentedByteString.toHexString(i2), 8, '0') + " != expected 0x" + StringsKt.padStart(SegmentedByteString.toHexString(i), 8, '0'));
    }
}
