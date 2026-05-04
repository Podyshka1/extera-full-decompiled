.class final Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;
.super Landroidx/camera/core/impl/StreamSpec$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/AutoValue_StreamSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private dynamicRange:Landroidx/camera/core/DynamicRange;

.field private expectedFrameRateRange:Landroid/util/Range;

.field private implementationOptions:Landroidx/camera/core/impl/Config;

.field private originalConfiguredResolution:Landroid/util/Size;

.field private resolution:Landroid/util/Size;

.field private sessionType:Ljava/lang/Integer;

.field private zslDisabled:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Landroidx/camera/core/impl/StreamSpec$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroidx/camera/core/impl/StreamSpec;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroidx/camera/core/impl/StreamSpec$Builder;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->resolution:Landroid/util/Size;

    .line 148
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getOriginalConfiguredResolution()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->originalConfiguredResolution:Landroid/util/Size;

    .line 149
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 150
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getSessionType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->sessionType:Ljava/lang/Integer;

    .line 151
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->expectedFrameRateRange:Landroid/util/Range;

    .line 152
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 153
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getZslDisabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->zslDisabled:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;-><init>(Landroidx/camera/core/impl/StreamSpec;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/impl/StreamSpec;
    .locals 11

    .line 205
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->resolution:Landroid/util/Size;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resolution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->originalConfiguredResolution:Landroid/util/Size;

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " originalConfiguredResolution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    if-nez v0, :cond_2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dynamicRange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    :cond_2
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->sessionType:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sessionType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :cond_3
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->expectedFrameRateRange:Landroid/util/Range;

    if-nez v0, :cond_4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expectedFrameRateRange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_4
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->zslDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " zslDisabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    new-instance v2, Landroidx/camera/core/impl/AutoValue_StreamSpec;

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->resolution:Landroid/util/Size;

    iget-object v4, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->originalConfiguredResolution:Landroid/util/Size;

    iget-object v5, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->sessionType:Ljava/lang/Integer;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->expectedFrameRateRange:Landroid/util/Range;

    iget-object v8, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->implementationOptions:Landroidx/camera/core/impl/Config;

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->zslDisabled:Ljava/lang/Boolean;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroidx/camera/core/impl/AutoValue_StreamSpec;-><init>(Landroid/util/Size;Landroid/util/Size;Landroidx/camera/core/DynamicRange;ILandroid/util/Range;Landroidx/camera/core/impl/Config;ZLandroidx/camera/core/impl/AutoValue_StreamSpec$1;)V

    return-object v2

    .line 224
    :cond_6
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

.method public setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 176
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    return-object p0

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null dynamicRange"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->expectedFrameRateRange:Landroid/util/Range;

    return-object p0

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null expectedFrameRateRange"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->implementationOptions:Landroidx/camera/core/impl/Config;

    return-object p0
.end method

.method public setOriginalConfiguredResolution(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 168
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->originalConfiguredResolution:Landroid/util/Size;

    return-object p0

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null originalConfiguredResolution"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResolution(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->resolution:Landroid/util/Size;

    return-object p0

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null resolution"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSessionType(I)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->sessionType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setZslDisabled(Z)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    .line 199
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->zslDisabled:Ljava/lang/Boolean;

    return-object p0
.end method
