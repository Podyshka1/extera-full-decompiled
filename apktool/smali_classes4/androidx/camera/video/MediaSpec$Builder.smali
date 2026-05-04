.class public final Landroidx/camera/video/MediaSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/MediaSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioSpec:Landroidx/camera/video/AudioSpec;

.field private outputFormat:I

.field private videoSpec:Landroidx/camera/video/VideoSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Landroidx/camera/video/AudioSpec;->Companion:Landroidx/camera/video/AudioSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec$Companion;->getDEFAULT()Landroidx/camera/video/AudioSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/MediaSpec$Builder;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 73
    sget-object v0, Landroidx/camera/video/VideoSpec;->Companion:Landroidx/camera/video/VideoSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Companion;->getDEFAULT()Landroidx/camera/video/VideoSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/MediaSpec$Builder;->videoSpec:Landroidx/camera/video/VideoSpec;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Landroidx/camera/video/MediaSpec$Builder;->outputFormat:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/camera/video/MediaSpec;
    .locals 4

    .line 105
    new-instance v0, Landroidx/camera/video/MediaSpec;

    iget-object v1, p0, Landroidx/camera/video/MediaSpec$Builder;->videoSpec:Landroidx/camera/video/VideoSpec;

    iget-object v2, p0, Landroidx/camera/video/MediaSpec$Builder;->audioSpec:Landroidx/camera/video/AudioSpec;

    iget v3, p0, Landroidx/camera/video/MediaSpec$Builder;->outputFormat:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/video/MediaSpec;-><init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;I)V

    return-object v0
.end method

.method public final configureVideo(Landroidx/core/util/Consumer;)Landroidx/camera/video/MediaSpec$Builder;
    .locals 1

    const-string v0, "configBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroidx/camera/video/MediaSpec$Builder;->videoSpec:Landroidx/camera/video/VideoSpec;

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->toBuilder()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Builder;->build()Landroidx/camera/video/VideoSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/MediaSpec$Builder;->videoSpec:Landroidx/camera/video/VideoSpec;

    return-object p0
.end method

.method public final setAudioSpec(Landroidx/camera/video/AudioSpec;)Landroidx/camera/video/MediaSpec$Builder;
    .locals 1

    const-string v0, "audioSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Landroidx/camera/video/MediaSpec$Builder;->audioSpec:Landroidx/camera/video/AudioSpec;

    return-object p0
.end method

.method public final setOutputFormat(I)Landroidx/camera/video/MediaSpec$Builder;
    .locals 0

    .line 88
    iput p1, p0, Landroidx/camera/video/MediaSpec$Builder;->outputFormat:I

    return-object p0
.end method

.method public final setVideoSpec(Landroidx/camera/video/VideoSpec;)Landroidx/camera/video/MediaSpec$Builder;
    .locals 1

    const-string v0, "videoSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Landroidx/camera/video/MediaSpec$Builder;->videoSpec:Landroidx/camera/video/VideoSpec;

    return-object p0
.end method
