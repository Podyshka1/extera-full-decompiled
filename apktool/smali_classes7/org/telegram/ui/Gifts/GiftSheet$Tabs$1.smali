.class Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/GiftSheet$Tabs;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;Landroid/content/Context;)V
    .locals 0

    .line 2758
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final setBounds(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    .line 2789
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2761
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetselectedPaint(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsTabText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2762
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetanimatedSelected(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetselected(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    float-to-double v1, v0

    .line 2764
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v4}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v3

    .line 2765
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    .line 2766
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    .line 2767
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetflooredRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v5}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->setBounds(Landroid/graphics/RectF;Landroid/view/View;)V

    goto :goto_0

    .line 2768
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2769
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetflooredRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v5}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->setBounds(Landroid/graphics/RectF;Landroid/view/View;)V

    goto :goto_0

    .line 2771
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetflooredRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2773
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2774
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetceiledRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v4}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->setBounds(Landroid/graphics/RectF;Landroid/view/View;)V

    goto :goto_1

    .line 2775
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 2776
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetceiledRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgettabs(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->setBounds(Landroid/graphics/RectF;Landroid/view/View;)V

    goto :goto_1

    .line 2778
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetceiledRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2780
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetflooredRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetceiledRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v3}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetselectedRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 2782
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetselectedRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2783
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetselectedRect(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->-$$Nest$fgetselectedPaint(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2785
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
