package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameMetadata;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Result3AStateListenerKt {
    public static final Function1 toConditionChecker(final Map map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return new Function1() { // from class: androidx.camera.camera2.pipe.graph.Result3AStateListenerKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(Result3AStateListenerKt.toConditionChecker$lambda$0(map, (FrameMetadata) obj));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean toConditionChecker$lambda$0(Map map, FrameMetadata frameMetadata) {
        Intrinsics.checkNotNullParameter(frameMetadata, "frameMetadata");
        for (Map.Entry entry : map.entrySet()) {
            CaptureResult.Key key = (CaptureResult.Key) entry.getKey();
            if (!CollectionsKt.contains((List) entry.getValue(), frameMetadata.get(key))) {
                return false;
            }
        }
        return true;
    }
}
