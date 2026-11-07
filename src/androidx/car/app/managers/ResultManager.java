package androidx.car.app.managers;

import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.car.app.CarAppMetadataHolderService;
import androidx.car.app.CarContext;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public interface ResultManager extends Manager {
    static ResultManager create(CarContext carContext) {
        try {
            Bundle bundle = CarAppMetadataHolderService.getServiceInfo(carContext).metaData;
            String string = bundle != null ? bundle.getString("androidx.car.app.CarAppMetadataHolderService.RESULT_MANAGER") : null;
            if (string == null) {
                throw new ClassNotFoundException("ResultManager metadata could not be found");
            }
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Class.forName(string).getConstructor(null).newInstance(null));
            return null;
        } catch (PackageManager.NameNotFoundException | ReflectiveOperationException unused) {
            Segment$$ExternalSyntheticBUOutline1.m925m("ResultManager not configured. Did you forget to add a dependency on the app-automotive artifact?");
            return null;
        }
    }
}
