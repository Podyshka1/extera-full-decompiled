.class final Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;
.super Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private dynamicRange:Landroidx/camera/core/DynamicRange;

.field private mirrorMode:Ljava/lang/Integer;

.field private physicalCameraId:Ljava/lang/String;

.field private sharedSurfaces:Ljava/util/List;

.field private surface:Landroidx/camera/core/impl/DeferrableSurface;

.field private surfaceGroupId:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/impl/SessionConfig$OutputConfig;
    .locals 10

    .line 170
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->surface:Landroidx/camera/core/impl/DeferrableSurface;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " surface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->sharedSurfaces:Ljava/util/List;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sharedSurfaces"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->mirrorMode:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mirrorMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_2
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->surfaceGroupId:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " surfaceGroupId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_3
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    if-nez v0, :cond_4

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dynamicRange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    new-instance v2, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->surface:Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v4, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->sharedSurfaces:Ljava/util/List;

    iget-object v5, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->physicalCameraId:Ljava/lang/String;

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->mirrorMode:Ljava/lang/Integer;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->surfaceGroupId:Ljava/lang/Integer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;-><init>(Landroidx/camera/core/impl/DeferrableSurface;Ljava/util/List;Ljava/lang/String;IILandroidx/camera/core/DynamicRange;Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$1;)V

    return-object v2

    .line 186
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 164
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    return-object p0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null dynamicRange"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMirrorMode(I)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
    .locals 0

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->mirrorMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPhysicalCameraId(Ljava/lang/String;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
    .locals 0

    .line 146
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->physicalCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public setSharedSurfaces(Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->sharedSurfaces:Ljava/util/List;

    return-object p0

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null sharedSurfaces"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->surface:Landroidx/camera/core/impl/DeferrableSurface;

    return-object p0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null surface"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSurfaceGroupId(I)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
    .locals 0

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->surfaceGroupId:Ljava/lang/Integer;

    return-object p0
.end method
