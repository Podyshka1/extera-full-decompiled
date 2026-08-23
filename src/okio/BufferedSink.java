package okio;

import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    BufferedSink emitCompleteSegments();

    @Override // okio.Sink, java.io.Flushable
    void flush();

    Buffer getBuffer();

    OutputStream outputStream();

    BufferedSink write(ByteString byteString);

    BufferedSink write(byte[] bArr);

    BufferedSink write(byte[] bArr, int i, int i2);

    long writeAll(Source source);

    BufferedSink writeByte(int i);

    BufferedSink writeDecimalLong(long j);

    BufferedSink writeHexadecimalUnsignedLong(long j);

    BufferedSink writeInt(int i);

    BufferedSink writeShort(int i);

    BufferedSink writeUtf8(String str);

    BufferedSink writeUtf8(String str, int i, int i2);

    BufferedSink writeUtf8CodePoint(int i);
}
