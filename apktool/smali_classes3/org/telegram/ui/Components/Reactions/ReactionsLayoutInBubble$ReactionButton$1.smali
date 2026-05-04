.class Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V
    .locals 0

    .line 1459
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1462
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1463
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1464
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->inGroup:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1465
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1479
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
