package kotlin.io.encoding;

import com.android.dx.util.Hex$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@ExperimentalEncodingApi
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0003\u0018\u00002\u00020\u0001B\u0019\bF\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0014\u001a\u00020\u000fH\u0016J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J*\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000fH\u0082\u0080\u0004J\"\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0082\u0080\u0004J\n\u0010 \u001a\u00020\u0019H\u0082\u0080\u0004J\n\u0010!\u001a\u00020\u0019H\u0082\u0080\u0004J\u0012\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000fH\u0082\u0080\u0004J\n\u0010#\u001a\u00020\u000fH\u0082\u0080\u0004R\u000f\u0010\u0002\u001a\u00020\u0001X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0003\u001a\u00020\u0004X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0007\u001a\u00020\bX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\t\u001a\u00020\bX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\n\u001a\u00020\u000bX\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\f\u001a\u00020\u000bX\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\r\u001a\u00020\u000bX\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u000e\u001a\u00020\u000fX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0010\u001a\u00020\u000fX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u0015\u0010\u0011\u001a\u00020\u000f8BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006$"}, d2 = {"Lkotlin/io/encoding/DecodeInputStream;", "Ljava/io/InputStream;", "input", "base64", "Lkotlin/io/encoding/Base64;", "<init>", "(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V", "isClosed", _UrlKt.FRAGMENT_ENCODE_SET, "isEOF", "singleByteBuffer", _UrlKt.FRAGMENT_ENCODE_SET, "symbolBuffer", "byteBuffer", "byteBufferStartIndex", _UrlKt.FRAGMENT_ENCODE_SET, "byteBufferEndIndex", "byteBufferLength", "getByteBufferLength", "()I", "read", "destination", "offset", "length", "close", _UrlKt.FRAGMENT_ENCODE_SET, "decodeSymbolBufferInto", "dst", "dstOffset", "dstEndIndex", "symbolBufferLength", "copyByteBufferInto", "resetByteBufferIfEmpty", "shiftByteBufferToStartIfNeeded", "handlePaddingSymbol", "readNextSymbol", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
final class DecodeInputStream extends InputStream {
    private final Base64 base64;
    private int byteBufferEndIndex;
    private int byteBufferStartIndex;
    private final InputStream input;
    private boolean isClosed;
    private boolean isEOF;
    private final byte[] singleByteBuffer = new byte[1];
    private final byte[] symbolBuffer = new byte[1024];
    private final byte[] byteBuffer = new byte[1024];

    public DecodeInputStream(InputStream inputStream, Base64 base64) {
        this.input = inputStream;
        this.base64 = base64;
    }

    private final int getByteBufferLength() {
        return this.byteBufferEndIndex - this.byteBufferStartIndex;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.byteBufferStartIndex;
        if (i < this.byteBufferEndIndex) {
            int i2 = this.byteBuffer[i] & UByte.MAX_VALUE;
            this.byteBufferStartIndex = i + 1;
            resetByteBufferIfEmpty();
            return i2;
        }
        int i3 = read(this.singleByteBuffer, 0, 1);
        if (i3 == -1) {
            return -1;
        }
        if (i3 == 1) {
            return this.singleByteBuffer[0] & UByte.MAX_VALUE;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Unreachable");
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0070, code lost:
    
        if (r2 != r11) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0072, code lost:
    
        if (r4 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0074, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0076, code lost:
    
        return r2 - r11;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read(byte[] destination, int offset, int length) throws IOException {
        int i;
        boolean z;
        if (offset < 0 || length < 0 || (i = offset + length) > destination.length) {
            Hex$$ExternalSyntheticBUOutline0.m194m("offset: ", offset, ", length: ", length, ", buffer size: ", destination.length);
            return 0;
        }
        if (this.isClosed) {
            Model$$ExternalSyntheticBUOutline0.m964m("The input stream is closed.");
            return 0;
        }
        if (this.isEOF) {
            return -1;
        }
        if (length == 0) {
            return 0;
        }
        if (getByteBufferLength() >= length) {
            copyByteBufferInto(destination, offset, length);
            return length;
        }
        int byteBufferLength = (((length - getByteBufferLength()) + 2) / 3) * 4;
        int iDecodeSymbolBufferInto = offset;
        while (true) {
            boolean z2 = this.isEOF;
            if (z2 || byteBufferLength <= 0) {
                break;
            }
            int iMin = Math.min(this.symbolBuffer.length, byteBufferLength);
            int iHandlePaddingSymbol = 0;
            while (true) {
                z = this.isEOF;
                if (z || iHandlePaddingSymbol >= iMin) {
                    break;
                }
                int nextSymbol = readNextSymbol();
                if (nextSymbol == -1) {
                    this.isEOF = true;
                } else if (nextSymbol == 61) {
                    iHandlePaddingSymbol = handlePaddingSymbol(iHandlePaddingSymbol);
                    this.isEOF = true;
                } else {
                    this.symbolBuffer[iHandlePaddingSymbol] = (byte) nextSymbol;
                    iHandlePaddingSymbol++;
                }
            }
            if (!z && iHandlePaddingSymbol != iMin) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
                return 0;
            }
            byteBufferLength -= iHandlePaddingSymbol;
            iDecodeSymbolBufferInto += decodeSymbolBufferInto(destination, iDecodeSymbolBufferInto, i, iHandlePaddingSymbol);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.isClosed) {
            return;
        }
        this.isClosed = true;
        this.input.close();
    }

    private final int decodeSymbolBufferInto(byte[] dst, int dstOffset, int dstEndIndex, int symbolBufferLength) {
        int i = this.byteBufferEndIndex;
        this.byteBufferEndIndex = i + this.base64.decodeIntoByteArray(this.symbolBuffer, this.byteBuffer, i, 0, symbolBufferLength);
        int iMin = Math.min(getByteBufferLength(), dstEndIndex - dstOffset);
        copyByteBufferInto(dst, dstOffset, iMin);
        shiftByteBufferToStartIfNeeded();
        return iMin;
    }

    private final void copyByteBufferInto(byte[] dst, int dstOffset, int length) {
        byte[] bArr = this.byteBuffer;
        int i = this.byteBufferStartIndex;
        ArraysKt.copyInto(bArr, dst, dstOffset, i, i + length);
        this.byteBufferStartIndex += length;
        resetByteBufferIfEmpty();
    }

    private final void resetByteBufferIfEmpty() {
        if (this.byteBufferStartIndex == this.byteBufferEndIndex) {
            this.byteBufferStartIndex = 0;
            this.byteBufferEndIndex = 0;
        }
    }

    private final void shiftByteBufferToStartIfNeeded() {
        byte[] bArr = this.byteBuffer;
        int length = bArr.length;
        int i = this.byteBufferEndIndex;
        if ((this.symbolBuffer.length / 4) * 3 > length - i) {
            ArraysKt.copyInto(bArr, bArr, 0, this.byteBufferStartIndex, i);
            this.byteBufferEndIndex -= this.byteBufferStartIndex;
            this.byteBufferStartIndex = 0;
        }
    }

    private final int handlePaddingSymbol(int symbolBufferLength) throws IOException {
        this.symbolBuffer[symbolBufferLength] = Base64.padSymbol;
        if ((symbolBufferLength & 3) != 2) {
            return symbolBufferLength + 1;
        }
        int nextSymbol = readNextSymbol();
        if (nextSymbol >= 0) {
            this.symbolBuffer[symbolBufferLength + 1] = (byte) nextSymbol;
        }
        return symbolBufferLength + 2;
    }

    private final int readNextSymbol() throws IOException {
        int i;
        if (!this.base64.getIsMimeScheme()) {
            return this.input.read();
        }
        do {
            i = this.input.read();
            if (i == -1) {
                break;
            }
        } while (!Base64Kt.isInMimeAlphabet(i));
        return i;
    }
}
