package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes.dex */
public final class ArrayListClassDesc extends ListLikeDescriptor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArrayListClassDesc(SerialDescriptor elementDesc) {
        super(elementDesc, null);
        Intrinsics.checkNotNullParameter(elementDesc, "elementDesc");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return "kotlin.collections.ArrayList";
    }
}
