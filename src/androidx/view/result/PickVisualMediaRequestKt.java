package androidx.view.result;

import androidx.view.result.PickVisualMediaRequest;
import androidx.view.result.contract.ActivityResultContracts$PickVisualMedia;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"PickVisualMediaRequest", "Landroidx/activity/result/PickVisualMediaRequest;", "mediaType", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;", "activity_release"}, m862k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class PickVisualMediaRequestKt {
    public static final PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts$PickVisualMedia.VisualMediaType visualMediaType) {
        return new PickVisualMediaRequest.Builder().setMediaType(visualMediaType).build();
    }
}
