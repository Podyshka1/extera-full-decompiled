package okhttp3.internal.connection;

import java.net.Socket;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

/* JADX INFO: loaded from: classes.dex */
public final class BufferedSocketKt {
    public static final BufferedSocket asBufferedSocket(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        return asBufferedSocket(Okio.socket(socket));
    }

    public static final BufferedSocket asBufferedSocket(okio.Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        return new BufferedSocket(socket) { // from class: okhttp3.internal.connection.BufferedSocketKt.asBufferedSocket.1
            private final okio.Socket delegate;
            private final BufferedSink sink;
            private final BufferedSource source;

            {
                this.delegate = socket;
                this.source = Okio.buffer(socket.getSource());
                this.sink = Okio.buffer(socket.getSink());
            }

            @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
            public BufferedSource getSource() {
                return this.source;
            }

            @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
            public BufferedSink getSink() {
                return this.sink;
            }

            @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
            public void cancel() {
                this.delegate.cancel();
            }
        };
    }
}
