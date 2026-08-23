package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.core.Log;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RequestsKt {
    public static final void writeParameters(CaptureRequest.Builder builder, Map parameters) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        for (Map.Entry entry : parameters.entrySet()) {
            writeParameter(builder, entry.getKey(), entry.getValue());
        }
    }

    public static final void writeParameter(CaptureRequest.Builder builder, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (obj == null || !(obj instanceof CaptureRequest.Key)) {
            return;
        }
        try {
            builder.set((CaptureRequest.Key) obj, obj2);
        } catch (IllegalArgumentException e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to set [" + ((CaptureRequest.Key) obj).getName() + ": " + obj2 + "] on CaptureRequest.Builder", e);
            }
        }
    }

    public static final void putAllMetadata(Map map, Map metadata) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        map.putAll(metadata);
    }
}
