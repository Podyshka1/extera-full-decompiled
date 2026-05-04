.class public final Landroidx/camera/video/AudioSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/AudioSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:I

.field private channelCount:I

.field private mimeType:Ljava/lang/String;

.field private sampleRate:I

.field private source:I

.field private sourceFormat:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Landroidx/camera/video/AudioSpec$Builder;->sourceFormat:I

    .line 80
    iput v0, p0, Landroidx/camera/video/AudioSpec$Builder;->source:I

    .line 82
    iput v0, p0, Landroidx/camera/video/AudioSpec$Builder;->channelCount:I

    .line 83
    const-string v0, "audio/*"

    iput-object v0, p0, Landroidx/camera/video/AudioSpec$Builder;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/camera/video/AudioSpec;
    .locals 7

    .line 146
    new-instance v0, Landroidx/camera/video/AudioSpec;

    iget v1, p0, Landroidx/camera/video/AudioSpec$Builder;->bitrate:I

    iget v2, p0, Landroidx/camera/video/AudioSpec$Builder;->sourceFormat:I

    iget v3, p0, Landroidx/camera/video/AudioSpec$Builder;->source:I

    iget v4, p0, Landroidx/camera/video/AudioSpec$Builder;->sampleRate:I

    iget v5, p0, Landroidx/camera/video/AudioSpec$Builder;->channelCount:I

    iget-object v6, p0, Landroidx/camera/video/AudioSpec$Builder;->mimeType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method
