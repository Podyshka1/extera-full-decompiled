package okhttp3.internal.connection;

import kotlin.Metadata;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\r\u001a\u00020\u0007H\u0016J\b\u0010\u000e\u001a\u00020\u0007H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010\u0012\u001a\u00020\u0010H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\f¨\u0006\u0013"}, d2 = {"Lokhttp3/internal/connection/FailedPlan;", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "e", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/Throwable;)V", "result", "Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", "getResult", "()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", "isReady", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "connectTcp", "connectTlsEtc", "handleSuccess", _UrlKt.FRAGMENT_ENCODE_SET, "cancel", "retry", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class FailedPlan implements RoutePlanner.Plan {
    private final boolean isReady;
    private final RoutePlanner.ConnectResult result;

    public FailedPlan(Throwable th) {
        this.result = new RoutePlanner.ConnectResult(this, null, th, 2, null);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: handleSuccess, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RealConnection mo5019handleSuccess() {
        return (RealConnection) handleSuccess();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: retry, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RoutePlanner.Plan mo5020retry() {
        return (RoutePlanner.Plan) retry();
    }

    public final RoutePlanner.ConnectResult getResult() {
        return this.result;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: isReady, reason: from getter */
    public boolean getIsReady() {
        return this.isReady;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTcp, reason: from getter */
    public RoutePlanner.ConnectResult getResult() {
        return this.result;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTlsEtc */
    public RoutePlanner.ConnectResult mo5023connectTlsEtc() {
        return this.result;
    }

    public Void handleSuccess() {
        throw new IllegalStateException("unexpected call");
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel, reason: merged with bridge method [inline-methods] */
    public Void mo5018cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    public Void retry() {
        throw new IllegalStateException("unexpected retry");
    }
}
