package androidx.transition;

import android.view.ViewGroup;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Scene {
    static void setCurrentScene(ViewGroup viewGroup, Scene scene) {
        viewGroup.setTag(R$id.transition_current_scene, scene);
    }

    public static Scene getCurrentScene(ViewGroup viewGroup) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(viewGroup.getTag(R$id.transition_current_scene));
        return null;
    }
}
