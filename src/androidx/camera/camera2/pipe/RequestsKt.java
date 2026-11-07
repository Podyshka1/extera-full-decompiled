package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.core.Log;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Map;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0004\u001a'\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\u0012\u0010\u0003\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\t\u001a\u00020\u0004*\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\t\u0010\n\u001a5\u0010\r\u001a\u00020\u0004*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroid/hardware/camera2/CaptureRequest$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "parameters", _UrlKt.FRAGMENT_ENCODE_SET, "writeParameters", "(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V", PluginsConstants.Settings.KEY, "value", "writeParameter", "(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;Ljava/lang/Object;)V", _UrlKt.FRAGMENT_ENCODE_SET, "metadata", "putAllMetadata", "(Ljava/util/Map;Ljava/util/Map;)V", "camera-camera2-pipe"}, m910k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRequests.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Requests.kt\nandroidx/camera/camera2/pipe/RequestsKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,480:1\n490#2,7:481\n480#2:488\n426#2:489\n490#2,7:494\n480#2:501\n426#2:502\n1252#3,4:490\n1252#3,4:503\n75#4,2:507\n*S KotlinDebug\n*F\n+ 1 Requests.kt\nandroidx/camera/camera2/pipe/RequestsKt\n*L\n442#1:481,7\n442#1:488\n442#1:489\n446#1:494,7\n446#1:501\n446#1:502\n442#1:490,4\n446#1:503,4\n467#1:507,2\n*E\n"})
public abstract class RequestsKt {
    public static final void writeParameters(CaptureRequest.Builder builder, Map<?, ? extends Object> map) {
        for (Map.Entry<?, ? extends Object> entry : map.entrySet()) {
            writeParameter(builder, entry.getKey(), entry.getValue());
        }
    }

    public static final void writeParameter(CaptureRequest.Builder builder, Object obj, Object obj2) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static final void putAllMetadata(Map<Object, Object> map, Map<?, ? extends Object> map2) {
        map.putAll(map2);
    }
}
