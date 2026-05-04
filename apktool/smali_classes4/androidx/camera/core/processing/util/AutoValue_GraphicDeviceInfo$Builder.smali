.class final Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;
.super Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private eglExtensions:Ljava/lang/String;

.field private eglVersion:Ljava/lang/String;

.field private glExtensions:Ljava/lang/String;

.field private glVersion:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/processing/util/GraphicDeviceInfo;
    .locals 8

    .line 130
    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glVersion:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " glVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eglVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glExtensions:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " glExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_2
    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglExtensions:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eglExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    new-instance v2, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo;

    iget-object v3, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glVersion:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglVersion:Ljava/lang/String;

    iget-object v5, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glExtensions:Ljava/lang/String;

    iget-object v6, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglExtensions:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$1;)V

    return-object v2

    .line 143
    :cond_4
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

.method public setEglExtensions(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 124
    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglExtensions:Ljava/lang/String;

    return-object p0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null eglExtensions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEglVersion(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglVersion:Ljava/lang/String;

    return-object p0

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null eglVersion"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGlExtensions(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glExtensions:Ljava/lang/String;

    return-object p0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null glExtensions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGlVersion(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glVersion:Ljava/lang/String;

    return-object p0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null glVersion"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
