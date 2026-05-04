package kotlinx.serialization.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;

/* JADX INFO: loaded from: classes.dex */
public abstract class MapLikeDescriptor implements SerialDescriptor {
    private final int elementsCount;
    private final SerialDescriptor keyDescriptor;
    private final String serialName;
    private final SerialDescriptor valueDescriptor;

    public /* synthetic */ MapLikeDescriptor(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, serialDescriptor, serialDescriptor2);
    }

    private MapLikeDescriptor(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.serialName = str;
        this.keyDescriptor = serialDescriptor;
        this.valueDescriptor = serialDescriptor2;
        this.elementsCount = 2;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List getAnnotations() {
        return CollectionsKt.emptyList();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.CC.$default$isInline(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return SerialDescriptor.CC.$default$isNullable(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return StructureKind.MAP.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i) {
        return String.valueOf(i);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Integer intOrNull = StringsKt.toIntOrNull(name);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isElementOptional(int i) {
        if (i >= 0) {
            return false;
        }
        throw new IllegalArgumentException(("Illegal index " + i + ", " + getSerialName() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List getElementAnnotations(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(("Illegal index " + i + ", " + getSerialName() + " expects only non-negative indices").toString());
        }
        return CollectionsKt.emptyList();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(("Illegal index " + i + ", " + getSerialName() + " expects only non-negative indices").toString());
        }
        int i2 = i % 2;
        if (i2 == 0) {
            return this.keyDescriptor;
        }
        if (i2 == 1) {
            return this.valueDescriptor;
        }
        throw new IllegalStateException("Unreached");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapLikeDescriptor)) {
            return false;
        }
        MapLikeDescriptor mapLikeDescriptor = (MapLikeDescriptor) obj;
        return Intrinsics.areEqual(getSerialName(), mapLikeDescriptor.getSerialName()) && Intrinsics.areEqual(this.keyDescriptor, mapLikeDescriptor.keyDescriptor) && Intrinsics.areEqual(this.valueDescriptor, mapLikeDescriptor.valueDescriptor);
    }

    public int hashCode() {
        return (((getSerialName().hashCode() * 31) + this.keyDescriptor.hashCode()) * 31) + this.valueDescriptor.hashCode();
    }

    public String toString() {
        return getSerialName() + '(' + this.keyDescriptor + ", " + this.valueDescriptor + ')';
    }
}
