package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ConnectionListener;
import okhttp3.internal.connection.RealConnectionPool;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectionPool {
    private final RealConnectionPool delegate;

    public ConnectionPool(RealConnectionPool delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    public final RealConnectionPool getDelegate$okhttp() {
        return this.delegate;
    }

    public /* synthetic */ ConnectionPool(int i, long j, TimeUnit timeUnit, TaskRunner taskRunner, ConnectionListener connectionListener, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 5 : i, (i2 & 2) != 0 ? 5L : j, (i2 & 4) != 0 ? TimeUnit.MINUTES : timeUnit, (i2 & 8) != 0 ? TaskRunner.INSTANCE : taskRunner, (i2 & 16) != 0 ? ConnectionListener.Companion.getNONE() : connectionListener);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i, long j, TimeUnit timeUnit, TaskRunner taskRunner, ConnectionListener connectionListener) {
        this(new RealConnectionPool(taskRunner, i, j, timeUnit, connectionListener));
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
    }

    public /* synthetic */ ConnectionPool(int i, long j, TimeUnit timeUnit, ConnectionListener connectionListener, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 5 : i, (i2 & 2) != 0 ? 5L : j, (i2 & 4) != 0 ? TimeUnit.MINUTES : timeUnit, (i2 & 8) != 0 ? ConnectionListener.Companion.getNONE() : connectionListener);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i, long j, TimeUnit timeUnit, ConnectionListener connectionListener) {
        this(i, j, timeUnit, TaskRunner.INSTANCE, connectionListener);
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i, long j, TimeUnit timeUnit) {
        this(i, j, timeUnit, TaskRunner.INSTANCE, ConnectionListener.Companion.getNONE());
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
    }

    public ConnectionPool() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public final int idleConnectionCount() {
        return this.delegate.idleConnectionCount();
    }

    public final int connectionCount() {
        return this.delegate.connectionCount();
    }

    public final ConnectionListener getConnectionListener$okhttp() {
        return this.delegate.getConnectionListener$okhttp();
    }

    public final void evictAll() {
        this.delegate.evictAll();
    }
}
