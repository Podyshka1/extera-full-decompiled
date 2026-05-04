package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ElementMarker;

/* JADX INFO: loaded from: classes.dex */
public final class JsonElementMarker {
    private boolean isUnmarkedNull;
    private final ElementMarker origin;

    public JsonElementMarker(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        this.origin = new ElementMarker(descriptor, new JsonElementMarker$origin$1(this));
    }

    public final boolean isUnmarkedNull$kotlinx_serialization_json() {
        return this.isUnmarkedNull;
    }

    public final void mark$kotlinx_serialization_json(int i) {
        this.origin.mark(i);
    }

    public final int nextUnmarkedIndex$kotlinx_serialization_json() {
        return this.origin.nextUnmarkedIndex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean readIfAbsent(SerialDescriptor serialDescriptor, int i) {
        boolean z = !serialDescriptor.isElementOptional(i) && serialDescriptor.getElementDescriptor(i).isNullable();
        this.isUnmarkedNull = z;
        return z;
    }
}
