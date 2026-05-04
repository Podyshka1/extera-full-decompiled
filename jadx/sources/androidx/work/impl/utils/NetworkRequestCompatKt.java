package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.os.Build;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NetworkRequestCompatKt {
    private static final int[] defaultCapabilities = {13, 15, 14};

    public static final int[] getTransportTypesCompat(NetworkRequest networkRequest) {
        Intrinsics.checkNotNullParameter(networkRequest, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            return NetworkRequest31.INSTANCE.transportTypes(networkRequest);
        }
        int[] iArr = {2, 0, 3, 6, 10, 9, 8, 4, 1, 5};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 10; i++) {
            int i2 = iArr[i];
            if (NetworkRequest28.INSTANCE.hasTransport$work_runtime_release(networkRequest, i2)) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        return CollectionsKt.toIntArray(arrayList);
    }

    public static final int[] getCapabilitiesCompat(NetworkRequest networkRequest) {
        Intrinsics.checkNotNullParameter(networkRequest, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            return NetworkRequest31.INSTANCE.capabilities(networkRequest);
        }
        int[] iArr = {17, 5, 2, 10, 29, 19, 3, 32, 7, 4, 12, 36, 23, 0, 33, 20, 11, 13, 18, 21, 15, 35, 34, 8, 1, 25, 14, 16, 6, 9};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 30; i++) {
            int i2 = iArr[i];
            if (NetworkRequest28.INSTANCE.hasCapability$work_runtime_release(networkRequest, i2)) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        return CollectionsKt.toIntArray(arrayList);
    }
}
