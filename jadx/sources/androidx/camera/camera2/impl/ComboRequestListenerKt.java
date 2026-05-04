package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.impl.TagBundle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ComboRequestListenerKt {
    public static final boolean containsTag(RequestMetadata requestMetadata, String tagKey, Object tagValue) {
        Intrinsics.checkNotNullParameter(requestMetadata, "<this>");
        Intrinsics.checkNotNullParameter(tagKey, "tagKey");
        Intrinsics.checkNotNullParameter(tagValue, "tagValue");
        return Intrinsics.areEqual(((TagBundle) requestMetadata.getOrDefault(TagsKt.getCAMERAX_TAG_BUNDLE(), TagBundle.emptyBundle())).getTag(tagKey), tagValue);
    }
}
