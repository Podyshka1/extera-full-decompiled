.class public abstract Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionView"
.end annotation


# instance fields
.field private currentHandle:I

.field protected dotPaint:Landroid/graphics/Paint;

.field protected dotStrokePaint:Landroid/graphics/Paint;

.field protected paint:Landroid/graphics/Paint;

.field private final showAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private shown:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V
    .locals 8

    .line 822
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 823
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 816
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    .line 817
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    .line 818
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    .line 971
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0xfa

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->showAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 972
    iput-boolean p2, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->shown:Z

    const/4 p1, 0x0

    .line 824
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 826
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 827
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 828
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 829
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 830
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v6, v7, p1

    aput v5, v7, p2

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-direct {v4, v7, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 831
    iget-object p1, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/4 v4, 0x0

    const/high16 v5, 0x50000000

    invoke-virtual {p1, v0, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 833
    iget-object p1, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    const v0, -0xe56301

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    iget-object p1, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 835
    iget-object p1, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 836
    iget-object p1, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    const v0, 0x402a3d71    # 2.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 837
    iget-object p1, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method protected getShowAlpha()F
    .locals 2

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->showAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->shown:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 975
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->shown:Z

    .line 976
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 857
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 860
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 861
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 862
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v6

    invoke-interface {v5, v3, v4, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(FF[F)V

    .line 863
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    .line 865
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_1

    .line 866
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v8

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy2(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(FF[F)V

    goto :goto_1

    :cond_1
    move v14, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v14, v3

    :goto_2
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v14, :cond_3

    .line 873
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy2(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v5

    add-float/2addr v8, v9

    div-float/2addr v8, v3

    aput v8, v7, v5

    .line 874
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy2(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v6

    add-float/2addr v8, v9

    div-float/2addr v8, v3

    aput v8, v7, v6

    goto :goto_3

    .line 876
    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v5

    aput v8, v7, v5

    .line 877
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v7, v6

    .line 879
    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetlastIsMultitouch(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v7

    if-eq v7, v14, :cond_4

    .line 880
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v5

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationX(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 881
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v6

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationY(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 882
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy2(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v5

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationX2(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 883
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy2(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v6

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationY2(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 884
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v5

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationCX(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 885
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v6

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationCY(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 886
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->hide(Z)V

    .line 888
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7, v14}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputlastIsMultitouch(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V

    .line 889
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v7

    aget v7, v7, v5

    .line 890
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v6

    if-eqz v2, :cond_10

    if-eq v2, v6, :cond_e

    const/4 v9, 0x2

    if-eq v2, v9, :cond_5

    if-eq v2, v4, :cond_e

    goto/16 :goto_7

    .line 916
    :cond_5
    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v2, v4, :cond_6

    .line 917
    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v11}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v2

    aget v12, v2, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v2

    aget v13, v2, v6

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy2(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v2

    aget v15, v2, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy2(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v2

    aget v16, v2, v6

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$monTouchMove(Lorg/telegram/ui/Components/Paint/Views/EntityView;FFZFF)Z

    move-result v2

    goto/16 :goto_9

    :cond_6
    if-eqz v2, :cond_d

    .line 920
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetpreviousLocationX(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v2

    sub-float v2, v7, v2

    .line 921
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetpreviousLocationY(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v4

    sub-float v4, v8, v4

    .line 923
    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgethasTransformed(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v2, v2, v10

    if-gtz v2, :cond_7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 924
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgethasTransformed(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 925
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityHandleTouched()V

    .line 927
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputhasTransformed(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V

    .line 928
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetlongPressRunnable(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 930
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I

    move-result-object v2

    .line 931
    aget v3, v2, v5

    int-to-float v3, v3

    aget v4, v2, v6

    int-to-float v4, v4

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetpreviousLocationX(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v11}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetpreviousLocationY(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v11

    invoke-static {v3, v4, v10, v11}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v3

    .line 932
    aget v4, v2, v5

    int-to-float v4, v4

    aget v10, v2, v6

    int-to-float v10, v10

    invoke-static {v4, v10, v7, v8}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v4

    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    if-lez v11, :cond_9

    div-float/2addr v4, v3

    .line 935
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 939
    :cond_9
    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v3, v6, :cond_a

    .line 940
    aget v3, v2, v6

    int-to-float v3, v3

    sub-float/2addr v3, v8

    float-to-double v3, v3

    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v2, v7

    float-to-double v9, v2

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    :goto_4
    double-to-float v10, v2

    goto :goto_5

    :cond_a
    if-ne v3, v9, :cond_b

    .line 942
    aget v3, v2, v6

    int-to-float v3, v3

    sub-float v3, v8, v3

    float-to-double v3, v3

    aget v2, v2, v5

    int-to-float v2, v2

    sub-float v2, v7, v2

    float-to-double v9, v2

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    goto :goto_4

    .line 945
    :cond_b
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    float-to-double v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    .line 947
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationX(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 948
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationY(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    :cond_c
    :goto_6
    move v2, v6

    goto/16 :goto_9

    :cond_d
    :goto_7
    move v2, v5

    goto/16 :goto_9

    .line 958
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne v2, v4, :cond_f

    move v2, v6

    goto :goto_8

    :cond_f
    move v2, v5

    :goto_8
    invoke-static {v3, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$monTouchUp(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V

    .line 959
    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    .line 961
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->hide(Z)V

    goto :goto_6

    .line 894
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputhadMultitouch(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V

    .line 895
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->pointInsideHandle(FF)I

    move-result v2

    if-eqz v2, :cond_d

    .line 897
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    .line 898
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v5

    invoke-static {v3, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationX(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 899
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v6

    invoke-static {v3, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationY(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 900
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationCX(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 901
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v3, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputpreviousLocationCY(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    .line 902
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iput-boolean v5, v3, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 905
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v3, :cond_11

    .line 906
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_11
    if-ne v2, v4, :cond_c

    .line 908
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->allowLongPressOnSelected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 909
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fgetlongPressRunnable(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 966
    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v3, v14}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->-$$Nest$fputhadMultitouch(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V

    .line 968
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz v2, :cond_12

    goto :goto_a

    :cond_12
    return v5

    :cond_13
    :goto_a
    return v6
.end method

.method protected abstract pointInsideHandle(FF)I
.end method

.method public updatePosition()V
    .locals 3

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getSelectionBounds()Lorg/telegram/ui/Components/Rect;

    move-result-object v0

    .line 842
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 843
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->x:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 844
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 845
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->width:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 846
    iget v0, v0, Lorg/telegram/ui/Components/Rect;->height:F

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 847
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
