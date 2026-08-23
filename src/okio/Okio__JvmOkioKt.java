package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.DefaultSocket;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class Okio__JvmOkioKt {
    public static final Sink sink(OutputStream outputStream) {
        Intrinsics.checkNotNullParameter(outputStream, "<this>");
        return new OutputStreamSink(outputStream, new Timeout());
    }

    public static final Source source(InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        return new InputStreamSource(inputStream, new Timeout());
    }

    public static final Socket socket(java.net.Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        return new DefaultSocket(socket);
    }

    public static final Sink sink(File file, boolean z) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return Okio.sink(new FileOutputStream(file, z));
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return Okio.sink(file, z);
    }

    public static final Source source(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return new InputStreamSource(new FileInputStream(file), Timeout.NONE);
    }
}
