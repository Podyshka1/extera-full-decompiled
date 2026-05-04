.class Lorg/telegram/ui/Components/ChatActivityEnterView$23;
.super Lcom/exteragram/messenger/components/ChatActivityEnterViewStaticIconView;
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

.field private final tmpRectF:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/Components/ChatActivityEnterView;I)V
    .locals 0

    .line 3348
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2, p3, p4}, Lcom/exteragram/messenger/components/ChatActivityEnterViewStaticIconView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 3349
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->tmpRectF:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 3352
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoButtonContainerForbidden(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3353
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->tmpRectF:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3354
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->tmpRectF:Landroid/graphics/Rect;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 3355
    invoke-virtual {p0}, Lcom/exteragram/messenger/components/ChatActivityEnterViewStaticIconView;->getCurrentState()Lcom/exteragram/messenger/components/ChatActivityEnterViewStaticIconView$State;

    move-result-object v0

    sget-object v1, Lcom/exteragram/messenger/components/ChatActivityEnterViewStaticIconView$State;->VIDEO:Lcom/exteragram/messenger/components/ChatActivityEnterViewStaticIconView$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraOutline(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicOutline(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3356
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->tmpRectF:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3357
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3359
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
