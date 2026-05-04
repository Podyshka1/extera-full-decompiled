.class public interface abstract Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/RecordControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract canRecordAudio()Z
.end method

.method public abstract getMaxVideoDuration()J
.end method

.method public abstract getMaxVisibleVideoDuration()J
.end method

.method public abstract onCheckClick()V
.end method

.method public abstract onFlipClick()V
.end method

.method public abstract onFlipLongClick()V
.end method

.method public abstract onGalleryClick()V
.end method

.method public abstract onPhotoShoot()V
.end method

.method public abstract onVideoDuration(J)V
.end method

.method public abstract onVideoRecordEnd(Z)V
.end method

.method public abstract onVideoRecordLocked()V
.end method

.method public abstract onVideoRecordStart(ZLjava/lang/Runnable;)V
.end method

.method public abstract onZoom(F)V
.end method

.method public abstract showStoriesDrafts()Z
.end method
