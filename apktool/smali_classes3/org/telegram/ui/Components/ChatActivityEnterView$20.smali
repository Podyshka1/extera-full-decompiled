.class Lorg/telegram/ui/Components/ChatActivityEnterView$20;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    .line 2843
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2854
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonEnabled(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2857
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 2846
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textTransitionIsRunning:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2849
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2862
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonEnabled(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2865
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
