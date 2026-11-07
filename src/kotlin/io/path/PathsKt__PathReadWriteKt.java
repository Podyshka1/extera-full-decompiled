package kotlin.io.path;

import j$.nio.file.Files;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.StandardOpenOption;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0002\b\b\u001a2\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0007\u0010\b\u001a<\u0010\f\u001a\u00020\u000b*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\t2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\f\u0010\r\u001a2\u0010\u000f\u001a\u00020\u000e*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a<\u0010\u0012\u001a\u00020\u0011*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\t2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0014\u0010\u0015\u001a\u00020\u0014*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u0015\u0010\u0016\u001a0\u0010\u0019\u001a\u00020\u0018*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00142\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001c\u0010\u001b\u001a\u00020\u0018*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0014H\u0087\b¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001d\u0010\u001e\u001a\u00020\u001d*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u001e\u0010\u001f\u001a9\u0010\"\u001a\u00020\u0018*\u00020\u00002\u0006\u0010!\u001a\u00020 2\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0007¢\u0006\u0004\b\"\u0010#\u001a%\u0010$\u001a\u00020\u0018*\u00020\u00002\u0006\u0010!\u001a\u00020 2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b$\u0010%\u001aD\u0010+\u001a\u00020\u0018*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b()\u0012\u0004\u0012\u00020\u00180&H\u0087\bø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a(\u0010.\u001a\u00020-*\u00020\u00002\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b.\u0010/\u001a(\u00101\u001a\u000200*\u00020\u00002\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b1\u00102\u001a$\u00104\u001a\b\u0012\u0004\u0012\u00020\u001d03*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b4\u00105\u001aN\u00109\u001a\u00028\u0000\"\u0004\b\u0000\u00106*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0018\u00108\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d07\u0012\u0004\u0012\u00028\u00000&H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b9\u0010:\u001a@\u0010=\u001a\u00020\u0000*\u00020\u00002\f\u0010<\u001a\b\u0012\u0004\u0012\u00020 0;2\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b=\u0010>\u001a@\u0010=\u001a\u00020\u0000*\u00020\u00002\f\u0010<\u001a\b\u0012\u0004\u0012\u00020 072\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b=\u0010?\u001a,\u0010@\u001a\u00020\u0000*\u00020\u00002\f\u0010<\u001a\b\u0012\u0004\u0012\u00020 0;2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b@\u0010A\u001a,\u0010@\u001a\u00020\u0000*\u00020\u00002\f\u0010<\u001a\b\u0012\u0004\u0012\u00020 072\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b@\u0010B\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006C"}, d2 = {"j$/nio/file/Path", "Ljava/nio/charset/Charset;", "charset", _UrlKt.FRAGMENT_ENCODE_SET, "j$/nio/file/OpenOption", "options", "Ljava/io/InputStreamReader;", "reader", "(Lj$/nio/file/Path;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Ljava/io/InputStreamReader;", _UrlKt.FRAGMENT_ENCODE_SET, "bufferSize", "Ljava/io/BufferedReader;", "bufferedReader", "(Lj$/nio/file/Path;Ljava/nio/charset/Charset;I[Lj$/nio/file/OpenOption;)Ljava/io/BufferedReader;", "Ljava/io/OutputStreamWriter;", "writer", "(Lj$/nio/file/Path;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStreamWriter;", "Ljava/io/BufferedWriter;", "bufferedWriter", "(Lj$/nio/file/Path;Ljava/nio/charset/Charset;I[Lj$/nio/file/OpenOption;)Ljava/io/BufferedWriter;", _UrlKt.FRAGMENT_ENCODE_SET, "readBytes", "(Lj$/nio/file/Path;)[B", "array", _UrlKt.FRAGMENT_ENCODE_SET, "writeBytes", "(Lj$/nio/file/Path;[B[Lj$/nio/file/OpenOption;)V", "appendBytes", "(Lj$/nio/file/Path;[B)V", _UrlKt.FRAGMENT_ENCODE_SET, "readText", "(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "text", "writeText", "(Lj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)V", "appendText", "(Lj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "line", "action", "forEachLine", "(Lj$/nio/file/Path;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)V", "Ljava/io/InputStream;", "inputStream", "(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;", "Ljava/io/OutputStream;", "outputStream", "(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;", _UrlKt.FRAGMENT_ENCODE_SET, "readLines", "(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;", "T", "Lkotlin/sequences/Sequence;", "block", "useLines", "(Lj$/nio/file/Path;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "lines", "writeLines", "(Lj$/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;", "(Lj$/nio/file/Path;Lkotlin/sequences/Sequence;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;", "appendLines", "(Lj$/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Lj$/nio/file/Path;", "(Lj$/nio/file/Path;Lkotlin/sequences/Sequence;Ljava/nio/charset/Charset;)Lj$/nio/file/Path;", "kotlin-stdlib-jdk7"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/io/path/PathsKt")
@SourceDebugExtension({"SMAP\nPathReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathReadWrite.kt\nkotlin/io/path/PathsKt__PathReadWriteKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,338:1\n1#2:339\n1#2:341\n66#3:340\n1342#4,2:342\n*S KotlinDebug\n*F\n+ 1 PathReadWrite.kt\nkotlin/io/path/PathsKt__PathReadWriteKt\n*L\n212#1:341\n212#1:340\n212#1:342,2\n*E\n"})
class PathsKt__PathReadWriteKt {
    public static /* synthetic */ InputStreamReader reader$default(Path path, Charset charset, OpenOption[] openOptionArr, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final InputStreamReader reader(Path path, Charset charset, OpenOption... openOptionArr) {
        return new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset);
    }

    public static /* synthetic */ BufferedReader bufferedReader$default(Path path, Charset charset, int i, OpenOption[] openOptionArr, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return new BufferedReader(new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset), i);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final BufferedReader bufferedReader(Path path, Charset charset, int i, OpenOption... openOptionArr) {
        return new BufferedReader(new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset), i);
    }

    public static /* synthetic */ OutputStreamWriter writer$default(Path path, Charset charset, OpenOption[] openOptionArr, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final OutputStreamWriter writer(Path path, Charset charset, OpenOption... openOptionArr) {
        return new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset);
    }

    public static /* synthetic */ BufferedWriter bufferedWriter$default(Path path, Charset charset, int i, OpenOption[] openOptionArr, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return new BufferedWriter(new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset), i);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final BufferedWriter bufferedWriter(Path path, Charset charset, int i, OpenOption... openOptionArr) {
        return new BufferedWriter(new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset), i);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte[] readBytes(Path path) {
        return Files.readAllBytes(path);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final void writeBytes(Path path, byte[] bArr, OpenOption... openOptionArr) throws IOException {
        Files.write(path, bArr, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final void appendBytes(Path path, byte[] bArr) throws IOException {
        Files.write(path, bArr, StandardOpenOption.APPEND);
    }

    public static /* synthetic */ String readText$default(Path path, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return readText(path, charset);
    }

    @SinceKotlin(version = "1.5")
    public static final String readText(Path path, Charset charset) {
        InputStreamReader inputStreamReader = new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0)), charset);
        try {
            String text = TextStreamsKt.readText(inputStreamReader);
            CloseableKt.closeFinally(inputStreamReader, null);
            return text;
        } finally {
        }
    }

    public static /* synthetic */ void writeText$default(Path path, CharSequence charSequence, Charset charset, OpenOption[] openOptionArr, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(path, charSequence, charset, openOptionArr);
    }

    @SinceKotlin(version = "1.5")
    public static final void writeText(Path path, CharSequence charSequence, Charset charset, OpenOption... openOptionArr) {
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        try {
            if (charSequence instanceof String) {
                FilesKt.writeTextImpl(outputStreamNewOutputStream, (String) charSequence, charset);
            } else {
                CharsetEncoder charsetEncoderNewReplaceEncoder = FilesKt.newReplaceEncoder(charset);
                CharBuffer charBufferAsReadOnlyBuffer = charSequence instanceof CharBuffer ? ((CharBuffer) charSequence).asReadOnlyBuffer() : CharBuffer.wrap(charSequence);
                ByteBuffer byteBufferByteBufferForEncoding = FilesKt.byteBufferForEncoding(Math.min(charSequence.length(), 8192), charsetEncoderNewReplaceEncoder);
                while (charBufferAsReadOnlyBuffer.hasRemaining()) {
                    if (charsetEncoderNewReplaceEncoder.encode(charBufferAsReadOnlyBuffer, byteBufferByteBufferForEncoding, true).isError()) {
                        throw new IllegalStateException("Check failed.");
                    }
                    outputStreamNewOutputStream.write(byteBufferByteBufferForEncoding.array(), 0, byteBufferByteBufferForEncoding.position());
                    byteBufferByteBufferForEncoding.clear();
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(outputStreamNewOutputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(outputStreamNewOutputStream, th);
                throw th2;
            }
        }
    }

    public static /* synthetic */ void appendText$default(Path path, CharSequence charSequence, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        appendText(path, charSequence, charset);
    }

    @SinceKotlin(version = "1.5")
    public static final void appendText(Path path, CharSequence charSequence, Charset charset) {
        writeText(path, charSequence, charset, StandardOpenOption.APPEND);
    }

    public static /* synthetic */ void forEachLine$default(Path path, Charset charset, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        BufferedReader bufferedReaderNewBufferedReader = Files.newBufferedReader(path, charset);
        try {
            Iterator<String> it = TextStreamsKt.lineSequence(bufferedReaderNewBufferedReader).iterator();
            while (it.hasNext()) {
                function1.invoke(it.next());
            }
            Unit unit = Unit.INSTANCE;
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(bufferedReaderNewBufferedReader, null);
            InlineMarker.finallyEnd(1);
        } finally {
        }
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final void forEachLine(Path path, Charset charset, Function1<? super String, Unit> function1) {
        BufferedReader bufferedReaderNewBufferedReader = Files.newBufferedReader(path, charset);
        try {
            Iterator<String> it = TextStreamsKt.lineSequence(bufferedReaderNewBufferedReader).iterator();
            while (it.hasNext()) {
                function1.invoke(it.next());
            }
            Unit unit = Unit.INSTANCE;
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(bufferedReaderNewBufferedReader, null);
            InlineMarker.finallyEnd(1);
        } finally {
        }
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final InputStream inputStream(Path path, OpenOption... openOptionArr) {
        return Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final OutputStream outputStream(Path path, OpenOption... openOptionArr) {
        return Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
    }

    public static /* synthetic */ List readLines$default(Path path, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return Files.readAllLines(path, charset);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final List<String> readLines(Path path, Charset charset) {
        return Files.readAllLines(path, charset);
    }

    public static /* synthetic */ Object useLines$default(Path path, Charset charset, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        BufferedReader bufferedReaderNewBufferedReader = Files.newBufferedReader(path, charset);
        try {
            Object objInvoke = function1.invoke(TextStreamsKt.lineSequence(bufferedReaderNewBufferedReader));
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(bufferedReaderNewBufferedReader, null);
            InlineMarker.finallyEnd(1);
            return objInvoke;
        } finally {
        }
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final <T> T useLines(Path path, Charset charset, Function1<? super Sequence<String>, ? extends T> function1) {
        BufferedReader bufferedReaderNewBufferedReader = Files.newBufferedReader(path, charset);
        try {
            T tInvoke = function1.invoke(TextStreamsKt.lineSequence(bufferedReaderNewBufferedReader));
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(bufferedReaderNewBufferedReader, null);
            InlineMarker.finallyEnd(1);
            return tInvoke;
        } finally {
        }
    }

    public static /* synthetic */ Path writeLines$default(Path path, Iterable iterable, Charset charset, OpenOption[] openOptionArr, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        return Files.write(path, iterable, charset, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path writeLines(Path path, Iterable<? extends CharSequence> iterable, Charset charset, OpenOption... openOptionArr) {
        return Files.write(path, iterable, charset, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
    }

    public static /* synthetic */ Path writeLines$default(Path path, Sequence sequence, Charset charset, OpenOption[] openOptionArr, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        return Files.write(path, SequencesKt.asIterable(sequence), charset, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path writeLines(Path path, Sequence<? extends CharSequence> sequence, Charset charset, OpenOption... openOptionArr) {
        return Files.write(path, SequencesKt.asIterable(sequence), charset, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
    }

    public static /* synthetic */ Path appendLines$default(Path path, Iterable iterable, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        return Files.write(path, iterable, charset, StandardOpenOption.APPEND);
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path appendLines(Path path, Iterable<? extends CharSequence> iterable, Charset charset) {
        return Files.write(path, iterable, charset, StandardOpenOption.APPEND);
    }

    public static /* synthetic */ Path appendLines$default(Path path, Sequence sequence, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        return Files.write(path, SequencesKt.asIterable(sequence), charset, StandardOpenOption.APPEND);
    }

    @SinceKotlin(version = "1.5")
    @IgnorableReturnValue
    @InlineOnly
    private static final Path appendLines(Path path, Sequence<? extends CharSequence> sequence, Charset charset) {
        return Files.write(path, SequencesKt.asIterable(sequence), charset, StandardOpenOption.APPEND);
    }
}
