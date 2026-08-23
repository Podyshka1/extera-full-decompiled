package okio;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    boolean exhausted();

    Buffer getBuffer();

    long indexOf(ByteString byteString, long j, long j2);

    InputStream inputStream();

    BufferedSource peek();

    boolean rangeEquals(long j, ByteString byteString);

    long readAll(Sink sink);

    byte readByte();

    byte[] readByteArray();

    ByteString readByteString();

    ByteString readByteString(long j);

    long readDecimalLong();

    void readFully(Buffer buffer, long j);

    void readFully(byte[] bArr);

    long readHexadecimalUnsignedLong();

    int readInt();

    int readIntLe();

    long readLong();

    long readLongLe();

    short readShort();

    short readShortLe();

    String readString(Charset charset);

    String readUtf8(long j);

    int readUtf8CodePoint();

    String readUtf8LineStrict();

    String readUtf8LineStrict(long j);

    boolean request(long j);

    void require(long j);

    int select(Options options);

    void skip(long j);
}
