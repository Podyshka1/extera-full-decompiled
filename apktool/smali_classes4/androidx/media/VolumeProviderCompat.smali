.class public abstract Landroidx/media/VolumeProviderCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/VolumeProviderCompat$Api21Impl;,
        Landroidx/media/VolumeProviderCompat$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Landroidx/media/VolumeProviderCompat$Callback;

.field private final mControlId:Ljava/lang/String;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I

.field private mVolumeProviderFwk:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Landroidx/media/VolumeProviderCompat;->mControlType:I

    .line 105
    iput p2, p0, Landroidx/media/VolumeProviderCompat;->mMaxVolume:I

    .line 106
    iput p3, p0, Landroidx/media/VolumeProviderCompat;->mCurrentVolume:I

    .line 107
    iput-object p4, p0, Landroidx/media/VolumeProviderCompat;->mControlId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVolumeProvider()Ljava/lang/Object;
    .locals 8

    .line 203
    iget-object v0, p0, Landroidx/media/VolumeProviderCompat;->mVolumeProviderFwk:Landroid/media/VolumeProvider;

    if-nez v0, :cond_1

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v2, Landroidx/media/VolumeProviderCompat$1;

    iget v4, p0, Landroidx/media/VolumeProviderCompat;->mControlType:I

    iget v5, p0, Landroidx/media/VolumeProviderCompat;->mMaxVolume:I

    iget v6, p0, Landroidx/media/VolumeProviderCompat;->mCurrentVolume:I

    iget-object v7, p0, Landroidx/media/VolumeProviderCompat;->mControlId:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroidx/media/VolumeProviderCompat$1;-><init>(Landroidx/media/VolumeProviderCompat;IIILjava/lang/String;)V

    iput-object v2, v3, Landroidx/media/VolumeProviderCompat;->mVolumeProviderFwk:Landroid/media/VolumeProvider;

    goto :goto_0

    :cond_0
    move-object v3, p0

    .line 218
    new-instance v0, Landroidx/media/VolumeProviderCompat$2;

    iget v1, v3, Landroidx/media/VolumeProviderCompat;->mControlType:I

    iget v2, v3, Landroidx/media/VolumeProviderCompat;->mMaxVolume:I

    iget v4, v3, Landroidx/media/VolumeProviderCompat;->mCurrentVolume:I

    invoke-direct {v0, p0, v1, v2, v4}, Landroidx/media/VolumeProviderCompat$2;-><init>(Landroidx/media/VolumeProviderCompat;III)V

    iput-object v0, v3, Landroidx/media/VolumeProviderCompat;->mVolumeProviderFwk:Landroid/media/VolumeProvider;

    goto :goto_0

    :cond_1
    move-object v3, p0

    .line 231
    :goto_0
    iget-object v0, v3, Landroidx/media/VolumeProviderCompat;->mVolumeProviderFwk:Landroid/media/VolumeProvider;

    return-object v0
.end method

.method public abstract onAdjustVolume(I)V
.end method

.method public abstract onSetVolumeTo(I)V
.end method

.method public final setCurrentVolume(I)V
    .locals 1

    .line 145
    iput p1, p0, Landroidx/media/VolumeProviderCompat;->mCurrentVolume:I

    .line 147
    invoke-virtual {p0}, Landroidx/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeProvider;

    .line 148
    invoke-static {v0, p1}, Landroidx/media/VolumeProviderCompat$Api21Impl;->setCurrentVolume(Landroid/media/VolumeProvider;I)V

    return-void
.end method
