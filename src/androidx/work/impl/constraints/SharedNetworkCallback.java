package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0011\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0005\u0010\u0003J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J;\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u001e2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00040\u001aj\u0002`\u001c¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R0\u0010%\u001a\u001e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00040\u001aj\u0002`\u001c\u0012\u0004\u0012\u00020\u00060$8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b%\u0010&R$\u0010'\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010-\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0018\u00103\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u00065"}, d2 = {"Landroidx/work/impl/constraints/SharedNetworkCallback;", "Landroid/net/ConnectivityManager$NetworkCallback;", "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "dispatchOnConstraintState", "Landroid/net/NetworkRequest;", PluginsConstants.REQUEST, "Landroid/net/NetworkCapabilities;", "capabilities", _UrlKt.FRAGMENT_ENCODE_SET, "areNetworkConstraintsSatisfied", "(Landroid/net/NetworkRequest;Landroid/net/NetworkCapabilities;)Z", "Landroid/net/Network;", "network", "networkCapabilities", "onCapabilitiesChanged", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "blocked", "onBlockedStatusChanged", "(Landroid/net/Network;Z)V", "onLost", "(Landroid/net/Network;)V", "Landroid/net/ConnectivityManager;", "connManager", "networkRequest", "Lkotlin/Function1;", "Landroidx/work/impl/constraints/ConstraintsState;", "Landroidx/work/impl/constraints/OnConstraintState;", "onConstraintState", "Lkotlin/Function0;", "addCallback", "(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "requestsLock", "Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "requests", "Ljava/util/Map;", "cachedCapabilities", "Landroid/net/NetworkCapabilities;", "getCachedCapabilities", "()Landroid/net/NetworkCapabilities;", "setCachedCapabilities", "(Landroid/net/NetworkCapabilities;)V", "capabilitiesInitialized", "Z", "getCapabilitiesInitialized", "()Z", "setCapabilitiesInitialized", "(Z)V", "isBlocked", "Ljava/lang/Boolean;", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkConstraintsTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/SharedNetworkCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,394:1\n1869#2,2:395\n1869#2,2:397\n1869#2,2:399\n*S KotlinDebug\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/SharedNetworkCallback\n*L\n312#1:395,2\n331#1:397,2\n341#1:399,2\n*E\n"})
final class SharedNetworkCallback extends ConnectivityManager.NetworkCallback {
    private static NetworkCapabilities cachedCapabilities;
    private static boolean capabilitiesInitialized;
    private static Boolean isBlocked;
    public static final SharedNetworkCallback INSTANCE = new SharedNetworkCallback();
    private static final Object requestsLock = new Object();
    private static final Map<Function1<ConstraintsState, Unit>, NetworkRequest> requests = new LinkedHashMap();

    private SharedNetworkCallback() {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        synchronized (requestsLock) {
            cachedCapabilities = networkCapabilities;
            capabilitiesInitialized = true;
            Unit unit = Unit.INSTANCE;
        }
        dispatchOnConstraintState();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onBlockedStatusChanged(Network network, boolean blocked) {
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onBlockedStatusChanged callback " + blocked);
        synchronized (requestsLock) {
            if (Intrinsics.areEqual(isBlocked, Boolean.valueOf(blocked))) {
                return;
            }
            isBlocked = Boolean.valueOf(blocked);
            Unit unit = Unit.INSTANCE;
            dispatchOnConstraintState();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
        synchronized (requestsLock) {
            try {
                cachedCapabilities = null;
                Iterator<T> it = requests.keySet().iterator();
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
        ArrayList arrayList = new ArrayList();
        synchronized (requestsLock) {
            try {
                if (capabilitiesInitialized && isBlocked != null) {
                    Iterator<T> it = requests.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        arrayList.add(TuplesKt.to((Function1) entry.getKey(), INSTANCE.areNetworkConstraintsSatisfied((NetworkRequest) entry.getValue(), cachedCapabilities) ? ConstraintsState.ConstraintsMet.INSTANCE : new ConstraintsState.ConstraintsNotMet(7)));
                    }
                    Unit unit = Unit.INSTANCE;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        Pair pair = (Pair) obj;
                        ((Function1) pair.component1()).invoke((ConstraintsState) pair.component2());
                    }
                    return;
                }
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "Not dispatching constraint state yet: isBlocked=" + isBlocked + ", capabilitiesInitialized=" + capabilitiesInitialized);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final boolean areNetworkConstraintsSatisfied(NetworkRequest request, NetworkCapabilities capabilities) {
        return !isBlocked.booleanValue() && request.canBeSatisfiedBy(capabilities);
    }

    public final Function0<Unit> addCallback(final ConnectivityManager connManager, NetworkRequest networkRequest, final Function1<? super ConstraintsState, Unit> onConstraintState) {
        ConstraintsState constraintsNotMet;
        synchronized (requestsLock) {
            try {
                Map<Function1<ConstraintsState, Unit>, NetworkRequest> map = requests;
                boolean zIsEmpty = map.isEmpty();
                map.put(onConstraintState, networkRequest);
                if (zIsEmpty) {
                    Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController register shared callback");
                    connManager.registerDefaultNetworkCallback(INSTANCE);
                } else if (capabilitiesInitialized && isBlocked != null) {
                    Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController send initial capabilities");
                    if (INSTANCE.areNetworkConstraintsSatisfied(networkRequest, cachedCapabilities)) {
                        constraintsNotMet = ConstraintsState.ConstraintsMet.INSTANCE;
                    } else {
                        constraintsNotMet = new ConstraintsState.ConstraintsNotMet(7);
                    }
                    onConstraintState.invoke(constraintsNotMet);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new Function0() { // from class: androidx.work.impl.constraints.SharedNetworkCallback$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SharedNetworkCallback.$r8$lambda$Q7h7Cx5HQAZzRkjy7fwCyD8Gxsg(onConstraintState, connManager);
            }
        };
    }

    public static Unit $r8$lambda$Q7h7Cx5HQAZzRkjy7fwCyD8Gxsg(Function1 function1, ConnectivityManager connectivityManager) {
        synchronized (requestsLock) {
            Map<Function1<ConstraintsState, Unit>, NetworkRequest> map = requests;
            map.remove(function1);
            if (map.isEmpty()) {
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController unregister shared callback");
                connectivityManager.unregisterNetworkCallback(INSTANCE);
                isBlocked = null;
                cachedCapabilities = null;
                capabilitiesInitialized = false;
            }
        }
        return Unit.INSTANCE;
    }
}
