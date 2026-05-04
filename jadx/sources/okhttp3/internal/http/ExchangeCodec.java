package okhttp3.internal.http;

import java.io.IOException;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.connection.RealCall;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* JADX INFO: loaded from: classes.dex */
public interface ExchangeCodec {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int DISCARD_STREAM_TIMEOUT_MILLIS = 100;

    public interface Carrier {
        /* JADX INFO: renamed from: cancel */
        void mo3882cancel();

        Route getRoute();

        void noNewExchanges();

        void trackFailure(RealCall realCall, IOException iOException);
    }

    void cancel();

    Sink createRequestBody(Request request, long j);

    void finishRequest();

    void flushRequest();

    Carrier getCarrier();

    Socket getSocket();

    boolean isResponseComplete();

    Source openResponseBodySource(Response response);

    Headers peekTrailers();

    Response.Builder readResponseHeaders(boolean z);

    long reportedContentLength(Response response);

    void writeRequestHeaders(Request request);

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int DISCARD_STREAM_TIMEOUT_MILLIS = 100;

        private Companion() {
        }
    }
}
