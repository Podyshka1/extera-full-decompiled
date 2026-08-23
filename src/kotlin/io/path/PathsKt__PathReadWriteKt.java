package kotlin.io.path;

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
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
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
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0002\b\u0004\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\u0004¢\u0006\u0002\u0010\b\u001a;\u0010\t\u001a\u00020\n*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\f2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\u0004¢\u0006\u0002\u0010\r\u001a1\u0010\u000e\u001a\u00020\u000f*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0010\u001a;\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\f2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0013\u001a\u000e\u0010\u0014\u001a\u00020\u0015*\u00020\u0002H\u0087\u0088\u0004\u001a/\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00152\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0019\u001a\u0016\u0010\u001a\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0015H\u0087\u0088\u0004\u001a\u0018\u0010\u001b\u001a\u00020\u001c*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004\u001a9\u0010\u001d\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0080\u0004¢\u0006\u0002\u0010 \u001a \u0010!\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004\u001a>\u0010\"\u001a\u00020\u0017*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042!\u0010#\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0004\u0012\u00020\u00170$H\u0087\u0088\u0004ø\u0001\u0000\u001a'\u0010(\u001a\u00020)*\u00020\u00022\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\u0004¢\u0006\u0002\u0010*\u001a'\u0010+\u001a\u00020,*\u00020\u00022\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\u0004¢\u0006\u0002\u0010-\u001a\u001e\u0010.\u001a\b\u0012\u0004\u0012\u00020\u001c0/*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001aM\u00100\u001a\u0002H1\"\u0004\b\u0000\u00101*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0018\u00102\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c03\u0012\u0004\u0012\u0002H10$H\u0087\u0088\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u00104\u001a?\u00105\u001a\u00020\u0002*\u00020\u00022\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001f072\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\b¢\u0006\u0002\u00108\u001a?\u00105\u001a\u00020\u0002*\u00020\u00022\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001f032\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0087\u0088\b¢\u0006\u0002\u00109\u001a&\u0010:\u001a\u00020\u0002*\u00020\u00022\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001f072\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\b\u001a&\u0010:\u001a\u00020\u0002*\u00020\u00022\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001f032\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006;"}, d2 = {"reader", "Ljava/io/InputStreamReader;", "Ljava/nio/file/Path;", "charset", "Ljava/nio/charset/Charset;", "options", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/nio/file/OpenOption;", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/InputStreamReader;", "bufferedReader", "Ljava/io/BufferedReader;", "bufferSize", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;I[Ljava/nio/file/OpenOption;)Ljava/io/BufferedReader;", "writer", "Ljava/io/OutputStreamWriter;", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStreamWriter;", "bufferedWriter", "Ljava/io/BufferedWriter;", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;I[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;", "readBytes", _UrlKt.FRAGMENT_ENCODE_SET, "writeBytes", _UrlKt.FRAGMENT_ENCODE_SET, "array", "(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)V", "appendBytes", "readText", _UrlKt.FRAGMENT_ENCODE_SET, "writeText", "text", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)V", "appendText", "forEachLine", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "line", "inputStream", "Ljava/io/InputStream;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;", "outputStream", "Ljava/io/OutputStream;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;", "readLines", _UrlKt.FRAGMENT_ENCODE_SET, "useLines", "T", "block", "Lkotlin/sequences/Sequence;", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "writeLines", "lines", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;", "(Ljava/nio/file/Path;Lkotlin/sequences/Sequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;", "appendLines", "kotlin-stdlib-jdk7"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/io/path/PathsKt")
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

    public static /* synthetic */ void writeText$default(Path path, CharSequence charSequence, Charset charset, OpenOption[] openOptionArr, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(path, charSequence, charset, openOptionArr);
    }

    @SinceKotlin(version = "1.5")
    public static final void writeText(Path path, CharSequence charSequence, Charset charset, OpenOption... openOptionArr) throws IOException {
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

    public static /* synthetic */ void appendText$default(Path path, CharSequence charSequence, Charset charset, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        appendText(path, charSequence, charset);
    }

    @SinceKotlin(version = "1.5")
    public static final void appendText(Path path, CharSequence charSequence, Charset charset) throws IOException {
        writeText(path, charSequence, charset, StandardOpenOption.APPEND);
    }

    public static /* synthetic */ void forEachLine$default(Path path, Charset charset, Function1 function1, int i, Object obj) throws IOException {
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
    private static final void forEachLine(Path path, Charset charset, Function1<? super String, Unit> function1) throws IOException {
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

    public static /* synthetic */ Object useLines$default(Path path, Charset charset, Function1 function1, int i, Object obj) throws IOException {
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
    private static final <T> T useLines(Path path, Charset charset, Function1<? super Sequence<String>, ? extends T> function1) throws IOException {
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
