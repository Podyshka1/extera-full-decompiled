package okio;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class Okio {
    public static final Sink blackhole() {
        return Okio__OkioKt.blackhole();
    }

    public static final BufferedSink buffer(Sink sink) {
        return Okio__OkioKt.buffer(sink);
    }

    public static final BufferedSource buffer(Source source) {
        return Okio__OkioKt.buffer(source);
    }

    public static final Sink sink(File file, boolean z) {
        return Okio__JvmOkioKt.sink(file, z);
    }

    public static final Sink sink(OutputStream outputStream) {
        return Okio__JvmOkioKt.sink(outputStream);
    }

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
