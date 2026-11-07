package androidx.transition;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Scene {
    public static void setCurrentScene(ViewGroup viewGroup, Scene scene) {
        viewGroup.setTag(R$id.transition_current_scene, scene);
    }

    public static Scene getCurrentScene(ViewGroup viewGroup) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(viewGroup.getTag(R$id.transition_current_scene));
        return null;
    }
}
