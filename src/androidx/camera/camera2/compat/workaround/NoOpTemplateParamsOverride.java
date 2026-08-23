package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.RequestTemplate;
import java.util.Map;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class NoOpTemplateParamsOverride implements TemplateParamsOverride {
    public static final NoOpTemplateParamsOverride INSTANCE = new NoOpTemplateParamsOverride();

    private NoOpTemplateParamsOverride() {
    }

    @Override // androidx.camera.camera2.compat.workaround.TemplateParamsOverride
    /* JADX INFO: renamed from: getOverrideParams-xlOpshk, reason: not valid java name */
    public Map mo1415getOverrideParamsxlOpshk(RequestTemplate requestTemplate) {
        return MapsKt.emptyMap();
    }
}
