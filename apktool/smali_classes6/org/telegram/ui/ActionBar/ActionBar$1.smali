.class Lorg/telegram/ui/ActionBar/ActionBar$1;
.super Lorg/telegram/ui/ActionBar/ActionBarMenu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->blurredBackground:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->drawBlur:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgetactionModeColor(Lorg/telegram/ui/ActionBar/ActionBar;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgetactionModeColor(Lorg/telegram/ui/ActionBar/ActionBar;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 658
    :goto_0
    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 663
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 671
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fputactionModeColor(Lorg/telegram/ui/ActionBar/ActionBar;I)V

    .line 646
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/ActionBar;->blurredBackground:Z

    if-nez v0, :cond_0

    .line 647
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgetactionModeColor(Lorg/telegram/ui/ActionBar/ActionBar;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
