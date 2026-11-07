package okio;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"okio/Okio__JvmOkioKt", "okio/Okio__OkioKt"}, d2 = {}, m910k = 4, mv = {2, 2, 0}, xi = 48)
public abstract class Okio {
    @JvmName(name = "blackhole")
    public static final Sink blackhole() {
        return Okio__OkioKt.blackhole();
    }

    public static final BufferedSink buffer(Sink sink) {
        return Okio__OkioKt.buffer(sink);
    }

    public static final BufferedSource buffer(Source source) {
        return Okio__OkioKt.buffer(source);
    }

    @JvmOverloads
    public static final Sink sink(File file, boolean z) {
        return Okio__JvmOkioKt.sink(file, z);
    }

    public static final Sink sink(OutputStream outputStream) {
        return Okio__JvmOkioKt.sink(outputStream);
    }

    @JvmName(name = "socket")
    public static final Socket socket(java.net.Socket socket) {
        return Okio__JvmOkioKt.socket(socket);
    }

    public static final Source source(File file) {
        return Okio__JvmOkioKt.source(file);
    }

    public static final Source source(InputStream inputStream) {
        return Okio__JvmOkioKt.source(inputStream);
    }
}
