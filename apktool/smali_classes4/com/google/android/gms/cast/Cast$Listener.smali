.class public abstract Lcom/google/android/gms/cast/Cast$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onActiveInputStateChanged(I)V
.end method

.method public abstract onApplicationDisconnected(I)V
.end method

.method public abstract onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V
.end method

.method public abstract onApplicationStatusChanged()V
.end method

.method public onDeviceNameChanged()V
    .locals 0

    return-void
.end method

.method public abstract onStandbyStateChanged(I)V
.end method

.method public abstract onVolumeChanged()V
.end method
