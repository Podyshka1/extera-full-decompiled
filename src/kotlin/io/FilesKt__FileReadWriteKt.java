package kotlin.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\"\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0087\u0088\u0004\u001a\u0018\u0010\t\u001a\u00020\n*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\"\u0010\u000b\u001a\u00020\f*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0087\u0088\u0004\u001a\u0018\u0010\r\u001a\u00020\u000e*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u000e\u0010\u000f\u001a\u00020\u0010*\u00020\u0002H\u0086\u0080\u0004\u001a\u0016\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0086\u0080\u0004\u001a\u0016\u0010\u0014\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0086\u0080\u0004\u001a\u0018\u0010\u0015\u001a\u00020\u0016*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0086\u0080\u0004\u001a \u0010\u0017\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00162\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0086\u0080\u0004\u001a \u0010\u0019\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00162\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0086\u0080\u0004\u001a\u001e\u0010\u001a\u001a\u00020\u0012*\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0004H\u0080\u0080\u0004\u001a\u0016\u0010\u001c\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d*\u00020\u0004H\u0080\u0080\u0004\u001a\u001a\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u001dH\u0080\u0080\u0004\u001aF\u0010#\u001a\u00020\u0012*\u00020\u000226\u0010$\u001a2\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0013\u0012\u00110\b¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b()\u0012\u0004\u0012\u00020\u00120%H\u0086\u0080\u0004\u001aN\u0010#\u001a\u00020\u0012*\u00020\u00022\u0006\u0010*\u001a\u00020\b26\u0010$\u001a2\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0013\u0012\u00110\b¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b()\u0012\u0004\u0012\u00020\u00120%H\u0086\u0080\u0004\u001a;\u0010+\u001a\u00020\u0012*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020\u00120,H\u0086\u0080\u0004\u001a\u000e\u0010.\u001a\u00020/*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u00100\u001a\u000201*\u00020\u0002H\u0087\u0088\u0004\u001a\u001e\u00102\u001a\b\u0012\u0004\u0012\u00020\u001603*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0086\u0080\u0004\u001aM\u00104\u001a\u0002H5\"\u0004\b\u0000\u00105*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0018\u00106\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001607\u0012\u0004\u0012\u0002H50,H\u0086\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u00108\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00069"}, d2 = {"reader", "Ljava/io/InputStreamReader;", "Ljava/io/File;", "charset", "Ljava/nio/charset/Charset;", "bufferedReader", "Ljava/io/BufferedReader;", "bufferSize", _UrlKt.FRAGMENT_ENCODE_SET, "writer", "Ljava/io/OutputStreamWriter;", "bufferedWriter", "Ljava/io/BufferedWriter;", "printWriter", "Ljava/io/PrintWriter;", "readBytes", _UrlKt.FRAGMENT_ENCODE_SET, "writeBytes", _UrlKt.FRAGMENT_ENCODE_SET, "array", "appendBytes", "readText", _UrlKt.FRAGMENT_ENCODE_SET, "writeText", "text", "appendText", "writeTextImpl", "Ljava/io/OutputStream;", "newReplaceEncoder", "Ljava/nio/charset/CharsetEncoder;", "kotlin.jvm.PlatformType", "byteBufferForEncoding", "Ljava/nio/ByteBuffer;", "chunkSize", "encoder", "forEachBlock", "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "buffer", "bytesRead", "blockSize", "forEachLine", "Lkotlin/Function1;", "line", "inputStream", "Ljava/io/FileInputStream;", "outputStream", "Ljava/io/FileOutputStream;", "readLines", _UrlKt.FRAGMENT_ENCODE_SET, "useLines", "T", "block", "Lkotlin/sequences/Sequence;", "(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/io/FilesKt")
@SourceDebugExtension({"SMAP\nFileReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileReadWrite.kt\nkotlin/io/FilesKt__FileReadWriteKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,294:1\n1#2:295\n*E\n"})
public class FilesKt__FileReadWriteKt extends FilesKt__FilePathComponentsKt {
    public static /* synthetic */ InputStreamReader reader$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    @InlineOnly
    private static final InputStreamReader reader(File file, Charset charset) {
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    public static /* synthetic */ BufferedReader bufferedReader$default(File file, Charset charset, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset), i);
    }

    @InlineOnly
    private static final BufferedReader bufferedReader(File file, Charset charset, int i) {
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset), i);
    }

    public static /* synthetic */ OutputStreamWriter writer$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    @InlineOnly
    private static final OutputStreamWriter writer(File file, Charset charset) {
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    public static /* synthetic */ BufferedWriter bufferedWriter$default(File file, Charset charset, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset), i);
    }

    @InlineOnly
    private static final BufferedWriter bufferedWriter(File file, Charset charset, int i) {
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset), i);
    }

    public static /* synthetic */ PrintWriter printWriter$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new PrintWriter(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset), 8192));
    }

    @InlineOnly
    private static final PrintWriter printWriter(File file, Charset charset) {
        return new PrintWriter(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset), 8192));
    }

    public static byte[] readBytes(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i = (int) length;
            byte[] bArrCopyInto = new byte[i];
            int i2 = i;
            int i3 = 0;
            while (i2 > 0) {
                int i4 = fileInputStream.read(bArrCopyInto, i3, i2);
                if (i4 < 0) {
                    break;
                }
                i2 -= i4;
                i3 += i4;
            }
            if (i2 > 0) {
                bArrCopyInto = Arrays.copyOf(bArrCopyInto, i3);
            } else {
                int i5 = fileInputStream.read();
                if (i5 != -1) {
                    ExposingBufferByteArrayOutputStream exposingBufferByteArrayOutputStream = new ExposingBufferByteArrayOutputStream(8193);
                    exposingBufferByteArrayOutputStream.write(i5);
                    ByteStreamsKt.copyTo$default(fileInputStream, exposingBufferByteArrayOutputStream, 0, 2, null);
                    int size = exposingBufferByteArrayOutputStream.size() + i;
                    if (size < 0) {
                        throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                    }
                    bArrCopyInto = ArraysKt.copyInto(exposingBufferByteArrayOutputStream.getBuffer(), Arrays.copyOf(bArrCopyInto, size), i, 0, exposingBufferByteArrayOutputStream.size());
                }
            }
            CloseableKt.closeFinally(fileInputStream, null);
            return bArrCopyInto;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static void writeBytes(File file, byte[] bArr) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static final void appendBytes(File file, byte[] bArr) {
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            fileOutputStream.write(bArr);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static String readText(File file, Charset charset) {
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String text = TextStreamsKt.readText(inputStreamReader);
            CloseableKt.closeFinally(inputStreamReader, null);
            return text;
        } finally {
        }
    }

    public static /* synthetic */ String readText$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return readText(file, charset);
    }

    public static /* synthetic */ void writeText$default(File file, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(file, str, charset);
    }

    public static final void writeText(File file, String str, Charset charset) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            writeTextImpl(fileOutputStream, str, charset);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static /* synthetic */ void appendText$default(File file, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        appendText(file, str, charset);
    }

    public static final void appendText(File file, String str, Charset charset) {
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            writeTextImpl(fileOutputStream, str, charset);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static void writeTextImpl(OutputStream outputStream, String str, Charset charset) throws IOException {
        if (str.length() < 16384) {
            outputStream.write(str.getBytes(charset));
            return;
        }
        CharsetEncoder charsetEncoderNewReplaceEncoder = newReplaceEncoder(charset);
        CharBuffer charBufferAllocate = CharBuffer.allocate(8192);
        ByteBuffer byteBufferByteBufferForEncoding = byteBufferForEncoding(8192, charsetEncoderNewReplaceEncoder);
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            int iMin = Math.min(8192 - i2, str.length() - i);
            int i3 = i + iMin;
            str.getChars(i, i3, charBufferAllocate.array(), i2);
            charBufferAllocate.limit(iMin + i2);
            i2 = 1;
            if (!charsetEncoderNewReplaceEncoder.encode(charBufferAllocate, byteBufferByteBufferForEncoding, i3 == str.length()).isUnderflow()) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
                return;
            }
            outputStream.write(byteBufferByteBufferForEncoding.array(), 0, byteBufferByteBufferForEncoding.position());
            if (charBufferAllocate.position() != charBufferAllocate.limit()) {
                charBufferAllocate.put(0, charBufferAllocate.get());
            } else {
                i2 = 0;
            }
            charBufferAllocate.clear();
            byteBufferByteBufferForEncoding.clear();
            i = i3;
        }
    }

    public static CharsetEncoder newReplaceEncoder(Charset charset) {
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    public static ByteBuffer byteBufferForEncoding(int i, CharsetEncoder charsetEncoder) {
        return ByteBuffer.allocate(i * ((int) Math.ceil(charsetEncoder.maxBytesPerChar())));
    }

    public static final void forEachBlock(File file, Function2<? super byte[], ? super Integer, Unit> function2) {
        forEachBlock(file, 4096, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [byte[], java.lang.Object] */
    public static final void forEachBlock(File file, int i, Function2<? super byte[], ? super Integer, Unit> function2) {
        ?? r2 = new byte[RangesKt.coerceAtLeast(i, 512)];
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i2 = fileInputStream.read(r2);
                if (i2 > 0) {
                    function2.invoke(r2, Integer.valueOf(i2));
                } else {
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, null);
                    return;
                }
            } finally {
            }
        }
    }

    public static /* synthetic */ void forEachLine$default(File file, Charset charset, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        forEachLine(file, charset, function1);
    }

    public static final void forEachLine(File file, Charset charset, Function1<? super String, Unit> function1) {
        TextStreamsKt.forEachLine(new BufferedReader(new InputStreamReader(new FileInputStream(file), charset)), function1);
    }

    @InlineOnly
    private static final FileInputStream inputStream(File file) {
        return new FileInputStream(file);
    }

    @InlineOnly
    private static final FileOutputStream outputStream(File file) {
        return new FileOutputStream(file);
    }

    public static /* synthetic */ List readLines$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return readLines(file, charset);
    }

    public static final List<String> readLines(File file, Charset charset) {
        final ArrayList arrayList = new ArrayList();
        forEachLine(file, charset, new Function1() { // from class: kotlin.io.FilesKt__FileReadWriteKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FilesKt__FileReadWriteKt.readLines$lambda$0$FilesKt__FileReadWriteKt(arrayList, (String) obj);
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit readLines$lambda$0$FilesKt__FileReadWriteKt(ArrayList arrayList, String str) {
        arrayList.add(str);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Object useLines$default(File file, Charset charset, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset), 8192);
        try {
            Object objInvoke = function1.invoke(TextStreamsKt.lineSequence(bufferedReader));
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(bufferedReader, null);
            InlineMarker.finallyEnd(1);
            return objInvoke;
        } finally {
        }
    }

    public static final <T> T useLines(File file, Charset charset, Function1<? super Sequence<String>, ? extends T> function1) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset), 8192);
        try {
            T tInvoke = function1.invoke(TextStreamsKt.lineSequence(bufferedReader));
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(bufferedReader, null);
            InlineMarker.finallyEnd(1);
            return tInvoke;
        } finally {
        }
    }
}
