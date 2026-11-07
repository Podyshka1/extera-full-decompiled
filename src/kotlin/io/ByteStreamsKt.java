package kotlin.io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;
import kotlin.collections.ByteIterator;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\u0082\u0004\u001a\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0088\u0004\u001a\u000e\u0010\b\u001a\u00020\u0004*\u00020\tH\u0087\u0088\u0004\u001a\u001e\u0010\b\u001a\u00020\u0004*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0087\u0088\u0004\u001a\u0018\u0010\r\u001a\u00020\u0002*\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000bH\u0087\u0088\u0004\u001a\u0018\u0010\u0010\u001a\u00020\u0011*\u00020\u000e2\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0088\u0004\u001a\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u000e2\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0088\u0004\u001a\u0018\u0010\r\u001a\u00020\u0014*\u00020\u00152\b\b\u0002\u0010\u000f\u001a\u00020\u000bH\u0087\u0088\u0004\u001a\u0018\u0010\u0016\u001a\u00020\u0017*\u00020\u00152\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0088\u0004\u001a\u0018\u0010\u0018\u001a\u00020\u0019*\u00020\u00152\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0088\u0004\u001a \u0010\u001a\u001a\u00020\u001b*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010\u000f\u001a\u00020\u000bH\u0087\u0080\b\u001a\u0018\u0010\u001d\u001a\u00020\t*\u00020\u000e2\b\b\u0002\u0010\u001e\u001a\u00020\u000bH\u0087\u0080\u0004\u001a\u000e\u0010\u001d\u001a\u00020\t*\u00020\u000eH\u0087\u0080\u0004¨\u0006\u001f"}, d2 = {"iterator", "Lkotlin/collections/ByteIterator;", "Ljava/io/BufferedInputStream;", "byteInputStream", "Ljava/io/ByteArrayInputStream;", _UrlKt.FRAGMENT_ENCODE_SET, "charset", "Ljava/nio/charset/Charset;", "inputStream", _UrlKt.FRAGMENT_ENCODE_SET, "offset", _UrlKt.FRAGMENT_ENCODE_SET, "length", "buffered", "Ljava/io/InputStream;", "bufferSize", "reader", "Ljava/io/InputStreamReader;", "bufferedReader", "Ljava/io/BufferedReader;", "Ljava/io/BufferedOutputStream;", "Ljava/io/OutputStream;", "writer", "Ljava/io/OutputStreamWriter;", "bufferedWriter", "Ljava/io/BufferedWriter;", "copyTo", _UrlKt.FRAGMENT_ENCODE_SET, "out", "readBytes", "estimatedSize", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
@JvmName(name = "ByteStreamsKt")
public final class ByteStreamsKt {
    public static final ByteIterator iterator(final BufferedInputStream bufferedInputStream) {
        return new ByteIterator() { // from class: kotlin.io.ByteStreamsKt.iterator.1
            private boolean finished;
            private int nextByte = -1;
            private boolean nextPrepared;

            public final int getNextByte() {
                return this.nextByte;
            }

            public final void setNextByte(int i) {
                this.nextByte = i;
            }

            public final boolean getNextPrepared() {
                return this.nextPrepared;
            }

            public final void setNextPrepared(boolean z) {
                this.nextPrepared = z;
            }

            public final boolean getFinished() {
                return this.finished;
            }

            public final void setFinished(boolean z) {
                this.finished = z;
            }

            private final void prepareNext() throws IOException {
                if (this.nextPrepared || this.finished) {
                    return;
                }
                int i = bufferedInputStream.read();
                this.nextByte = i;
                this.nextPrepared = true;
                this.finished = i == -1;
            }

            @Override // java.util.Iterator
            public boolean hasNext() throws IOException {
                prepareNext();
                return !this.finished;
            }

            @Override // kotlin.collections.ByteIterator
            public byte nextByte() throws IOException {
                prepareNext();
                if (this.finished) {
                    UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m("Input stream is over.");
                    return (byte) 0;
                }
                byte b2 = (byte) this.nextByte;
                this.nextPrepared = false;
                return b2;
            }
        };
    }

    @InlineOnly
    private static final ByteArrayInputStream byteInputStream(String str, Charset charset) {
        return new ByteArrayInputStream(str.getBytes(charset));
    }

    public static /* synthetic */ ByteArrayInputStream byteInputStream$default(String str, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new ByteArrayInputStream(str.getBytes(charset));
    }

    @InlineOnly
    private static final ByteArrayInputStream inputStream(byte[] bArr) {
        return new ByteArrayInputStream(bArr);
    }

    @InlineOnly
    private static final ByteArrayInputStream inputStream(byte[] bArr, int i, int i2) {
        return new ByteArrayInputStream(bArr, i, i2);
    }

    @InlineOnly
    private static final BufferedInputStream buffered(InputStream inputStream, int i) {
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    public static /* synthetic */ BufferedInputStream buffered$default(InputStream inputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    @InlineOnly
    private static final InputStreamReader reader(InputStream inputStream, Charset charset) {
        return new InputStreamReader(inputStream, charset);
    }

    public static /* synthetic */ InputStreamReader reader$default(InputStream inputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new InputStreamReader(inputStream, charset);
    }

    @InlineOnly
    private static final BufferedReader bufferedReader(InputStream inputStream, Charset charset) {
        return new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
    }

    public static /* synthetic */ BufferedReader bufferedReader$default(InputStream inputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
    }

    @InlineOnly
    private static final BufferedOutputStream buffered(OutputStream outputStream, int i) {
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }

    public static /* synthetic */ BufferedOutputStream buffered$default(OutputStream outputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }

    @InlineOnly
    private static final OutputStreamWriter writer(OutputStream outputStream, Charset charset) {
        return new OutputStreamWriter(outputStream, charset);
    }

    public static /* synthetic */ OutputStreamWriter writer$default(OutputStream outputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new OutputStreamWriter(outputStream, charset);
    }

    @InlineOnly
    private static final BufferedWriter bufferedWriter(OutputStream outputStream, Charset charset) {
        return new BufferedWriter(new OutputStreamWriter(outputStream, charset), 8192);
    }

    public static /* synthetic */ BufferedWriter bufferedWriter$default(OutputStream outputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new BufferedWriter(new OutputStreamWriter(outputStream, charset), 8192);
    }

    public static /* synthetic */ long copyTo$default(InputStream inputStream, OutputStream outputStream, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return copyTo(inputStream, outputStream, i);
    }

    @IgnorableReturnValue
    public static final long copyTo(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = inputStream.read(bArr);
        long j = 0;
        while (i2 >= 0) {
            outputStream.write(bArr, 0, i2);
            j += (long) i2;
            i2 = inputStream.read(bArr);
        }
        return j;
    }

    public static /* synthetic */ byte[] readBytes$default(InputStream inputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return readBytes(inputStream, i);
    }

    @Deprecated(message = "Use readBytes() overload without estimatedSize parameter", replaceWith = @ReplaceWith(expression = "readBytes()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = MVEL.VERSION, warningSince = "1.3")
    public static final /* synthetic */ byte[] readBytes(InputStream inputStream, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(i, inputStream.available()));
        copyTo$default(inputStream, byteArrayOutputStream, 0, 2, null);
        return byteArrayOutputStream.toByteArray();
    }

    @SinceKotlin(version = "1.3")
    public static final byte[] readBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, inputStream.available()));
        copyTo$default(inputStream, byteArrayOutputStream, 0, 2, null);
        return byteArrayOutputStream.toByteArray();
    }
}
