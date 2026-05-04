.class public final Landroidx/camera/video/MediaSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/MediaSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/video/MediaSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final builder()Landroidx/camera/video/MediaSpec$Builder;
    .locals 1

    .line 167
    new-instance v0, Landroidx/camera/video/MediaSpec$Builder;

    invoke-direct {v0}, Landroidx/camera/video/MediaSpec$Builder;-><init>()V

    return-object v0
.end method

.method public final outputFormatToMuxerFormat(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final outputFormatToVideoMime(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 152
    const-string p1, "video/x-vnd.on2.vp8"

    return-object p1

    .line 153
    :cond_0
    const-string p1, "video/avc"

    return-object p1
.end method
