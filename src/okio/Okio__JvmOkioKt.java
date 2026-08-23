package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import okhttp3.internal.url._UrlKt;
import okio.internal.DefaultSocket;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0013\u0010\f\u001a\u00020\t*\u00020\bH\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u001d\u0010\u0002\u001a\u00020\u0001*\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0002\u0010\u0010\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\r¢\u0006\u0004\b\u0006\u0010\u0011¨\u0006\u0012"}, d2 = {"Ljava/io/OutputStream;", "Lokio/Sink;", "sink", "(Ljava/io/OutputStream;)Lokio/Sink;", "Ljava/io/InputStream;", "Lokio/Source;", "source", "(Ljava/io/InputStream;)Lokio/Source;", "Ljava/net/Socket;", "Lokio/Socket;", "socket", "(Ljava/net/Socket;)Lokio/Socket;", "asOkioSocket", "Ljava/io/File;", _UrlKt.FRAGMENT_ENCODE_SET, "append", "(Ljava/io/File;Z)Lokio/Sink;", "(Ljava/io/File;)Lokio/Source;", "okio"}, m754k = 5, mv = {2, 2, 0}, xi = 48, xs = "okio/Okio")
abstract /* synthetic */ class Okio__JvmOkioKt {
    public static final Sink sink(OutputStream outputStream) {
        return new OutputStreamSink(outputStream, new Timeout());
    }

    public static final Source source(InputStream inputStream) {
        return new InputStreamSource(inputStream, new Timeout());
    }

    @JvmName(name = "socket")
    public static final Socket socket(java.net.Socket socket) {
        return new DefaultSocket(socket);
    }

    @JvmOverloads
    public static final Sink sink(File file, boolean z) {
        return Okio.sink(new FileOutputStream(file, z));
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return Okio.sink(file, z);
    }

    public static final Source source(File file) {
        return new InputStreamSource(new FileInputStream(file), Timeout.NONE);
    }
}
