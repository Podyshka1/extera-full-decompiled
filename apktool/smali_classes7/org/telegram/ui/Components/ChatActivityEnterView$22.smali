.class Lorg/telegram/ui/Components/ChatActivityEnterView$22;
.super Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;
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
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;I)V
    .locals 0

    .line 3332
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;-><init>(Landroid/content/Context;I)V

    .line 3333
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->tmpRectF:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 3336
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoButtonContainerForbidden(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3337
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->tmpRectF:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3338
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->tmpRectF:Landroid/graphics/Rect;

    const/high16 v1, 0x41180000    # 9.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 3339
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->getCurrentState()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->VIDEO:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraOutline(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicOutline(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3340
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->tmpRectF:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3341
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3343
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
