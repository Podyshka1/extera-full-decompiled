.class public interface abstract Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReactionsContainerDelegate"
.end annotation


# virtual methods
.method public abstract allowLongPress()Z
.end method

.method public abstract drawBackground()Z
.end method

.method public abstract drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
.end method

.method public abstract needEnterText()Z
.end method

.method public abstract onEmojiWindowDismissed()V
.end method

.method public abstract onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
.end method
