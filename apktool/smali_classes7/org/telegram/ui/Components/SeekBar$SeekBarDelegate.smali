.class public interface abstract Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SeekBarDelegate"
.end annotation


# virtual methods
.method public abstract isSeekBarDragAllowed()Z
.end method

.method public abstract onSeekBarContinuousDrag(F)V
.end method

.method public abstract onSeekBarDrag(F)V
.end method

.method public abstract onSeekBarPressed()V
.end method

.method public abstract onSeekBarReleased()V
.end method

.method public abstract reverseWaveform()Z
.end method
