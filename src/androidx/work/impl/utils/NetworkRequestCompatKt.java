package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.os.Build;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028G¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00028G¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"transportTypesCompat", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/net/NetworkRequest;", "getTransportTypesCompat", "(Landroid/net/NetworkRequest;)[I", "capabilitiesCompat", "getCapabilitiesCompat", "defaultCapabilities", "work-runtime_release"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNetworkRequestCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkRequestCompat.kt\nandroidx/work/impl/utils/NetworkRequestCompatKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,176:1\n3856#2:177\n4374#2,2:178\n3856#2:180\n4374#2,2:181\n*S KotlinDebug\n*F\n+ 1 NetworkRequestCompat.kt\nandroidx/work/impl/utils/NetworkRequestCompatKt\n*L\n53#1:177\n53#1:178,2\n95#1:180\n95#1:181,2\n*E\n"})
public abstract class NetworkRequestCompatKt {
    private static final int[] defaultCapabilities = {13, 15, 14};

    public static final int[] getTransportTypesCompat(NetworkRequest networkRequest) {
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
