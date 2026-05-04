.class public abstract Lkotlinx/serialization/descriptors/PrimitiveKind;
.super Lkotlinx/serialization/descriptors/SerialKind;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;,
        Lkotlinx/serialization/descriptors/PrimitiveKind$DOUBLE;,
        Lkotlinx/serialization/descriptors/PrimitiveKind$INT;,
        Lkotlinx/serialization/descriptors/PrimitiveKind$LONG;,
        Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/SerialKind;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lkotlinx/serialization/descriptors/PrimitiveKind;-><init>()V

    return-void
.end method
