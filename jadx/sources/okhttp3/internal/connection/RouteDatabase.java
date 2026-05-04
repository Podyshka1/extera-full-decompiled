package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Route;

/* JADX INFO: loaded from: classes.dex */
public final class RouteDatabase {
    private final Set<Route> _failedRoutes = new LinkedHashSet();

    public final synchronized Set<Route> getFailedRoutes() {
        return CollectionsKt.toSet(this._failedRoutes);
    }

    public final synchronized void failed(Route failedRoute) {
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        this._failedRoutes.add(failedRoute);
    }

    public final synchronized void connected(Route route) {
        Intrinsics.checkNotNullParameter(route, "route");
        this._failedRoutes.remove(route);
    }

    public final synchronized boolean shouldPostpone(Route route) {
        Intrinsics.checkNotNullParameter(route, "route");
        return this._failedRoutes.contains(route);
    }
}
