package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes.dex */
public final class LinkedHashMapClassDesc extends MapLikeDescriptor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedHashMapClassDesc(SerialDescriptor keyDesc, SerialDescriptor valueDesc) {
        super("kotlin.collections.LinkedHashMap", keyDesc, valueDesc, null);
        Intrinsics.checkNotNullParameter(keyDesc, "keyDesc");
        Intrinsics.checkNotNullParameter(valueDesc, "valueDesc");
    }
}
