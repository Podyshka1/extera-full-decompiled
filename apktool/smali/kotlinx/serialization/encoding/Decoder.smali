.class public interface abstract Lkotlinx/serialization/encoding/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
.end method

.method public abstract decodeBoolean()Z
.end method

.method public abstract decodeDouble()D
.end method

.method public abstract decodeInt()I
.end method

.method public abstract decodeLong()J
.end method

.method public abstract decodeNotNullMark()Z
.end method

.method public abstract decodeNull()Ljava/lang/Void;
.end method

.method public abstract decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
.end method

.method public abstract decodeString()Ljava/lang/String;
.end method
