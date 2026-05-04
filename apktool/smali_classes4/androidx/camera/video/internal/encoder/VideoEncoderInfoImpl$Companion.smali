.class public final Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$toIllegalArgumentException(Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;->toIllegalArgumentException(Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    return-object p0
.end method

.method private final toIllegalArgumentException(Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 111
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method
