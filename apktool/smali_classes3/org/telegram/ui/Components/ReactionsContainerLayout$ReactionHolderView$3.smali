.class Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 1855
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;->val$this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createImageReciever()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 1865
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3$1;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3$1;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;Landroid/view/View;)V

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    const/4 v0, 0x1

    .line 1884
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grabIfWeakDevice([Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1887
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 2

    const/4 v0, 0x1

    .line 1892
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grabIfWeakDevice([Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1895
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1859
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->checkPlayLoopImage()V

    .line 1860
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
