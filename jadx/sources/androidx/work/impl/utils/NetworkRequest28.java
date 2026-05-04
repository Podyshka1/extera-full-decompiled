package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class NetworkRequest28 {
    public static final NetworkRequest28 INSTANCE = new NetworkRequest28();

    private NetworkRequest28() {
    }

    public final boolean hasCapability$work_runtime_release(NetworkRequest request, int i) {
        Intrinsics.checkNotNullParameter(request, "request");
        return request.hasCapability(i);
    }

    public final boolean hasTransport$work_runtime_release(NetworkRequest request, int i) {
        Intrinsics.checkNotNullParameter(request, "request");
        return request.hasTransport(i);
    }

    public static final NetworkRequest createNetworkRequest(int[] capabilities, int[] transports) {
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        Intrinsics.checkNotNullParameter(transports, "transports");
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : capabilities) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException e) {
                Logger.get().warning(NetworkRequestCompat.Companion.getTAG(), "Ignoring adding capability '" + i + '\'', e);
            }
        }
        for (int i2 : NetworkRequestCompatKt.defaultCapabilities) {
            if (!ArraysKt.contains(capabilities, i2)) {
                try {
                    builder.removeCapability(i2);
                } catch (IllegalArgumentException e2) {
                    Logger.get().warning(NetworkRequestCompat.Companion.getTAG(), "Ignoring removing default capability '" + i2 + '\'', e2);
                }
            }
        }
        for (int i3 : transports) {
            builder.addTransportType(i3);
        }
        NetworkRequest networkRequestBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(networkRequestBuild, "build(...)");
        return networkRequestBuild;
    }

    public final NetworkRequestCompat createNetworkRequestCompat$work_runtime_release(int[] capabilities, int[] transports) {
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        Intrinsics.checkNotNullParameter(transports, "transports");
        return new NetworkRequestCompat(createNetworkRequest(capabilities, transports));
    }
}
