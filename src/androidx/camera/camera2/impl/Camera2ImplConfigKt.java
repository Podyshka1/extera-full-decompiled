package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.core.impl.Config;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0003H\u0000\u001a\u001a\u0010\u0004\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u0006¨\u0006\u0007"}, d2 = {"createCaptureRequestOption", "Landroidx/camera/core/impl/Config$Option;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", "toParameters", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/Config;", "camera-camera2"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Camera2ImplConfigKt {
    public static final Config.Option<Object> createCaptureRequestOption(CaptureRequest.Key<?> key) {
        return Config.Option.create("camera2.captureRequest.option." + key.getName(), Object.class, key);
    }

    public static final Map<CaptureRequest.Key<?>, Object> toParameters(Config config) {
        Object objRetrieveOption;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Config.Option<?> option : config.listOptions()) {
            Object token = option.getToken();
            CaptureRequest.Key key = token instanceof CaptureRequest.Key ? (CaptureRequest.Key) token : null;
            if (key != null && (objRetrieveOption = config.retrieveOption(option)) != null) {
                linkedHashMap.put(key, objRetrieveOption);
            }
        }
        return linkedHashMap;
    }
}
