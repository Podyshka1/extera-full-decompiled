.class Lorg/telegram/ui/Components/FiltersListBottomSheet$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FiltersListBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fullHeight:Z

.field private rect:Landroid/graphics/RectF;

.field private statusBarOpen:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FiltersListBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private updateLightStatusBar(Z)V
    .locals 6

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->statusBarOpen:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1800(Lorg/telegram/ui/Components/FiltersListBottomSheet;I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 180
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1900(Lorg/telegram/ui/Components/FiltersListBottomSheet;I)I

    move-result v4

    const/high16 v5, 0x33000000

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_2

    move v2, v3

    .line 181
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->statusBarOpen:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 182
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$400(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$500(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v2

    add-int/2addr v1, v2

    .line 143
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    .line 146
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->fullHeight:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$600(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v2

    add-int/2addr v2, v0

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v6, v5, 0x2

    if-ge v2, v6, :cond_0

    mul-int/lit8 v2, v5, 0x2

    sub-int/2addr v2, v0

    .line 148
    iget-object v6, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 151
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v4, v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 153
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$800(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v5

    add-int/2addr v5, v0

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v5, v6, :cond_1

    sub-int v5, v6, v0

    .line 154
    iget-object v7, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$900(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v3

    move v2, v4

    .line 158
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1000(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v3, v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1100(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v1, v2, v4

    if-eqz v1, :cond_3

    .line 162
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1200(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1300(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v6

    add-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1400(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1500(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v8

    add-int/2addr v8, v0

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v8, v0

    int-to-float v0, v8

    invoke-virtual {v1, v4, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    if-lez v5, :cond_4

    .line 168
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1600(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    int-to-float v7, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v5

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$1700(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v9, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v10, v0

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 171
    :cond_4
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 p1, p1, 0x2

    if-le v5, p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->updateLightStatusBar(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 89
    iget-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 92
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 125
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 126
    iget-object p2, p1, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$mupdateLayout(Lorg/telegram/ui/Components/FiltersListBottomSheet;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 102
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/FiltersListBottomSheet;Z)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$000(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v3, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$100(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/FiltersListBottomSheet;Z)V

    const/high16 v0, 0x42400000    # 48.0f

    .line 106
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->getItemCount()I

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$200(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    add-int/2addr v2, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v0

    int-to-double v5, v2

    .line 107
    div-int/lit8 v0, p2, 0x5

    int-to-double v7, v0

    const-wide v9, 0x400999999999999aL    # 3.2

    mul-double/2addr v7, v9

    cmpg-double v3, v5, v7

    if-gez v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    if-eqz v0, :cond_1

    if-ge v2, p2, :cond_1

    sub-int v3, p2, v2

    sub-int/2addr v0, v3

    :cond_1
    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$300(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v0

    .line 114
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 115
    iget-object v3, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/FiltersListBottomSheet;Z)V

    .line 116
    iget-object v3, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v6, v0, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/FiltersListBottomSheet;Z)V

    :cond_3
    if-lt v2, p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    .line 119
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->fullHeight:Z

    .line 120
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$1;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetignoreLayout(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
