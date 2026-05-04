.class public abstract Lkotlinx/serialization/builtins/BuiltinSerializersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/NullableSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/NullableSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
