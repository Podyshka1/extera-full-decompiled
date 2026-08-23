package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.core.impl.Config;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2ImplConfigKt {
    public static final Config.Option createCaptureRequestOption(CaptureRequest.Key key) {
        Intrinsics.checkNotNullParameter(key, "<this>");
        Config.Option optionCreate = Config.Option.create("camera2.captureRequest.option." + key.getName(), Object.class, key);
        Intrinsics.checkNotNullExpressionValue(optionCreate, "create(...)");
        return optionCreate;
    }

    public static final Map toParameters(Config config) {
        Object objRetrieveOption;
        Intrinsics.checkNotNullParameter(config, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Config.Option option : config.listOptions()) {
            Object token = option.getToken();
            CaptureRequest.Key key = token instanceof CaptureRequest.Key ? (CaptureRequest.Key) token : null;
            if (key != null && (objRetrieveOption = config.retrieveOption(option)) != null) {
                linkedHashMap.put(key, objRetrieveOption);
            }
        }
        return linkedHashMap;
    }
}
