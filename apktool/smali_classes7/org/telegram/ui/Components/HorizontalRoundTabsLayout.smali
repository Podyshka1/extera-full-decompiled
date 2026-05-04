.class public Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$RoundTabView;
    }
.end annotation


# static fields
.field private static final tmpRect:Landroid/graphics/RectF;


# instance fields
.field private final bgPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private final clipPath2:Landroid/graphics/Path;

.field public final linearLayout:Landroid/widget/LinearLayout;

.field private selectedIndex:I

.field private final selectorEndX:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final selectorStartX:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method public static synthetic $r8$lambda$1g-pvD3sewMqrC8f3u_szPuDqwM(Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$It_oNPoRiweXMmboX6uJHylvTHg(Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wLppqeoxz1TjlZh65NqDBvpeTBU(Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;ILorg/telegram/messenger/MessagesStorage$IntCallback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->lambda$setTabs$2(ILorg/telegram/messenger/MessagesStorage$IntCallback;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->tmpRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->bgPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->textPaint:Landroid/text/TextPaint;

    .line 108
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath:Landroid/graphics/Path;

    .line 109
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath2:Landroid/graphics/Path;

    .line 35
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p1, -0x1

    const v3, 0x800003

    .line 39
    invoke-static {p1, p1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 41
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 44
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;)V

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectorStartX:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v0, 0xb4

    .line 51
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    .line 53
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v3, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;)V

    invoke-direct {p1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectorEndX:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 60
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    .line 62
    invoke-virtual {p0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 63
    invoke-virtual {p0, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setTabs$2(ILorg/telegram/messenger/MessagesStorage$IntCallback;Landroid/view/View;)V
    .locals 3

    .line 74
    iput p1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectedIndex:I

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectorStartX:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectorEndX:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 77
    invoke-interface {p2, p1}, Lorg/telegram/messenger/MessagesStorage$IntCallback;->run(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 113
    sget-object v0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectorStartX:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 114
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->getValue()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectorEndX:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 116
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->getValue()F

    move-result v2

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath:Landroid/graphics/Path;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3, v4, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 125
    iget-object v5, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath2:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v9, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath2:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->bgPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const v3, 0x1effffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->textPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 135
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->textPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameArchived:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 143
    sget-object v2, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->tmpRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 103
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 104
    iget p2, p1, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectedIndex:I

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->setSelectedIndex(IZ)V

    return-void
.end method

.method public setSelectedIndex(IZ)V
    .locals 3

    .line 95
    iput p1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectedIndex:I

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectorStartX:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->selectorEndX:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    return-void
.end method

.method public setTabs(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V
    .locals 7

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 71
    new-instance v2, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$RoundTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$RoundTabView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v3, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p2}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;ILorg/telegram/messenger/MessagesStorage$IntCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 80
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    const/4 v3, -0x2

    .line 82
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    const/high16 v4, 0x40800000    # 4.0f

    .line 84
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 87
    :cond_0
    new-instance v4, Lorg/telegram/ui/Components/Text;

    iget-object v5, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout$RoundTabView;->setText(Lorg/telegram/ui/Components/Text;)V

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
