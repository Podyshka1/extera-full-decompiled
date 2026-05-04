.class public interface abstract Lkotlinx/serialization/encoding/Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract beginCollection(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/CompositeEncoder;
.end method

.method public abstract beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
.end method

.method public abstract encodeBoolean(Z)V
.end method

.method public abstract encodeDouble(D)V
.end method

.method public abstract encodeInt(I)V
.end method

.method public abstract encodeLong(J)V
.end method

.method public abstract encodeNotNullMark()V
.end method

.method public abstract encodeNull()V
.end method

.method public abstract encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
.end method

.method public abstract encodeString(Ljava/lang/String;)V
.end method
