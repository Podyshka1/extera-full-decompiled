package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
final class SharedNetworkCallback extends ConnectivityManager.NetworkCallback {
    private static NetworkCapabilities cachedCapabilities;
    private static boolean capabilitiesInitialized;
    private static boolean isBlocked;
    public static final SharedNetworkCallback INSTANCE = new SharedNetworkCallback();
    private static final Object requestsLock = new Object();
    private static final Map requests = new LinkedHashMap();

    private SharedNetworkCallback() {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(networkCapabilities, "networkCapabilities");
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        synchronized (requestsLock) {
            cachedCapabilities = networkCapabilities;
            Unit unit = Unit.INSTANCE;
        }
        dispatchOnConstraintState();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onBlockedStatusChanged(Network network, boolean z) {
        Intrinsics.checkNotNullParameter(network, "network");
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onBlockedStatusChanged callback");
        synchronized (requestsLock) {
            if (isBlocked == z) {
                return;
            }
            isBlocked = z;
            Unit unit = Unit.INSTANCE;
            dispatchOnConstraintState();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
        synchronized (requestsLock) {
            try {
                cachedCapabilities = null;
                Iterator it = requests.keySet().iterator();
                while (it.hasNext()) {
                    ((Function1) it.next()).invoke(new ConstraintsState.ConstraintsNotMet(7));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void dispatchOnConstraintState() {
        Object constraintsNotMet;
        ArrayList arrayList = new ArrayList();
        synchronized (requestsLock) {
            try {
                for (Map.Entry entry : requests.entrySet()) {
                    Function1 function1 = (Function1) entry.getKey();
                    if (INSTANCE.areNetworkConstraintsSatisfied((NetworkRequest) entry.getValue(), cachedCapabilities)) {
                        constraintsNotMet = ConstraintsState.ConstraintsMet.INSTANCE;
                    } else {
                        constraintsNotMet = new ConstraintsState.ConstraintsNotMet(7);
                    }
                    arrayList.add(TuplesKt.m1081to(function1, constraintsNotMet));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Pair pair = (Pair) obj;
            ((Function1) pair.component1()).invoke((ConstraintsState) pair.component2());
        }
    }

    private final boolean areNetworkConstraintsSatisfied(NetworkRequest networkRequest, NetworkCapabilities networkCapabilities) {
        return !isBlocked && networkRequest.canBeSatisfiedBy(networkCapabilities);
    }

    public final Function0 addCallback(final ConnectivityManager connManager, NetworkRequest networkRequest, final Function1 onConstraintState) {
        ConstraintsState constraintsNotMet;
        Intrinsics.checkNotNullParameter(connManager, "connManager");
        Intrinsics.checkNotNullParameter(networkRequest, "networkRequest");
        Intrinsics.checkNotNullParameter(onConstraintState, "onConstraintState");
        synchronized (requestsLock) {
            try {
                Map map = requests;
                boolean zIsEmpty = map.isEmpty();
                map.put(onConstraintState, networkRequest);
                if (zIsEmpty) {
                    Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController register shared callback");
                    connManager.registerDefaultNetworkCallback(INSTANCE);
                }
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController send initial capabilities");
                SharedNetworkCallback sharedNetworkCallback = INSTANCE;
                if (sharedNetworkCallback.areNetworkConstraintsSatisfied(networkRequest, sharedNetworkCallback.getCurrentNetworkCapabilities(connManager))) {
                    constraintsNotMet = ConstraintsState.ConstraintsMet.INSTANCE;
                } else {
                    constraintsNotMet = new ConstraintsState.ConstraintsNotMet(7);
                }
                onConstraintState.invoke(constraintsNotMet);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new Function0() { // from class: androidx.work.impl.constraints.SharedNetworkCallback$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SharedNetworkCallback.addCallback$lambda$9(onConstraintState, connManager);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit addCallback$lambda$9(Function1 function1, ConnectivityManager connectivityManager) {
        synchronized (requestsLock) {
            Map map = requests;
            map.remove(function1);
            if (map.isEmpty()) {
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController unregister shared callback");
                connectivityManager.unregisterNetworkCallback(INSTANCE);
                isBlocked = false;
                cachedCapabilities = null;
                capabilitiesInitialized = false;
            }
        }
        return Unit.INSTANCE;
    }

    public final NetworkCapabilities getCurrentNetworkCapabilities(ConnectivityManager connectivityManager) {
        Intrinsics.checkNotNullParameter(connectivityManager, "<this>");
        if (capabilitiesInitialized) {
            return cachedCapabilities;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        cachedCapabilities = networkCapabilities;
        capabilitiesInitialized = true;
        return networkCapabilities;
    }
}
