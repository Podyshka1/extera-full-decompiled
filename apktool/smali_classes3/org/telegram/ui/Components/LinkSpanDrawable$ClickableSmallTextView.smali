.class public Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;
.super Lorg/telegram/ui/ActionBar/SimpleTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/LinkSpanDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickableSmallTextView"
.end annotation


# instance fields
.field private final linkBackgroundPaint:Landroid/graphics/Paint;

.field private final links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$Uy_nBx3BsRg2Jij9sGN_SEsWDI0(Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->lambda$onTouchEvent$0(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 864
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 868
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 876
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 877
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->linkBackgroundPaint:Landroid/graphics/Paint;

    .line 869
    iput-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private getLinkColor()I
    .locals 3

    .line 873
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextColor()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3df0a3d7    # 0.1175f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$onTouchEvent$0(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 1

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne v0, p1, :cond_0

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    const/4 p1, 0x0

    .line 913
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 914
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 881
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 883
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->linkBackgroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->getLinkColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 884
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->linkBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 887
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 889
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 890
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 898
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 901
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 903
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v3, v4, v5, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    .line 904
    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->getLinkColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 905
    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 906
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 907
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v4

    const/4 p1, 0x0

    .line 908
    invoke-virtual {v4, v3, v1, p1, p1}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IFF)V

    .line 909
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    int-to-float v7, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/LinkPath;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 910
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 916
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 910
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v2

    .line 919
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 920
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 921
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz p1, :cond_2

    .line 922
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 924
    :cond_2
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return v2

    .line 927
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 928
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 929
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return v2

    .line 933
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_6

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method
