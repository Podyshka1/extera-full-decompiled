package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.connection.RoutePlanner;

/* JADX INFO: loaded from: classes5.dex */
public final class SequentialExchangeFinder implements ExchangeFinder {
    private final RoutePlanner routePlanner;

    public SequentialExchangeFinder(RoutePlanner routePlanner) {
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        this.routePlanner = routePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RoutePlanner getRoutePlanner() {
        return this.routePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealConnection find() throws Throwable {
        RoutePlanner.Plan plan;
        IOException iOException = null;
        while (!getRoutePlanner().isCanceled()) {
            try {
                plan = getRoutePlanner().plan();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                } else {
                    ExceptionsKt.addSuppressed(iOException, e);
                }
                if (!RoutePlanner.CC.hasNext$default(getRoutePlanner(), null, 1, null)) {
                    throw iOException;
                }
            }
            if (!plan.isReady()) {
                RoutePlanner.ConnectResult connectResultMo3886connectTcp = plan.mo3886connectTcp();
                if (connectResultMo3886connectTcp.isSuccess()) {
                    connectResultMo3886connectTcp = plan.mo3887connectTlsEtc();
                }
                RoutePlanner.Plan planComponent2 = connectResultMo3886connectTcp.component2();
                Throwable thComponent3 = connectResultMo3886connectTcp.component3();
                if (thComponent3 != null) {
                    throw thComponent3;
                }
                if (planComponent2 != null) {
                    getRoutePlanner().getDeferredPlans().addFirst(planComponent2);
                }
            }
            return plan.mo3883handleSuccess();
        }
        throw new IOException("Canceled");
    }
}
