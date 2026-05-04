.class Lorg/telegram/ui/Gifts/SendGiftSheet$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/SendGiftSheet;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field maxHeight:I

.field final synthetic this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Landroid/content/Context;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 209
    iput p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->maxHeight:I

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 228
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected isActionBarVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isStatusBarVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBackgroundViewInvalidate()V
    .locals 1

    .line 240
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onBackgroundViewInvalidate()V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$000(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 233
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 234
    iget-object p2, p1, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/SendGiftSheet;->-$$Nest$fgetchatLinearLayout(Lorg/telegram/ui/Gifts/SendGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object p2

    sub-int/2addr p5, p3

    iget-object p3, p1, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p3}, Lorg/telegram/ui/Gifts/SendGiftSheet;->-$$Nest$fgetchatLinearLayout(Lorg/telegram/ui/Gifts/SendGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    int-to-float p3, p5

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 235
    iget-object p2, p1, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/SendGiftSheet;->-$$Nest$fgetactionCell(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p3}, Lorg/telegram/ui/Gifts/SendGiftSheet;->-$$Nest$fgetchatLinearLayout(Lorg/telegram/ui/Gifts/SendGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    iget-object p4, p1, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p4}, Lorg/telegram/ui/Gifts/SendGiftSheet;->-$$Nest$fgetactionCell(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    add-float/2addr p3, p4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FI)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 212
    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->maxHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 213
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->maxHeight:I

    if-ge v0, v2, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 218
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 219
    iget p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->maxHeight:I

    if-ne p1, v1, :cond_1

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$2;->maxHeight:I

    :cond_1
    return-void
.end method

.method protected useRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
