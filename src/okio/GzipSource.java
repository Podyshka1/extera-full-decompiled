package okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.UShort;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0018H\u0016J \u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J \u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00060\tj\u0002`\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0011¨\u0006&"}, d2 = {"Lokio/GzipSource;", "Lokio/Source;", "source", "<init>", "(Lokio/Source;)V", "section", _UrlKt.FRAGMENT_ENCODE_SET, "Lokio/RealBufferedSource;", "inflater", "Ljava/util/zip/Inflater;", "Lokio/Inflater;", "Ljava/util/zip/Inflater;", "inflaterSource", "Lokio/InflaterSource;", "crc", "Ljava/util/zip/CRC32;", "Lokio/internal/CRC32;", "Ljava/util/zip/CRC32;", "read", _UrlKt.FRAGMENT_ENCODE_SET, "sink", "Lokio/Buffer;", "byteCount", "consumeHeader", _UrlKt.FRAGMENT_ENCODE_SET, "consumeTrailer", "timeout", "Lokio/Timeout;", "close", "updateCrc", "buffer", "offset", "checkEqual", "name", _UrlKt.FRAGMENT_ENCODE_SET, "expected", _UrlKt.FRAGMENT_ENCODE_SET, "actual", "okio"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,222:1\n1#2:223\n63#3:224\n63#3:226\n63#3:228\n63#3:229\n63#3:230\n63#3:232\n63#3:234\n204#4:225\n204#4:227\n204#4:231\n204#4:233\n88#5:235\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n103#1:224\n105#1:226\n117#1:228\n118#1:229\n120#1:230\n131#1:232\n142#1:234\n104#1:225\n115#1:227\n128#1:231\n139#1:233\n185#1:235\n*E\n"})
public final class GzipSource implements Source {
    private final CRC32 crc;
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private byte section;
    private final RealBufferedSource source;

    public GzipSource(Source source) {
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.source = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new InflaterSource((BufferedSource) realBufferedSource, inflater);
        this.crc = new CRC32();
    }

    @Override // okio.Source
    public long read(Buffer sink, long byteCount) throws IOException {
        if (byteCount < 0) {
            Buffer$$ExternalSyntheticBUOutline3.m918m("byteCount < 0: ", byteCount);
            return 0L;
        }
        if (byteCount == 0) {
            return 0L;
        }
        if (this.section == 0) {
            consumeHeader();
            this.section = (byte) 1;
        }
        if (this.section == 1) {
            long size = sink.getSize();
            long j = this.inflaterSource.read(sink, byteCount);
            if (j != -1) {
                updateCrc(sink, size, j);
                return j;
            }
            this.section = (byte) 2;
        }
        if (this.section == 2) {
            consumeTrailer();
            this.section = (byte) 3;
            if (!this.source.exhausted()) {
                Model$$ExternalSyntheticBUOutline0.m1054m("gzip finished without exhausting source");
                return 0L;
            }
        }
        return -1L;
    }

    private final void consumeHeader() throws IOException {
        this.source.require(10L);
        byte b2 = this.source.bufferField.getByte(3L);
        boolean z = ((b2 >> 1) & 1) == 1;
        if (z) {
            updateCrc(this.source.bufferField, 0L, 10L);
        }
        checkEqual("ID1ID2", 8075, this.source.readShort());
        this.source.skip(8L);
        if (((b2 >> 2) & 1) == 1) {
            this.source.require(2L);
            if (z) {
                updateCrc(this.source.bufferField, 0L, 2L);
            }
            long shortLe = this.source.bufferField.readShortLe() & UShort.MAX_VALUE;
            this.source.require(shortLe);
            if (z) {
                updateCrc(this.source.bufferField, 0L, shortLe);
            }
            this.source.skip(shortLe);
        }
        if (((b2 >> 3) & 1) == 1) {
            long jIndexOf = this.source.indexOf((byte) 0);
            if (jIndexOf == -1) {
                Buffer$$ExternalSyntheticBUOutline1.m916m();
                return;
            } else {
                if (z) {
                    updateCrc(this.source.bufferField, 0L, jIndexOf + 1);
                }
                this.source.skip(jIndexOf + 1);
            }
        }
        if (((b2 >> 4) & 1) == 1) {
            long jIndexOf2 = this.source.indexOf((byte) 0);
            if (jIndexOf2 == -1) {
                Buffer$$ExternalSyntheticBUOutline1.m916m();
                return;
            } else {
                if (z) {
                    updateCrc(this.source.bufferField, 0L, jIndexOf2 + 1);
                }
                this.source.skip(jIndexOf2 + 1);
            }
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
    /* JADX INFO: renamed from: timeout */
    public Timeout getThis$0() {
        return this.source.getThis$0();
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.inflaterSource.close();
    }

    private final void updateCrc(Buffer buffer, long offset, long byteCount) {
        Segment segment = buffer.head;
        while (true) {
            int i = segment.limit;
            int i2 = segment.pos;
            if (offset < i - i2) {
                break;
            }
            offset -= (long) (i - i2);
            segment = segment.next;
        }
        while (byteCount > 0) {
            int i3 = (int) (((long) segment.pos) + offset);
            int iMin = (int) Math.min(segment.limit - i3, byteCount);
            this.crc.update(segment.data, i3, iMin);
            byteCount -= (long) iMin;
            segment = segment.next;
            offset = 0;
        }
    }

    private final void checkEqual(String name, int expected, int actual) throws IOException {
        if (actual == expected) {
            return;
        }
        throw new IOException(name + ": actual 0x" + StringsKt.padStart(SegmentedByteString.toHexString(actual), 8, '0') + " != expected 0x" + StringsKt.padStart(SegmentedByteString.toHexString(expected), 8, '0'));
    }
}
