package okhttp3.internal.connection;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.connection.RoutePlanner;

/* JADX INFO: loaded from: classes.dex */
public final class ReusePlan implements RoutePlanner.Plan {
    private final RealConnection connection;
    private final boolean isReady;

    public ReusePlan(RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.connection = connection;
        this.isReady = true;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTcp, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RoutePlanner.ConnectResult mo3886connectTcp() {
        return (RoutePlanner.ConnectResult) connectTcp();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTlsEtc, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RoutePlanner.ConnectResult mo3887connectTlsEtc() {
        return (RoutePlanner.ConnectResult) connectTlsEtc();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: retry */
    public /* bridge */ /* synthetic */ RoutePlanner.Plan mo3884retry() {
        return (RoutePlanner.Plan) retry();
    }

    public final RealConnection getConnection() {
        return this.connection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public boolean isReady() {
        return this.isReady;
    }

    public Void connectTcp() {
        throw new IllegalStateException("already connected");
    }

    public Void connectTlsEtc() {
        throw new IllegalStateException("already connected");
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: handleSuccess */
    public RealConnection mo3883handleSuccess() {
        return this.connection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel, reason: merged with bridge method [inline-methods] */
    public Void mo3882cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    public Void retry() {
        throw new IllegalStateException("unexpected retry");
    }
}
