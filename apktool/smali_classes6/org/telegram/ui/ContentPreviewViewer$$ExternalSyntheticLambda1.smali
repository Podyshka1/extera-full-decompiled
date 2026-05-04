.class public final synthetic Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ContentPreviewViewer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ContentPreviewViewer;

    return-void
.end method


# virtual methods
.method public synthetic allowLongPress()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$allowLongPress(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawBackground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawRoundRect(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method public synthetic needEnterText()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$needEnterText(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public final onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ContentPreviewViewer;->$r8$lambda$rgVKIA8hMNs8q9vIilbNBpyDYIE(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return-void
.end method
