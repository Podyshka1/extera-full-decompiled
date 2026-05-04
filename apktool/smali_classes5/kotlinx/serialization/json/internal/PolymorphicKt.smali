.class public abstract Lkotlinx/serialization/json/internal/PolymorphicKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/PolymorphicKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final synthetic access$validateIfSealed(Lkotlinx/serialization/SerializationStrategy;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/internal/PolymorphicKt;->validateIfSealed(Lkotlinx/serialization/SerializationStrategy;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkKind(Lkotlinx/serialization/descriptors/SerialKind;)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    instance-of v0, p0, Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    if-nez v0, :cond_2

    .line 72
    instance-of v0, p0, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v0, :cond_1

    .line 73
    instance-of p0, p0, Lkotlinx/serialization/descriptors/PolymorphicKind;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getAnnotations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 100
    instance-of v1, v0, Lkotlinx/serialization/json/JsonClassDiscriminator;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/serialization/json/JsonClassDiscriminator;

    invoke-interface {v0}, Lkotlinx/serialization/json/JsonClassDiscriminator;->discriminator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_1
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final validateIfSealed(Lkotlinx/serialization/SerializationStrategy;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/String;)V
    .locals 1

    .line 56
    instance-of v0, p0, Lkotlinx/serialization/SealedClassSerializer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/internal/JsonInternalDependenciesKt;->jsonCachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {p0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
