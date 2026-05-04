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
public abstract class ListLikeDescriptor implements SerialDescriptor {
    private final SerialDescriptor elementDescriptor;
    private final int elementsCount;

    public /* synthetic */ ListLikeDescriptor(SerialDescriptor serialDescriptor, DefaultConstructorMarker defaultConstructorMarker) {
        this(serialDescriptor);
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

    private ListLikeDescriptor(SerialDescriptor serialDescriptor) {
        this.elementDescriptor = serialDescriptor;
        this.elementsCount = 1;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return StructureKind.LIST.INSTANCE;
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
        throw new IllegalArgumentException(name + " is not a valid list index");
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
        return this.elementDescriptor;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ListLikeDescriptor)) {
            return false;
        }
        ListLikeDescriptor listLikeDescriptor = (ListLikeDescriptor) obj;
        return Intrinsics.areEqual(this.elementDescriptor, listLikeDescriptor.elementDescriptor) && Intrinsics.areEqual(getSerialName(), listLikeDescriptor.getSerialName());
    }

    public int hashCode() {
        return (this.elementDescriptor.hashCode() * 31) + getSerialName().hashCode();
    }

    public String toString() {
        return getSerialName() + '(' + this.elementDescriptor + ')';
    }
}
