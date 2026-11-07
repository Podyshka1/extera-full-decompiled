package okio;

import com.android.dx.rop.code.RegisterSpec;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u00012\u00020\u0002J\u0017\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\u0005\u0010\tJ'\u0010\u0005\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH&¢\u0006\u0004\b\u0005\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000eH&¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012H&¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\nH&¢\u0006\u0004\b\u0014\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\nH&¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\nH&¢\u0006\u0004\b\u001d\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\nH&¢\u0006\u0004\b\u001f\u0010\u001bJ\u0017\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\nH&¢\u0006\u0004\b!\u0010\u001bJ\u0017\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000fH&¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000fH&¢\u0006\u0004\b%\u0010$J\u000f\u0010'\u001a\u00020&H&¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0000H&¢\u0006\u0004\b)\u0010*J\u000f\u0010,\u001a\u00020+H&¢\u0006\u0004\b,\u0010-R\u0014\u00101\u001a\u00020.8&X¦\u0004¢\u0006\u0006\u001a\u0004\b/\u00100\u0082\u0001\u0002.2ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00063À\u0006\u0001"}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "Lokio/ByteString;", "byteString", "write", "(Lokio/ByteString;)Lokio/BufferedSink;", _UrlKt.FRAGMENT_ENCODE_SET, "source", "([B)Lokio/BufferedSink;", _UrlKt.FRAGMENT_ENCODE_SET, "offset", "byteCount", "([BII)Lokio/BufferedSink;", "Lokio/Source;", _UrlKt.FRAGMENT_ENCODE_SET, "writeAll", "(Lokio/Source;)J", _UrlKt.FRAGMENT_ENCODE_SET, "string", "writeUtf8", "(Ljava/lang/String;)Lokio/BufferedSink;", "beginIndex", "endIndex", "(Ljava/lang/String;II)Lokio/BufferedSink;", "codePoint", "writeUtf8CodePoint", "(I)Lokio/BufferedSink;", "b", "writeByte", "s", "writeShort", "i", "writeInt", RegisterSpec.PREFIX, "writeDecimalLong", "(J)Lokio/BufferedSink;", "writeHexadecimalUnsignedLong", _UrlKt.FRAGMENT_ENCODE_SET, "flush", "()V", "emitCompleteSegments", "()Lokio/BufferedSink;", "Ljava/io/OutputStream;", "outputStream", "()Ljava/io/OutputStream;", "Lokio/Buffer;", "getBuffer", "()Lokio/Buffer;", "buffer", "Lokio/RealBufferedSink;", "okio"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public interface BufferedSink extends Sink, WritableByteChannel {
    BufferedSink emitCompleteSegments();

    @Override // okio.Sink, java.io.Flushable
    void flush();

    Buffer getBuffer();

    OutputStream outputStream();

    BufferedSink write(ByteString byteString);

    BufferedSink write(byte[] source);

    BufferedSink write(byte[] source, int offset, int byteCount);

    long writeAll(Source source);

    BufferedSink writeByte(int b2);

    BufferedSink writeDecimalLong(long v);

    BufferedSink writeHexadecimalUnsignedLong(long v);

    BufferedSink writeInt(int i);

    BufferedSink writeShort(int s);

    BufferedSink writeUtf8(String string);

    BufferedSink writeUtf8(String string, int beginIndex, int endIndex);

    BufferedSink writeUtf8CodePoint(int codePoint);
}
