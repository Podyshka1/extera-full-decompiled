package okhttp3.internal.connection;

import java.net.Socket;
import kotlin.Metadata;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003¨\u0006\u0004"}, d2 = {"asBufferedSocket", "Lokhttp3/internal/connection/BufferedSocket;", "Ljava/net/Socket;", "Lokio/Socket;", "okhttp"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
public final class BufferedSocketKt {
    public static final BufferedSocket asBufferedSocket(Socket socket) {
        return asBufferedSocket(Okio.socket(socket));
    }

    public static final BufferedSocket asBufferedSocket(okio.Socket socket) {
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
