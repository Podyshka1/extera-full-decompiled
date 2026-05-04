.class public abstract Lkotlinx/serialization/internal/AbstractCollectionSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;-><init>()V

    return-void
.end method

.method public static synthetic readElement$default(Lkotlinx/serialization/internal/AbstractCollectionSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readElement"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final readSize(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/Object;)I
    .locals 1

    .line 46
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeCollectionSize(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p1

    .line 47
    invoke-virtual {p0, p2, p1}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->checkCapacity(Ljava/lang/Object;I)V

    return p1
.end method


# virtual methods
.method protected abstract builder()Ljava/lang/Object;
.end method

.method protected abstract builderSize(Ljava/lang/Object;)I
.end method

.method protected abstract checkCapacity(Ljava/lang/Object;I)V
.end method

.method protected abstract collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end method

.method protected abstract collectionSize(Ljava/lang/Object;)I
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->merge(Lkotlinx/serialization/encoding/Decoder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final merge(Lkotlinx/serialization/encoding/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->toBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, p2

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->builder()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 28
    :goto_2
    invoke-virtual {p0, v3}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->builderSize(Ljava/lang/Object;)I

    move-result p2

    .line 29
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    .line 30
    invoke-interface {v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    invoke-direct {p0, v1, v3}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->readSize(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, v1, v3, p2, p1}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->readAll(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/Object;II)V

    :cond_2
    move-object v0, p0

    goto :goto_4

    .line 34
    :cond_3
    :goto_3
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    add-int v2, p2, p1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 36
    invoke-static/range {v0 .. v6}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->readElement$default(Lkotlinx/serialization/internal/AbstractCollectionSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;ZILjava/lang/Object;)V

    goto :goto_3

    .line 39
    :goto_4
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 40
    invoke-virtual {p0, v3}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->toResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract readAll(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/Object;II)V
.end method

.method protected abstract readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
.end method

.method protected abstract toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected abstract toResult(Ljava/lang/Object;)Ljava/lang/Object;
.end method
