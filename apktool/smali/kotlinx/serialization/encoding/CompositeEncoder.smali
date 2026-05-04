.class public interface abstract Lkotlinx/serialization/encoding/CompositeEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V
.end method

.method public abstract encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V
.end method

.method public abstract encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
.end method

.method public abstract encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
.end method

.method public abstract encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
.end method

.method public abstract endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
.end method

.method public abstract shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
.end method
