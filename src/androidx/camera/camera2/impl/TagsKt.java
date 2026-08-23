package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.core.impl.TagBundle;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TagsKt {
    private static final Metadata.Key CAMERAX_TAG_BUNDLE;
    private static final Metadata.Key USE_CASE_CAMERA_STATE_CUSTOM_TAG;

    public static final Metadata.Key getCAMERAX_TAG_BUNDLE() {
        return CAMERAX_TAG_BUNDLE;
    }

    static {
        Metadata.Key.Companion companion = Metadata.Key.Companion;
        CAMERAX_TAG_BUNDLE = companion.create("camerax.tag_bundle", Reflection.getOrCreateKotlinClass(TagBundle.class));
        USE_CASE_CAMERA_STATE_CUSTOM_TAG = companion.create("use_case_camera_state.tag", Reflection.getOrCreateKotlinClass(Integer.class));
    }

    public static final Metadata.Key getUSE_CASE_CAMERA_STATE_CUSTOM_TAG() {
        return USE_CASE_CAMERA_STATE_CUSTOM_TAG;
    }
}
