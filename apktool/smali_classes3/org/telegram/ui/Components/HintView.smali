.class public Lorg/telegram/ui/Components/HintView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HintView$VisibilityListener;
    }
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private arrowImageView:Landroid/widget/ImageView;

.field private backgroundColor:I

.field backgroundPaint:Landroid/graphics/Paint;

.field private bottomOffset:I

.field private currentType:I

.field private currentView:Landroid/view/View;

.field private drawPath:Z

.field private extraTranslationY:F

.field private hasCloseButton:Z

.field private hideRunnable:Ljava/lang/Runnable;

.field private imageView:Landroid/widget/ImageView;

.field private isTopArrow:Z

.field private messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private overrideText:Ljava/lang/String;

.field path:Landroid/graphics/Path;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showingDuration:J

.field private shownY:I

.field public textView:Landroid/widget/TextView;

.field private translationY:F

.field private useScale:Z


# direct methods
.method public static synthetic $r8$lambda$uZ2WgmvWQonSIm3FdKFwOw2Yerc(Lorg/telegram/ui/Components/HintView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintView;->lambda$createCloseButton$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/HintView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasCloseButton(Lorg/telegram/ui/Components/HintView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/HintView;->hasCloseButton:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowingDuration(Lorg/telegram/ui/Components/HintView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputanimatorSet(Lorg/telegram/ui/Components/HintView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentView(Lorg/telegram/ui/Components/HintView;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhideRunnable(Lorg/telegram/ui/Components/HintView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmessageCell(Lorg/telegram/ui/Components/HintView;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x7d0

    .line 66
    iput-wide v0, p0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    .line 89
    iput-object p4, p0, Lorg/telegram/ui/Components/HintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 91
    iput p2, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    .line 92
    iput-boolean p3, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    .line 94
    new-instance p4, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    invoke-direct {p4, p1}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    .line 95
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p4, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p4, 0x7

    if-eq p2, p4, :cond_2

    const/16 p4, 0x8

    if-eq p2, p4, :cond_2

    const/16 p4, 0x9

    if-ne p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x4

    if-ne p2, p4, :cond_1

    .line 101
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 103
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 99
    :cond_2
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x439b0000    # 310.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 105
    :goto_1
    iget p4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x41200000    # 10.0f

    if-ne p4, v1, :cond_5

    .line 106
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v5, 0x13

    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {p4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {p4, v5, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_3

    move v8, v3

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    if-eqz p3, :cond_4

    move v10, v2

    goto :goto_3

    :cond_4
    move v10, v3

    :goto_3
    const/4 v4, -0x2

    const/high16 v5, 0x41f00000    # 30.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 111
    :cond_5
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v5, 0x33

    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {p4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    iget v5, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/high16 v6, 0x41400000    # 12.0f

    if-nez v5, :cond_6

    const/high16 v5, 0x42580000    # 54.0f

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {p4, v5, v7, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    iget-object p4, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_7

    move v8, v3

    goto :goto_5

    :cond_7
    move v8, v2

    :goto_5
    if-eqz p3, :cond_8

    move v10, v2

    goto :goto_6

    :cond_8
    move v10, v3

    :goto_6
    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    if-nez p2, :cond_9

    .line 118
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget p4, Lorg/telegram/messenger/R$string;->AutoplayVideoInfo:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    .line 121
    sget p4, Lorg/telegram/messenger/R$drawable;->tooltip_sound:I

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 124
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v2, 0x26

    const/high16 v3, 0x42080000    # 34.0f

    const/16 v4, 0x33

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_9
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_a

    .line 128
    sget p1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow_up:I

    goto :goto_8

    :cond_a
    sget p1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    :goto_8
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result p4

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_b

    const/16 p2, 0x30

    goto :goto_9

    :cond_b
    const/16 p2, 0x50

    :goto_9
    or-int/lit8 v4, p2, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v2, 0xe

    const/high16 v3, 0x40c00000    # 6.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$createCloseButton$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    return-void
.end method

.method private updatePosition(Landroid/view/View;)V
    .locals 13

    .line 394
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x2

    .line 396
    new-array v1, v0, [I

    .line 397
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 399
    aget v3, v1, v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    .line 401
    iget v5, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v6, 0x4

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/16 v10, 0x8

    const/high16 v11, 0x41200000    # 10.0f

    if-ne v5, v6, :cond_0

    .line 402
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    goto :goto_3

    :cond_0
    if-ne v5, v8, :cond_1

    .line 403
    iget-boolean v4, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    if-eq v5, v9, :cond_3

    if-ne v5, v10, :cond_2

    .line 405
    iget-boolean v4, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    if-ne v5, v10, :cond_4

    .line 408
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_3

    .line 406
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_1

    .line 412
    :cond_4
    :goto_3
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v4, v10, :cond_8

    iget-boolean v12, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v12, :cond_8

    .line 413
    instance-of v4, p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v4, :cond_6

    .line 414
    check-cast p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 415
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 416
    aget v12, v1, v6

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result p1

    div-int/2addr p1, v0

    :goto_4
    add-int/2addr v12, p1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v12, p1

    goto :goto_5

    .line 417
    :cond_6
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 418
    check-cast p1, Landroid/widget/TextView;

    .line 419
    aget v4, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v4, p1

    const/high16 p1, 0x41840000    # 16.5f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int v12, v4, p1

    goto :goto_5

    .line 421
    :cond_7
    aget v12, v1, v6

    goto :goto_5

    :cond_8
    if-ne v4, v5, :cond_9

    .line 424
    aget v12, v1, v6

    goto :goto_5

    .line 426
    :cond_9
    aget v4, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    add-int v12, v4, p1

    .line 429
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 430
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 431
    aget v4, v1, v6

    sub-int/2addr v12, v4

    .line 432
    aget v1, v1, v2

    sub-int/2addr v3, v1

    .line 434
    iget v1, p0, Lorg/telegram/ui/Components/HintView;->bottomOffset:I

    sub-int/2addr v3, v1

    .line 435
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintView;->offsetCx()I

    move-result v1

    add-int/2addr v12, v1

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 438
    iget-boolean v2, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-eq v2, v8, :cond_a

    if-eq v2, v9, :cond_a

    if-eq v2, v10, :cond_a

    .line 439
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    .line 441
    :cond_a
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 447
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_b

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    :cond_b
    move v2, v6

    move v3, v2

    .line 451
    :goto_7
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v4, v10, :cond_c

    iget-boolean v4, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-nez v4, :cond_c

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v6, v1, 0x2

    goto :goto_8

    .line 453
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    if-le v12, v4, :cond_f

    .line 454
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v4, v5, :cond_e

    int-to-float v1, v1

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    if-gez v1, :cond_d

    goto :goto_8

    :cond_d
    move v6, v1

    goto :goto_8

    .line 460
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v3, v2

    sub-int v6, v1, v3

    goto :goto_8

    .line 463
    :cond_f
    iget v1, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v1, v5, :cond_10

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    sub-int v1, v12, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_d

    :cond_10
    :goto_8
    int-to-float v1, v6

    .line 472
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    add-int/2addr v2, v6

    sub-int v1, v12, v2

    int-to-float v1, v1

    .line 473
    iget-object v2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 474
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v2, v9, :cond_11

    .line 475
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 477
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    if-le v12, p1, :cond_12

    .line 479
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_14

    .line 480
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 485
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_13

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 487
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 489
    :cond_13
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_14

    .line 490
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    .line 491
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_14
    return-void
.end method


# virtual methods
.method public createCloseButton()V
    .locals 11

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lorg/telegram/ui/Components/HintView;->hasCloseButton:Z

    .line 137
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    .line 138
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v2

    const/16 v3, 0x7d

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    if-eqz v1, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v3

    :goto_1
    const/16 v4, 0x22

    const/high16 v5, 0x42080000    # 34.0f

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v0, Lorg/telegram/ui/Components/HintView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 595
    iget-boolean v0, p0, Lorg/telegram/ui/Components/HintView;->drawPath:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->backgroundPaint:Landroid/graphics/Paint;

    .line 598
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/HintView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 604
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBaseTranslationY()F
    .locals 1

    .line 168
    iget v0, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    return v0
.end method

.method public getMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 1

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 7

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 506
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 507
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 508
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    .line 510
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 511
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 512
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    if-eqz p1, :cond_4

    .line 515
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 516
    iget-boolean v0, p0, Lorg/telegram/ui/Components/HintView;->useScale:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 517
    new-array v4, v0, [F

    fill-array-data v4, :array_0

    .line 518
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    .line 519
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v0, [F

    fill-array-data v5, :array_2

    .line 520
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    .line 517
    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 525
    :cond_3
    new-array v0, v1, [F

    const/4 v4, 0x0

    aput v4, v0, v2

    .line 526
    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v2

    .line 525
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 530
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/HintView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HintView$3;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_4
    const/4 p1, 0x4

    .line 545
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    .line 550
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 551
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public isShowing()Z
    .locals 1

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected offsetCx()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 609
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 610
    iget-boolean p1, p0, Lorg/telegram/ui/Components/HintView;->drawPath:Z

    if-eqz p1, :cond_2

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 614
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 615
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 619
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    const/high16 v3, 0x40e00000    # 7.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    if-eqz v1, :cond_1

    .line 620
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    int-to-float p1, p1

    invoke-virtual {v1, v4, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 622
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void

    .line 630
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, p1, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 631
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 632
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {v1, p2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 633
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, p1, v4

    int-to-float v4, v4

    invoke-virtual {v1, p2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 635
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, p1, v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 636
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 637
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_2
    return-void
.end method

.method public setBackgroundColor(II)V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 149
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x40c00000    # 6.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBottomOffset(I)V
    .locals 0

    .line 572
    iput p1, p0, Lorg/telegram/ui/Components/HintView;->bottomOffset:I

    return-void
.end method

.method public setExtraTranslationY(F)V
    .locals 1

    .line 163
    iput p1, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    .line 164
    iget v0, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setOverrideText(Ljava/lang/String;)V
    .locals 1

    .line 153
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->overrideText:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z

    :cond_0
    return-void
.end method

.method public setShowingDuration(J)V
    .locals 0

    .line 568
    iput-wide p1, p0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUseScale(Z)V
    .locals 0

    .line 580
    iput-boolean p1, p0, Lorg/telegram/ui/Components/HintView;->useScale:Z

    return-void
.end method

.method public setVisibleListener(Lorg/telegram/ui/Components/HintView$VisibilityListener;)V
    .locals 0

    return-void
.end method

.method public showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 176
    iget v3, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    iget v6, v0, Lorg/telegram/ui/Components/HintView;->shownY:I

    if-ne v2, v6, :cond_0

    iget-object v6, v0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eq v6, v1, :cond_2

    :cond_0
    if-eq v3, v5, :cond_3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-ne v3, v1, :cond_3

    :cond_2
    return v4

    .line 179
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 180
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 181
    iput-object v6, v0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    :cond_4
    const/4 v3, 0x2

    .line 183
    new-array v7, v3, [I

    .line 184
    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v8, 0x1

    .line 185
    aget v9, v7, v8

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 187
    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 188
    aget v7, v7, v8

    sub-int/2addr v9, v7

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 192
    iget v10, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/high16 v11, -0x80000000

    const/16 v12, 0x3e8

    const/high16 v13, 0x41200000    # 10.0f

    if-nez v10, :cond_7

    .line 193
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    int-to-float v9, v9

    .line 194
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 195
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    float-to-int v2, v2

    add-int v10, v9, v2

    .line 197
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v15, v15, v16

    if-le v9, v15, :cond_6

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v14, v2

    if-le v10, v14, :cond_5

    goto :goto_0

    .line 201
    :cond_5
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNoSoundIconCenterX()I

    move-result v2

    .line 202
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/view/View;->measure(II)V

    goto/16 :goto_5

    :cond_6
    :goto_0
    return v4

    :cond_7
    if-ne v10, v5, :cond_c

    .line 204
    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/Integer;

    add-int/2addr v9, v2

    .line 207
    iput v2, v0, Lorg/telegram/ui/Components/HintView;->shownY:I

    .line 208
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v14, -0x1

    if-ne v2, v14, :cond_8

    .line 209
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->PollSelectOption:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 211
    :cond_8
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isQuiz()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 212
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_9

    .line 213
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->NoVotesQuiz:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 215
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v14, v4, [Ljava/lang/Object;

    const-string v15, "Answer"

    invoke-static {v15, v10, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 218
    :cond_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_b

    .line 219
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->NoVotes:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 221
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v14, v4, [Ljava/lang/Object;

    const-string v15, "Vote"

    invoke-static {v15, v10, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_1
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v0, v2, v10}, Landroid/view/View;->measure(II)V

    move/from16 v2, p3

    goto/16 :goto_5

    .line 227
    :cond_c
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 228
    iget-object v10, v0, Lorg/telegram/ui/Components/HintView;->overrideText:Ljava/lang/String;

    if-nez v10, :cond_d

    .line 229
    iget-object v10, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->HidAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 231
    :cond_d
    iget-object v14, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_2
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/view/View;->measure(II)V

    .line 235
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 236
    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v14, 0x0

    cmp-long v10, v10, v14

    if-nez v10, :cond_e

    .line 237
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v2, v10

    const/high16 v10, 0x42480000    # 50.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v2, v10

    :goto_3
    add-int/2addr v9, v2

    goto :goto_4

    :cond_e
    const/high16 v10, 0x41b00000    # 22.0f

    .line 239
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    .line 240
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawNameLayout()Z

    move-result v2

    if-eqz v2, :cond_f

    const/high16 v2, 0x41a00000    # 20.0f

    .line 241
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_3

    .line 244
    :cond_f
    :goto_4
    iget-boolean v2, v0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-nez v2, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v2, v10

    if-gt v9, v2, :cond_10

    return v4

    .line 247
    :cond_10
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getForwardNameCenterX()I

    move-result v2

    .line 250
    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 251
    iget-boolean v11, v0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v11, :cond_11

    .line 252
    iget v9, v0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    const/high16 v11, 0x42300000    # 44.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iput v11, v0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    .line 254
    :cond_11
    iget v11, v0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v9, v12

    int-to-float v9, v9

    iput v9, v0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v11, v9

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 256
    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v9, v2

    const/high16 v11, 0x41980000    # 19.0f

    .line 257
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    .line 258
    iget v12, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v12, v5, :cond_12

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, v3

    sub-int v5, v2, v5

    const v10, 0x4198cccd    # 19.1f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v5, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v10, v5

    .line 260
    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    add-int/2addr v11, v5

    goto :goto_7

    .line 262
    :cond_12
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, v3

    if-le v9, v5, :cond_13

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v10, v5

    const/high16 v5, 0x42180000    # 38.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v10, v5

    int-to-float v5, v10

    .line 264
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    add-int/2addr v11, v10

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    .line 267
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 269
    :goto_7
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v2

    sub-int/2addr v5, v11

    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v3

    sub-int/2addr v5, v2

    int-to-float v2, v5

    .line 270
    iget-object v5, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 271
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, v3

    if-le v9, v5, :cond_14

    .line 272
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_16

    .line 273
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 275
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v5

    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_8

    .line 278
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v5, v9

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_15

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 280
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 281
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v5

    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_8

    .line 282
    :cond_15
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_16

    .line 283
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 285
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v5

    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 289
    :cond_16
    :goto_8
    iput-object v1, v0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 290
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_17

    .line 291
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 292
    iput-object v6, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 295
    :cond_17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p5, :cond_18

    .line 301
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 302
    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 303
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    .line 302
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 305
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/HintView$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/HintView$1;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 315
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_9

    :cond_18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_9
    return v8

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 172
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    move-result p1

    return p1
.end method

.method public showForView(Landroid/view/View;Z)Z
    .locals 6

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 331
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 332
    iput-object v2, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    .line 334
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintView;->updatePosition(Landroid/view/View;)V

    .line 336
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 338
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 339
    iput-object v2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    const/4 p1, 0x1

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4

    .line 348
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 349
    iget-boolean v0, p0, Lorg/telegram/ui/Components/HintView;->useScale:Z

    const/4 v2, 0x2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v0, :cond_3

    .line 350
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotX(F)V

    .line 351
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 352
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 353
    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 354
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v2, [F

    fill-array-data v4, :array_2

    .line 355
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v1

    aput-object v3, v5, p1

    aput-object v4, v5, v2

    .line 352
    invoke-virtual {p2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 357
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 358
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 360
    :cond_3
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    .line 361
    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, p1, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    .line 360
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 363
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 365
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/HintView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HintView$2;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 377
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return p1

    .line 325
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 326
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintView;->updatePosition(Landroid/view/View;)V

    :cond_6
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updatePosition()V
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/HintView;->updatePosition(Landroid/view/View;)V

    return-void
.end method
