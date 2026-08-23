package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameMetadata;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\u001a.\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0000¨\u0006\b"}, d2 = {"toConditionChecker", "Lkotlin/Function1;", "Landroidx/camera/camera2/pipe/FrameMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureResult$Key;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2-pipe"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Result3AStateListenerKt {
    public static final Function1<FrameMetadata, Boolean> toConditionChecker(final Map<CaptureResult.Key<?>, ? extends List<? extends Object>> map) {
        return new Function1() { // from class: androidx.camera.camera2.pipe.graph.Result3AStateListenerKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(Result3AStateListenerKt.$r8$lambda$6eKrfLPahyf8ytTlPs2wBLGcMEY(map, (FrameMetadata) obj));
            }
        };
    }

    public static boolean $r8$lambda$6eKrfLPahyf8ytTlPs2wBLGcMEY(Map map, FrameMetadata frameMetadata) {
        for (Map.Entry entry : map.entrySet()) {
            CaptureResult.Key key = (CaptureResult.Key) entry.getKey();
            if (!CollectionsKt.contains((List) entry.getValue(), frameMetadata.get(key))) {
                return false;
            }
        }
        return true;
    }
}
