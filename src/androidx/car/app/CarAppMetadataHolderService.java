package androidx.car.app;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.os.IBinder;

/* JADX INFO: loaded from: classes3.dex */
public class CarAppMetadataHolderService extends Service {

    public static class Api24Impl {
        public static int getDisabledComponentFlag() {
            return 512;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    private CarAppMetadataHolderService() {
    }

    public static ServiceInfo getServiceInfo(Context context) {
        return context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) CarAppMetadataHolderService.class), Api24Impl.getDisabledComponentFlag() | 128);
    }
}
