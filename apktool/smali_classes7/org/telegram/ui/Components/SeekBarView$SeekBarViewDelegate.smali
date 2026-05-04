.class public interface abstract Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SeekBarViewDelegate"
.end annotation


# virtual methods
.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getStepsCount()I
.end method

.method public abstract needVisuallyDivideSteps()Z
.end method

.method public abstract onSeekBarDrag(ZF)V
.end method

.method public abstract onSeekBarPressed(Z)V
.end method
