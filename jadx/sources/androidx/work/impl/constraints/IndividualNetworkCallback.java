package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.IndividualNetworkCallback;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
final class IndividualNetworkCallback extends ConnectivityManager.NetworkCallback {
    public static final Companion Companion = new Companion(null);
    private final Function1 onConstraintState;

    public /* synthetic */ IndividualNetworkCallback(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1);
    }

    private IndividualNetworkCallback(Function1 function1) {
        this.onConstraintState = function1;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(networkCapabilities, "networkCapabilities");
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        this.onConstraintState.invoke(ConstraintsState.ConstraintsMet.INSTANCE);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
        this.onConstraintState.invoke(new ConstraintsState.ConstraintsNotMet(7));
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Function0 addCallback(final ConnectivityManager connManager, NetworkRequest networkRequest, Function1 onConstraintState) {
            Intrinsics.checkNotNullParameter(connManager, "connManager");
            Intrinsics.checkNotNullParameter(networkRequest, "networkRequest");
            Intrinsics.checkNotNullParameter(onConstraintState, "onConstraintState");
            final IndividualNetworkCallback individualNetworkCallback = new IndividualNetworkCallback(onConstraintState, null);
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            try {
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController register callback");
                connManager.registerNetworkCallback(networkRequest, individualNetworkCallback);
                ref$BooleanRef.element = true;
            } catch (RuntimeException e) {
                String name = e.getClass().getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt.endsWith$default(name, "TooManyRequestsException", false, 2, (Object) null)) {
                    Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController couldn't register callback", e);
                    onConstraintState.invoke(new ConstraintsState.ConstraintsNotMet(7));
                } else {
                    throw e;
                }
            }
            return new Function0() { // from class: androidx.work.impl.constraints.IndividualNetworkCallback$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return IndividualNetworkCallback.Companion.addCallback$lambda$0(ref$BooleanRef, connManager, individualNetworkCallback);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit addCallback$lambda$0(Ref$BooleanRef ref$BooleanRef, ConnectivityManager connectivityManager, IndividualNetworkCallback individualNetworkCallback) {
            if (ref$BooleanRef.element) {
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController unregister callback");
                connectivityManager.unregisterNetworkCallback(individualNetworkCallback);
            }
            return Unit.INSTANCE;
        }
    }
}
