package okhttp3.internal;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.Dispatcher;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes5.dex */
public final class NativeImageTestsAccessorsKt {
    public static final Cache buildCache(Path file, long j, FileSystem fileSystem) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        return new Cache(fileSystem, file, j);
    }

    public static final long getIdleAtNsAccessor(RealConnection realConnection) {
        Intrinsics.checkNotNullParameter(realConnection, "<this>");
        return realConnection.getIdleAtNs();
    }

    public static final void setIdleAtNsAccessor(RealConnection realConnection, long j) {
        Intrinsics.checkNotNullParameter(realConnection, "<this>");
        realConnection.setIdleAtNs(j);
    }

    public static final Exchange getExchangeAccessor(Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        return response.exchange();
    }

    public static final RealConnection getConnectionAccessor(Exchange exchange) {
        Intrinsics.checkNotNullParameter(exchange, "<this>");
        return exchange.getConnection$okhttp();
    }

    public static final void finishedAccessor(Dispatcher dispatcher, RealCall.AsyncCall call) {
        Intrinsics.checkNotNullParameter(dispatcher, "<this>");
        Intrinsics.checkNotNullParameter(call, "call");
        dispatcher.finished$okhttp(call);
    }
}
