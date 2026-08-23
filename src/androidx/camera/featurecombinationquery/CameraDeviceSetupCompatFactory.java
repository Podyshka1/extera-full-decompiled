package androidx.camera.featurecombinationquery;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class CameraDeviceSetupCompatFactory {
    private CameraDeviceSetupCompatProvider mCamera2Provider;
    private final Context mContext;
    private CameraDeviceSetupCompatProvider mPlayServicesProvider;

    public CameraDeviceSetupCompatFactory(Context context) {
        this.mContext = context;
        if (Build.VERSION.SDK_INT >= 35) {
            this.mCamera2Provider = new Camera2CameraDeviceSetupCompatProvider(context);
        }
        this.mPlayServicesProvider = getPlayServicesCameraDeviceSetupCompatProvider();
    }

    public CameraDeviceSetupCompat getCameraDeviceSetupCompat(String str) {
        ArrayList arrayList = new ArrayList();
        CameraDeviceSetupCompatProvider cameraDeviceSetupCompatProvider = this.mPlayServicesProvider;
        if (cameraDeviceSetupCompatProvider != null) {
            arrayList.add(cameraDeviceSetupCompatProvider.getCameraDeviceSetupCompat(str));
        }
        CameraDeviceSetupCompatProvider cameraDeviceSetupCompatProvider2 = this.mCamera2Provider;
        if (cameraDeviceSetupCompatProvider2 != null) {
            try {
                arrayList.add(cameraDeviceSetupCompatProvider2.getCameraDeviceSetupCompat(str));
            } catch (UnsupportedOperationException unused) {
            }
        }
        return new AggregatedCameraDeviceSetupCompat(arrayList);
    }

    private CameraDeviceSetupCompatProvider getPlayServicesCameraDeviceSetupCompatProvider() {
        String string;
        try {
            ServiceInfo[] serviceInfoArr = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 132).services;
            if (serviceInfoArr == null) {
                return null;
            }
            String str = null;
            for (ServiceInfo serviceInfo : serviceInfoArr) {
                Bundle bundle = serviceInfo.metaData;
                if (bundle != null && (string = bundle.getString("androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY")) != null) {
                    if (str != null) {
                        throw new IllegalStateException("Multiple Play Services CameraDeviceSetupCompat implementations found in the manifest.");
                    }
                    str = string;
                }
            }
            if (str == null) {
                return null;
            }
            return instantiatePlayServicesImplProvider(str);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private CameraDeviceSetupCompatProvider instantiatePlayServicesImplProvider(String str) {
        try {
            return (CameraDeviceSetupCompatProvider) Class.forName(str).getConstructor(Context.class).newInstance(this.mContext);
        } catch (Exception e) {
            throw new IllegalStateException("Failed to instantiate Play Services CameraDeviceSetupCompat implementation", e);
        }
    }
}
