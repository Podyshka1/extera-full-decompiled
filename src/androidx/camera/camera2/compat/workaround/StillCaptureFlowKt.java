package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.StillCaptureFlashStopRepeatingQuirk;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestTemplate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\u0004"}, d2 = {"shouldStopRepeatingBeforeCapture", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Request;", "camera-camera2"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStillCaptureFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StillCaptureFlow.kt\nandroidx/camera/camera2/compat/workaround/StillCaptureFlowKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1869#2,2:48\n*S KotlinDebug\n*F\n+ 1 StillCaptureFlow.kt\nandroidx/camera/camera2/compat/workaround/StillCaptureFlowKt\n*L\n32#1:48,2\n*E\n"})
public abstract class StillCaptureFlowKt {
    public static final boolean shouldStopRepeatingBeforeCapture(List<Request> list) {
        if (((StillCaptureFlashStopRepeatingQuirk) DeviceQuirks.INSTANCE.get(StillCaptureFlashStopRepeatingQuirk.class)) == null) {
            return false;
        }
        boolean z = false;
        boolean z2 = false;
        for (Request request : list) {
            RequestTemplate template = request.getTemplate();
            if (template != null && template.getValue() == 2) {
                z = true;
            }
            Integer num = (Integer) request.get(CaptureRequest.CONTROL_AE_MODE);
            if ((num != null && num.intValue() == 2) || (num != null && num.intValue() == 3)) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
