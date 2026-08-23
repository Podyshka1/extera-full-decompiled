package okhttp3.internal.connection;

import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.internal.connection.RoutePlanner;

/* JADX INFO: loaded from: classes5.dex */
public final class ForceConnectRoutePlanner implements RoutePlanner {
    private final RealRoutePlanner delegate;

    @Override // okhttp3.internal.connection.RoutePlanner
    public Address getAddress() {
        return this.delegate.getAddress();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public ArrayDeque getDeferredPlans() {
        return this.delegate.getDeferredPlans();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean hasNext(RealConnection realConnection) {
        return this.delegate.hasNext(realConnection);
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean isCanceled() {
        return this.delegate.isCanceled();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean sameHostAndPort(HttpUrl url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return this.delegate.sameHostAndPort(url);
    }

    public ForceConnectRoutePlanner(RealRoutePlanner delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public RoutePlanner.Plan plan() {
        return this.delegate.planConnect$okhttp();
    }
}
