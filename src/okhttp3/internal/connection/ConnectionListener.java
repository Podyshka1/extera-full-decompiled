package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.Route;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConnectionListener {
    public static final Companion Companion = new Companion(null);
    private static final ConnectionListener NONE = new ConnectionListener() { // from class: okhttp3.internal.connection.ConnectionListener$Companion$NONE$1
    };

    public void connectEnd(Connection connection, Route route, Call call) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void connectFailed(Route route, Call call, IOException failure) {
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(failure, "failure");
    }

    public void connectStart(Route route, Call call) {
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void connectionAcquired(Connection connection, Call call) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void connectionClosed(Connection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
    }

    public void connectionReleased(Connection connection, Call call) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void noNewExchanges(Connection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ConnectionListener getNONE() {
            return ConnectionListener.NONE;
        }
    }
}
