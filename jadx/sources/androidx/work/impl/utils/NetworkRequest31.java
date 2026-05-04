package androidx.work.impl.utils;

import android.net.NetworkRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
final class NetworkRequest31 {
    public static final NetworkRequest31 INSTANCE = new NetworkRequest31();

    private NetworkRequest31() {
    }

    public final int[] capabilities(NetworkRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        int[] capabilities = request.getCapabilities();
        Intrinsics.checkNotNullExpressionValue(capabilities, "getCapabilities(...)");
        return capabilities;
    }

    public final int[] transportTypes(NetworkRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        int[] transportTypes = request.getTransportTypes();
        Intrinsics.checkNotNullExpressionValue(transportTypes, "getTransportTypes(...)");
        return transportTypes;
    }
}
