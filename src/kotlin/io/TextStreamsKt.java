package kotlin.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Z\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u0005*\u00020\u00062\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\"\u0010\u0007\u001a\u00020\b*\u00020\u00022\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\b0\nH\u0086\u0080\u0004\u001a\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r*\u00020\u0002H\u0086\u0080\u0004\u001aC\u0010\u000e\u001a\u0002H\u000f\"\u0004\b\u0000\u0010\u000f*\u00020\u00022\u0018\u0010\u0010\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0011\u0012\u0004\u0012\u0002H\u000f0\nH\u0087\u0088\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0012\u001a\u000e\u0010\u0013\u001a\u00020\u0014*\u00020\u000bH\u0087\u0088\u0004\u001a\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011*\u00020\u0001H\u0086\u0080\u0004\u001a\u000e\u0010\u0016\u001a\u00020\u000b*\u00020\u0002H\u0086\u0080\u0004\u001a \u0010\u0017\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00062\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\b\u001a\u0018\u0010\u0016\u001a\u00020\u000b*\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0087\u0088\u0004\u001a\u000e\u0010\u001d\u001a\u00020\u001e*\u00020\u001aH\u0086\u0080\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"buffered", "Ljava/io/BufferedReader;", "Ljava/io/Reader;", "bufferSize", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/io/BufferedWriter;", "Ljava/io/Writer;", "forEachLine", _UrlKt.FRAGMENT_ENCODE_SET, "action", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "readLines", _UrlKt.FRAGMENT_ENCODE_SET, "useLines", "T", "block", "Lkotlin/sequences/Sequence;", "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "reader", "Ljava/io/StringReader;", "lineSequence", "readText", "copyTo", _UrlKt.FRAGMENT_ENCODE_SET, "out", "Ljava/net/URL;", "charset", "Ljava/nio/charset/Charset;", "readBytes", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
@JvmName(name = "TextStreamsKt")
@SourceDebugExtension({"SMAP\nReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,166:1\n66#1:167\n1#2:168\n1#2:171\n1342#3,2:169\n*S KotlinDebug\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n*L\n43#1:167\n43#1:168\n43#1:169,2\n*E\n"})
public final class TextStreamsKt {
    @InlineOnly
    private static final BufferedReader buffered(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    public static /* synthetic */ BufferedReader buffered$default(Reader reader, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    @InlineOnly
    private static final BufferedWriter buffered(Writer writer, int i) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    public static /* synthetic */ BufferedWriter buffered$default(Writer writer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    public static final List<String> readLines(Reader reader) {
        final ArrayList arrayList = new ArrayList();
        forEachLine(reader, new Function1() { // from class: kotlin.io.TextStreamsKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TextStreamsKt.$r8$lambda$3AhJ2UCBpcTyB1jZJdphp_uKhXo(arrayList, (String) obj);
            }
        });
        return arrayList;
    }

    public static Unit $r8$lambda$3AhJ2UCBpcTyB1jZJdphp_uKhXo(ArrayList arrayList, String str) {
        arrayList.add(str);
        return Unit.INSTANCE;
    }

    public static final void forEachLine(Reader reader, Function1<? super String, Unit> function1) {
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192);
        try {
            Iterator<String> it = lineSequence(bufferedReader).iterator();
            while (it.hasNext()) {
                function1.invoke(it.next());
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedReader, null);
        } finally {
        }
    }

    @IgnorableReturnValue
    public static final <T> T useLines(Reader reader, Function1<? super Sequence<String>, ? extends T> function1) {
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192);
        try {
            T tInvoke = function1.invoke(lineSequence(bufferedReader));
            InlineMarker.finallyStart(1);
            CloseableKt.closeFinally(bufferedReader, null);
            InlineMarker.finallyEnd(1);
            return tInvoke;
        } finally {
        }
    }

    @InlineOnly
    private static final StringReader reader(String str) {
        return new StringReader(str);
    }

    public static final Sequence<String> lineSequence(BufferedReader bufferedReader) {
        return SequencesKt.constrainOnce(new LinesSequence(bufferedReader));
    }

    public static final String readText(Reader reader) {
        StringWriter stringWriter = new StringWriter();
        copyTo$default(reader, stringWriter, 0, 2, null);
        return stringWriter.toString();
    }

    public static /* synthetic */ long copyTo$default(Reader reader, Writer writer, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return copyTo(reader, writer, i);
    }

    @IgnorableReturnValue
    public static final long copyTo(Reader reader, Writer writer, int i) throws IOException {
        char[] cArr = new char[i];
        int i2 = reader.read(cArr);
        long j = 0;
        while (i2 >= 0) {
            writer.write(cArr, 0, i2);
            j += (long) i2;
            i2 = reader.read(cArr);
        }
        return j;
    }

    @InlineOnly
    private static final String readText(URL url, Charset charset) {
        return new String(readBytes(url), charset);
    }

    public static /* synthetic */ String readText$default(URL url, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new String(readBytes(url), charset);
    }

    public static final byte[] readBytes(URL url) throws IOException {
        InputStream inputStreamOpenStream = url.openStream();
        try {
            byte[] bytes = ByteStreamsKt.readBytes(inputStreamOpenStream);
            CloseableKt.closeFinally(inputStreamOpenStream, null);
            return bytes;
        } finally {
        }
    }
}
