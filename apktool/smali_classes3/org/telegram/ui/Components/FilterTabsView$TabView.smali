.class public Lorg/telegram/ui/Components/FilterTabsView$TabView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field public animateChange:Z

.field public animateCounterChange:Z

.field private animateFromCountWidth:F

.field private animateFromCounterWidth:F

.field private animateFromIconWidth:I

.field animateFromIconX:F

.field animateFromTabCount:I

.field private animateFromTabWidth:F

.field animateFromTextX:F

.field private animateFromTitleWidth:I

.field private animateFromWidth:F

.field private animateIconChange:Z

.field private animateIconWidth:Z

.field animateIconX:Z

.field animateTabCounter:Z

.field private animateTabWidth:Z

.field private animateTextChange:Z

.field private animateTextChangeOut:Z

.field animateTextX:Z

.field private attached:Z

.field public changeAnimator:Landroid/animation/ValueAnimator;

.field public changeProgress:F

.field private currentEmoticon:Ljava/lang/String;

.field private currentNoanimate:Z

.field private currentPosition:I

.field private currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

.field private currentText:Ljava/lang/CharSequence;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconAnimateInDrawable:Landroid/graphics/drawable/Drawable;

.field private iconAnimateOutDrawable:Landroid/graphics/drawable/Drawable;

.field inCounter:Landroid/text/StaticLayout;

.field private lastCountWidth:I

.field private lastCounterWidth:F

.field lastEmoticon:Ljava/lang/String;

.field private lastIconWidth:I

.field lastIconX:F

.field lastTabCount:I

.field private lastTabWidth:F

.field lastTextX:F

.field lastTitle:Ljava/lang/CharSequence;

.field lastTitleLayout:Landroid/text/StaticLayout;

.field private lastTitleWidth:I

.field private lastWidth:F

.field private locIconXOffset:F

.field outCounter:Landroid/text/StaticLayout;

.field private progressToLocked:F

.field private final rect:Landroid/graphics/RectF;

.field stableCounter:Landroid/text/StaticLayout;

.field private tabCounterVisible:F

.field private tabWidth:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private textOffsetX:I

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;

.field private titleAnimateInLayout:Landroid/text/StaticLayout;

.field private titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private titleAnimateOutLayout:Landroid/text/StaticLayout;

.field private titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private titleAnimateStableLayout:Landroid/text/StaticLayout;

.field private titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private titleXOffset:F


# direct methods
.method public static synthetic $r8$lambda$NpeKnZ7BpCXZk-7UfscRiAH9N9A(Lorg/telegram/ui/Components/FilterTabsView$TabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lambda$shakeLockIcon$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimateFromTabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateTabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettabCounterVisible(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabCounterVisible:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputlocIconXOffset(Lorg/telegram/ui/Components/FilterTabsView$TabView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprogressToLocked(Lorg/telegram/ui/Components/FilterTabsView$TabView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    .line 281
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 236
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    return-void
.end method

.method private createColorFilterWithAlpha(IF)Landroid/graphics/ColorMatrixColorFilter;
    .locals 6

    .line 268
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 269
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 270
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 272
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v2

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v2, v4

    const/4 v4, 0x1

    aput v5, v2, v4

    const/4 v4, 0x2

    aput v5, v2, v4

    const/4 v4, 0x3

    aput v5, v2, v4

    const/4 v4, 0x4

    aput v0, v2, v4

    const/4 v0, 0x5

    aput v5, v2, v0

    const/4 v0, 0x6

    aput v5, v2, v0

    const/4 v0, 0x7

    aput v5, v2, v0

    const/16 v0, 0x8

    aput v5, v2, v0

    const/16 v0, 0x9

    aput v1, v2, v0

    const/16 v0, 0xa

    aput v5, v2, v0

    const/16 v0, 0xb

    aput v5, v2, v0

    const/16 v0, 0xc

    aput v5, v2, v0

    const/16 v0, 0xd

    aput v5, v2, v0

    const/16 v0, 0xe

    aput p1, v2, v0

    const/16 p1, 0xf

    aput v5, v2, p1

    const/16 p1, 0x10

    aput v5, v2, p1

    const/16 p1, 0x11

    aput v5, v2, p1

    const/16 p1, 0x12

    aput p2, v2, p1

    const/16 p1, 0x13

    aput v5, v2, p1

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object v3
.end method

.method private getCurrentIconAlpha()F
    .locals 3

    .line 694
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconWidth:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    if-lez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromIconWidth:I

    if-nez v2, :cond_0

    .line 696
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    return v0

    :cond_0
    if-nez v0, :cond_1

    .line 697
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromIconWidth:I

    if-lez v0, :cond_1

    .line 698
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float/2addr v1, v0

    :cond_1
    return v1

    .line 703
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    if-lez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$shakeLockIcon$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 911
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public animateChange()Z
    .locals 24

    move-object/from16 v0, p0

    .line 721
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    .line 722
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 723
    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabCount:I

    .line 724
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCountWidth:I

    int-to-float v5, v5

    iput v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCountWidth:F

    .line 725
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCounterWidth:F

    iput v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCounterWidth:F

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    .line 727
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 731
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 732
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 733
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v6, v4

    .line 734
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 735
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_0

    .line 736
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v8, v6, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 737
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2, v8, v6, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 739
    :cond_0
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v8, v6, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 743
    :cond_1
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v13, v6

    .line 744
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v12, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v11, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    .line 745
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move v13, v11

    move-object v14, v12

    move-object v12, v1

    move-object v11, v5

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move v11, v13

    move-object v12, v14

    iput-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    .line 746
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v1

    move-object v12, v1

    move-object v11, v2

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    goto :goto_2

    .line 748
    :cond_2
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v9, v5

    .line 749
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v8

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    .line 750
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v11, v5

    .line 751
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, v1

    move-object v12, v10

    move-object v10, v2

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    :cond_3
    :goto_2
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v4

    .line 759
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-lez v2, :cond_5

    .line 760
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string v2, "%d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 761
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const v5, 0x40eaa7f0    # 7.333f

    .line 762
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_4

    :cond_5
    move v2, v4

    .line 766
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    .line 767
    iget v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastIconWidth:I

    if-eq v6, v7, :cond_6

    .line 768
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconWidth:Z

    .line 769
    iput v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromIconWidth:I

    move v1, v3

    .line 774
    :cond_6
    sget v7, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    .line 775
    iget v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    add-int/2addr v5, v6

    if-eqz v2, :cond_7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_5

    :cond_7
    move v2, v4

    :goto_5
    add-int/2addr v5, v2

    goto :goto_7

    :cond_8
    if-eqz v2, :cond_9

    .line 777
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_6

    :cond_9
    move v2, v4

    :goto_6
    add-int v5, v6, v2

    .line 779
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v5

    div-int/2addr v2, v9

    add-int/2addr v2, v6

    int-to-float v2, v2

    .line 781
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTextX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_a

    .line 782
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 783
    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTextX:F

    move v1, v3

    .line 787
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_18

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 791
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_b

    .line 793
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/CharSequence;

    .line 794
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    move v6, v3

    goto :goto_8

    .line 797
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    .line 798
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/CharSequence;

    move v6, v4

    .line 800
    :goto_8
    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1a

    const/high16 v11, 0x43c80000    # 400.0f

    if-ltz v7, :cond_13

    .line 802
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v12, v12, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static {v1, v12, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v12

    .line 803
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 804
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_c

    .line 806
    new-instance v12, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v12}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v13, v12, v4, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 808
    :cond_c
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/2addr v12, v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-eq v12, v15, :cond_d

    .line 809
    new-instance v12, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v12}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    add-int/2addr v15, v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v13, v12, v15, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 811
    :cond_d
    new-instance v1, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v14, v1, v7, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v16, v13

    .line 813
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v15, v1, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v1, v16

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    .line 814
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->attached:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz v2, :cond_e

    move v2, v10

    goto :goto_9

    :cond_e
    move v2, v4

    :goto_9
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v14, v3, [Landroid/text/Layout;

    aput-object v13, v14, v4

    invoke-static {v2, v0, v12, v14}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 815
    :cond_f
    new-instance v15, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v16, v1

    move-object/from16 v19, v17

    move-object/from16 v17, v2

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    .line 816
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->attached:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz v1, :cond_10

    goto :goto_a

    :cond_10
    move v10, v4

    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v3, [Landroid/text/Layout;

    aput-object v15, v2, v4

    invoke-static {v10, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 817
    :cond_11
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 818
    iput-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-nez v7, :cond_12

    goto :goto_b

    .line 819
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    neg-float v9, v1

    :goto_b
    iput v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    .line 820
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    .line 821
    iput-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    .line 822
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    :goto_c
    move v1, v3

    goto/16 :goto_f

    .line 825
    :cond_13
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v13, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v14, v1, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    .line 826
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->attached:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz v1, :cond_14

    move v1, v10

    goto :goto_d

    :cond_14
    move v1, v4

    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v6, v3, [Landroid/text/Layout;

    aput-object v12, v6, v4

    invoke-static {v1, v0, v2, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    :cond_15
    move-object/from16 v20, v16

    .line 827
    new-instance v16, Landroid/text/StaticLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/CharSequence;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v1, v16

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    .line 828
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->attached:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz v2, :cond_16

    goto :goto_e

    :cond_16
    move v10, v4

    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v6, v3, [Landroid/text/Layout;

    aput-object v1, v6, v4

    invoke-static {v10, v0, v2, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 829
    :cond_17
    iput-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    .line 830
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 831
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 832
    iput v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    .line 833
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    goto :goto_c

    .line 838
    :cond_18
    :goto_f
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    if-eq v2, v3, :cond_1a

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    .line 841
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastIconX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_19

    .line 842
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconX:Z

    .line 843
    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromIconX:F

    move v1, v3

    .line 847
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastEmoticon:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 848
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getIconWidth()I

    move-result v1

    .line 849
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 850
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastEmoticon:Ljava/lang/String;

    invoke-static {v4}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getTabIcon(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateOutDrawable:Landroid/graphics/drawable/Drawable;

    .line 851
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v4, v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;->emoticon:Ljava/lang/String;

    invoke-static {v4}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getTabIcon(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateInDrawable:Landroid/graphics/drawable/Drawable;

    .line 852
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateOutDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 853
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateInDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 854
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateOutDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 855
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateInDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 856
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconChange:Z

    move v1, v3

    :cond_1a
    int-to-float v2, v5

    .line 861
    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1b

    goto :goto_10

    :cond_1b
    return v1

    .line 862
    :cond_1c
    :goto_10
    iput-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    .line 863
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabWidth:F

    .line 864
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromWidth:F

    return v3
.end method

.method public clearTransitionParams()V
    .locals 1

    const/4 v0, 0x0

    .line 890
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    .line 891
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconWidth:Z

    .line 892
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 893
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateCounterChange:Z

    .line 894
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 895
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 896
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconX:Z

    .line 897
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconChange:Z

    .line 898
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    const/4 v0, 0x0

    .line 899
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    .line 900
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    const/4 v0, 0x1

    .line 711
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->attached:Z

    .line 712
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 713
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    new-array v6, v0, [Landroid/text/Layout;

    aput-object v5, v6, v2

    invoke-static {v1, p0, v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 714
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    new-array v6, v0, [Landroid/text/Layout;

    aput-object v5, v6, v2

    invoke-static {v1, p0, v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 715
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    new-array v6, v0, [Landroid/text/Layout;

    aput-object v5, v6, v2

    invoke-static {v1, p0, v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 716
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    new-array v0, v0, [Landroid/text/Layout;

    aput-object v4, v0, v2

    invoke-static {v3, p0, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->attached:Z

    .line 312
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 313
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    .line 314
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 315
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateCounterChange:Z

    .line 316
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 317
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 318
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconX:Z

    .line 319
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconChange:Z

    .line 320
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 343
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v12, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v12, v3

    .line 344
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez v2, :cond_2

    if-eqz v12, :cond_2

    move v13, v3

    goto :goto_2

    :cond_2
    move v13, v11

    :goto_2
    const/high16 v2, 0x43c80000    # 400.0f

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz v12, :cond_6

    .line 345
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    cmpl-float v5, v5, v15

    if-eqz v5, :cond_6

    .line 346
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 347
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/lit8 v7, v6, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    if-nez v7, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    mul-float/2addr v5, v7

    .line 348
    rem-int/2addr v6, v14

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v9

    const-wide/high16 v17, 0x4004000000000000L    # 2.5

    mul-double v5, v5, v17

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v6, v2

    float-to-double v6, v6

    mul-double/2addr v6, v9

    iget v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/2addr v9, v14

    if-nez v9, :cond_4

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    move v9, v8

    :goto_4
    float-to-double v9, v9

    mul-double/2addr v6, v9

    double-to-float v6, v6

    float-to-double v6, v6

    .line 351
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const v17, 0x3ea8f5c3    # 0.33f

    move/from16 v18, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move/from16 v20, v5

    const/high16 v19, 0x3f800000    # 1.0f

    int-to-double v4, v2

    mul-double/2addr v9, v4

    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/2addr v2, v14

    if-nez v2, :cond_5

    move/from16 v8, v19

    :cond_5
    float-to-double v4, v8

    mul-double/2addr v9, v4

    double-to-float v2, v9

    .line 352
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 350
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const v2, 0x3fb33333    # 1.4f

    mul-float v5, v20, v2

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    invoke-virtual {v1, v5, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_5

    :cond_6
    move/from16 v18, v2

    const/high16 v19, 0x3f800000    # 1.0f

    .line 364
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetmanualScrollingToId(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 365
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetmanualScrollingToId(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    .line 366
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetselectedTabId(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v5

    goto :goto_6

    .line 368
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetselectedTabId(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    .line 369
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetpreviousId(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v5

    .line 371
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v6, v2, :cond_8

    .line 372
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v6

    .line 373
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetaActiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v7

    .line 374
    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetunactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v8

    .line 375
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetaUnactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v9

    .line 376
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadActiveBackground:I

    .line 377
    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadUnactiveBackground:I

    goto :goto_7

    .line 379
    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetunactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v6

    .line 380
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetaUnactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v7

    .line 381
    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v8

    .line 382
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetaUnactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v9

    .line 383
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadUnactiveBackground:I

    .line 384
    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadActiveBackground:I

    :goto_7
    if-gez v7, :cond_c

    .line 387
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimatingIndicator(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetmanualScrollingToId(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v7

    if-eq v7, v4, :cond_a

    :cond_9
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v7, v7, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v7, v2, :cond_b

    if-ne v7, v5, :cond_a

    goto :goto_9

    .line 390
    :cond_a
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v8, v7, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_8
    move/from16 v20, v15

    goto/16 :goto_b

    .line 388
    :cond_b
    :goto_9
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v9, v7, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimatingIndicatorProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v8

    invoke-static {v7, v6, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    :cond_c
    move/from16 v20, v15

    .line 393
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-static {v6, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    .line 394
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-static {v7, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    .line 395
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimatingIndicator(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v15

    if-nez v15, :cond_d

    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetmanualScrollingToPosition(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v15

    if-eq v15, v4, :cond_e

    :cond_d
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v15, v15, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v15, v2, :cond_f

    if-ne v15, v5, :cond_e

    goto :goto_a

    .line 400
    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v9, v8, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimationValue(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v8

    invoke-static {v6, v7, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    .line 396
    :cond_f
    :goto_a
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-static {v8, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    .line 397
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-static {v9, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    .line 398
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v4, v15, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimationValue(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v15

    invoke-static {v8, v9, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimationValue(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v9

    invoke-static {v6, v7, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimatingIndicatorProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v7

    invoke-static {v8, v6, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v7, v7, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fputemojiColorFilter(Lorg/telegram/ui/Components/FilterTabsView;Landroid/graphics/ColorFilter;)V

    .line 409
    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabCount:I

    if-nez v4, :cond_10

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v6, :cond_10

    move v15, v3

    goto :goto_c

    :cond_10
    move v15, v11

    :goto_c
    if-lez v4, :cond_11

    .line 410
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-nez v6, :cond_11

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v6, :cond_11

    move/from16 v22, v3

    goto :goto_d

    :cond_11
    move/from16 v22, v11

    :goto_d
    if-lez v4, :cond_12

    .line 411
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-lez v6, :cond_12

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v6, :cond_12

    move/from16 v23, v3

    goto :goto_e

    :cond_12
    move/from16 v23, v11

    .line 413
    :goto_e
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-gtz v6, :cond_14

    if-eqz v22, :cond_13

    goto :goto_f

    :cond_13
    const/4 v4, 0x0

    move v7, v11

    move/from16 v24, v20

    goto :goto_11

    .line 414
    :cond_14
    :goto_f
    const-string v7, "%d"

    if-eqz v22, :cond_15

    .line 415
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v11

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 417
    :cond_15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v11

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 419
    :goto_10
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v6, v6

    const v7, 0x40eaa7f0    # 7.333f

    .line 420
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    move/from16 v24, v6

    :goto_11
    const v25, 0x418aa9fc    # 17.333f

    if-eqz v13, :cond_17

    .line 428
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetisEditing(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v6

    cmpl-float v6, v6, v20

    if-eqz v6, :cond_17

    :cond_16
    int-to-float v6, v7

    .line 429
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v8, v7

    int-to-float v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v7, v6

    :cond_17
    if-eqz v7, :cond_19

    if-nez v22, :cond_19

    if-eqz v4, :cond_18

    move/from16 v6, v19

    goto :goto_12

    .line 432
    :cond_18
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v6

    goto :goto_12

    :cond_19
    move/from16 v6, v20

    :goto_12
    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabCounterVisible:F

    .line 433
    sget v6, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    const/high16 v8, -0x40000000    # -2.0f

    if-eq v6, v14, :cond_1c

    .line 434
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    add-int/2addr v9, v6

    if-eqz v7, :cond_1b

    if-nez v22, :cond_1b

    if-eqz v4, :cond_1a

    move/from16 v6, v19

    goto :goto_13

    :cond_1a
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v6

    :goto_13
    mul-float/2addr v6, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v7

    goto :goto_14

    :cond_1b
    move v6, v11

    :goto_14
    add-int/2addr v9, v6

    iput v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    goto :goto_17

    .line 436
    :cond_1c
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    if-eqz v7, :cond_1e

    if-nez v22, :cond_1e

    if-eqz v4, :cond_1d

    move/from16 v9, v19

    goto :goto_15

    :cond_1d
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v9

    :goto_15
    mul-float/2addr v9, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v7

    goto :goto_16

    :cond_1e
    move v8, v11

    :goto_16
    add-int/2addr v6, v8

    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    .line 438
    :goto_17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v6, v6, v16

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v8, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 439
    iget-boolean v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    if-eqz v9, :cond_1f

    .line 440
    iget v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v6, v9

    move/from16 v26, v14

    iget v14, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTextX:F

    sub-float v9, v19, v9

    mul-float/2addr v14, v9

    add-float/2addr v6, v14

    :goto_18
    move v14, v6

    goto :goto_19

    :cond_1f
    move/from16 v26, v14

    goto :goto_18

    .line 442
    :goto_19
    iget-object v6, v8, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/CharSequence;

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 443
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/CharSequence;

    .line 444
    new-instance v27, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/CharSequence;

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v8, v8, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v30

    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    invoke-direct/range {v27 .. v34}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v6, v27

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    .line 445
    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v8, v8, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz v8, :cond_20

    const/16 v8, 0x1a

    goto :goto_1a

    :cond_20
    move v8, v11

    :goto_1a
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v3, [Landroid/text/Layout;

    aput-object v6, v3, v11

    invoke-static {v8, v0, v9, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 446
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    .line 447
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    .line 452
    :cond_21
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    const/high16 v18, 0x40c00000    # 6.0f

    if-eqz v3, :cond_29

    .line 453
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v6, :cond_22

    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    goto :goto_1b

    :cond_22
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v6, v19, v6

    :goto_1b
    mul-float v27, v3, v6

    .line 454
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_23

    .line 455
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 456
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    add-float v3, v3, v27

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v6, v6, v16

    add-float v6, v6, v19

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    move v3, v2

    .line 458
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    move v6, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v8

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v28

    add-int v9, v9, v28

    int-to-float v9, v9

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/ColorFilter;

    move-result-object v11

    move-object/from16 v29, v4

    const/4 v4, 0x0

    move/from16 v30, v5

    const/4 v5, 0x0

    move/from16 v31, v6

    move v6, v8

    const/4 v8, 0x0

    move/from16 v32, v7

    move v7, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v21, v12

    move/from16 v12, v30

    move/from16 v30, v13

    move-object/from16 v13, v29

    move/from16 v29, v10

    move-object v10, v11

    move/from16 v11, v31

    move/from16 v31, v15

    move/from16 v15, v32

    move/from16 v32, v14

    const/4 v14, -0x1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 459
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1c

    :cond_23
    move v11, v2

    move/from16 v29, v10

    move/from16 v21, v12

    move/from16 v30, v13

    move/from16 v32, v14

    move/from16 v31, v15

    const/4 v14, -0x1

    move-object v13, v4

    move v12, v5

    move v15, v7

    .line 461
    :goto_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_26

    .line 462
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 463
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 464
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v3, v3, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    int-to-float v4, v2

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v5, :cond_24

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v5, v19, v5

    goto :goto_1d

    :cond_24
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    :goto_1d
    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 465
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v3, v3

    add-float v3, v32, v3

    add-float v3, v3, v27

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v4, v4, v16

    add-float v4, v4, v19

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 466
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    move v3, v2

    .line 467
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    move v4, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v6, v5

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v7, v5

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v5, :cond_25

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v5, v19, v5

    :goto_1e
    move v9, v5

    goto :goto_1f

    :cond_25
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    goto :goto_1e

    :goto_1f
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/ColorFilter;

    move-result-object v10

    move v5, v4

    const/4 v4, 0x0

    move v8, v5

    const/4 v5, 0x0

    move/from16 v33, v8

    const/4 v8, 0x0

    move/from16 v14, v33

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 468
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 469
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 471
    :cond_26
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2b

    .line 472
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 473
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    .line 474
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    int-to-float v3, v14

    iget-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v4, :cond_27

    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    goto :goto_20

    :cond_27
    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v4, v19, v4

    :goto_20
    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 475
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v2, v2

    add-float v2, v32, v2

    add-float v2, v2, v27

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v16

    add-float v3, v3, v19

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 476
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 477
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v6, v4

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v7, v4

    iget-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v4, :cond_28

    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    :goto_21
    move v9, v4

    goto :goto_22

    :cond_28
    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v4, v19, v4

    goto :goto_21

    :goto_22
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/ColorFilter;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 478
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 479
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_23

    :cond_29
    move v11, v2

    move/from16 v29, v10

    move/from16 v21, v12

    move/from16 v30, v13

    move/from16 v32, v14

    move/from16 v31, v15

    move-object v13, v4

    move v12, v5

    move v15, v7

    .line 482
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2a

    .line 483
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 484
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v2, v2

    add-float v14, v32, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v2, v16

    add-float v2, v2, v19

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 485
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 486
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v6, v4

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v7, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/ColorFilter;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 487
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_2a
    move/from16 v27, v20

    .line 491
    :cond_2b
    :goto_23
    invoke-direct {v0}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getCurrentIconAlpha()F

    move-result v2

    cmpl-float v3, v2, v20

    if-lez v3, :cond_31

    .line 494
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getIconWidth()I

    move-result v3

    .line 495
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v4, v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;->emoticon:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentEmoticon:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 496
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v4, v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;->emoticon:Ljava/lang/String;

    iput-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentEmoticon:Ljava/lang/String;

    .line 497
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 498
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->emoticon:Ljava/lang/String;

    invoke-static {v6}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getTabIcon(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->icon:Landroid/graphics/drawable/Drawable;

    .line 499
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 501
    :cond_2c
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v4, v4, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    .line 502
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v5, v16

    float-to-int v5, v5

    .line 503
    iget-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconX:Z

    if-eqz v6, :cond_2d

    int-to-float v5, v5

    .line 504
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v5, v6

    iget v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromIconX:F

    sub-float v6, v19, v6

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 506
    :cond_2d
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v3, v6

    div-float v3, v3, v16

    float-to-int v3, v3

    .line 507
    iget-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateIconChange:Z

    if-eqz v6, :cond_2f

    .line 508
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateOutDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2e

    .line 509
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v5

    int-to-float v7, v3

    .line 510
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 511
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v6, v19, v6

    mul-float/2addr v6, v2

    .line 512
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateOutDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v4, v6}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->createColorFilterWithAlpha(IF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 513
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateOutDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 514
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 516
    :cond_2e
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateInDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_30

    .line 517
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v5

    int-to-float v3, v3

    .line 518
    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 519
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v3, v2

    .line 520
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateInDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->createColorFilterWithAlpha(IF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 521
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->iconAnimateInDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 522
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_24

    .line 525
    :cond_2f
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v5

    int-to-float v3, v3

    .line 526
    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 527
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->createColorFilterWithAlpha(IF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 528
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_30
    :goto_24
    move v7, v5

    goto :goto_25

    :cond_31
    const/4 v7, 0x0

    :goto_25
    if-nez v31, :cond_33

    if-nez v13, :cond_33

    if-eqz v30, :cond_32

    .line 533
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetisEditing(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v2

    cmpl-float v2, v2, v20

    if-eqz v2, :cond_32

    goto :goto_27

    :cond_32
    :goto_26
    move/from16 v2, v24

    goto/16 :goto_34

    .line 534
    :cond_33
    :goto_27
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetaBackgroundColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-gez v2, :cond_34

    .line 535
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetbackgroundColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_28

    .line 537
    :cond_34
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetbackgroundColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    .line 538
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetaBackgroundColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 539
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimationValue(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    invoke-static {v2, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    :goto_28
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 542
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    move/from16 v10, v29

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    .line 543
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimatingIndicator(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetmanualScrollingToPosition(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_36

    :cond_35
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v3, v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v3, v11, :cond_37

    if-ne v3, v12, :cond_36

    goto :goto_29

    .line 547
    :cond_36
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetcounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2a

    .line 544
    :cond_37
    :goto_29
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    move/from16 v4, v17

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 545
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetcounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimatingIndicatorProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    invoke-static {v3, v2, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2a

    .line 550
    :cond_38
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetcounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v3, v3, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    :goto_2a
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    int-to-float v3, v2

    .line 555
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    if-eqz v4, :cond_39

    .line 556
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v6, v19, v5

    mul-float/2addr v3, v6

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    :cond_39
    const/high16 v2, 0x40a00000    # 5.0f

    if-eqz v4, :cond_3a

    .line 558
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    if-nez v4, :cond_3a

    .line 559
    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    sub-float v14, v32, v4

    add-float v14, v14, v27

    add-float/2addr v14, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_2b
    int-to-float v2, v2

    add-float/2addr v14, v2

    goto :goto_2c

    :cond_3a
    add-float v14, v32, v3

    .line 561
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_2b

    .line 563
    :goto_2c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0xff

    const/high16 v4, 0x437f0000    # 255.0f

    if-eqz v30, :cond_3c

    .line 565
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetisEditing(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v5

    if-nez v5, :cond_3b

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    cmpl-float v5, v5, v20

    if-eqz v5, :cond_3c

    :cond_3b
    if-nez v13, :cond_3c

    .line 566
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetcounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2d

    .line 568
    :cond_3c
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetcounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_2d
    if-eqz v23, :cond_3d

    .line 572
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCountWidth:F

    int-to-float v6, v15

    cmpl-float v8, v5, v6

    if-eqz v8, :cond_3d

    iget v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v9, v19, v8

    mul-float/2addr v5, v9

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    goto :goto_2e

    :cond_3d
    int-to-float v5, v15

    :goto_2e
    if-eqz v23, :cond_3e

    .line 574
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCounterWidth:F

    iget v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v9, v19, v8

    mul-float/2addr v6, v9

    mul-float v24, v24, v8

    add-float v24, v6, v24

    .line 576
    :cond_3e
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    int-to-float v8, v2

    add-float/2addr v5, v14

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v2

    int-to-float v9, v9

    invoke-virtual {v6, v14, v8, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez v31, :cond_3f

    if-eqz v22, :cond_41

    .line 578
    :cond_3f
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 579
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    if-eqz v31, :cond_40

    goto :goto_2f

    :cond_40
    sub-float v5, v19, v5

    .line 580
    :goto_2f
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v1, v5, v5, v6, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 582
    :cond_41
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v9, 0x41380000    # 11.5f

    mul-float v10, v6, v9

    mul-float/2addr v6, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetcounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v1, v5, v10, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v23, :cond_49

    .line 586
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    if-eqz v2, :cond_42

    .line 587
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    invoke-virtual {v9, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v6

    :goto_30
    sub-int/2addr v5, v6

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float v2, v2, v16

    add-float/2addr v8, v2

    goto :goto_31

    :cond_42
    const/4 v6, 0x0

    .line 588
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    if-eqz v2, :cond_43

    .line 589
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v9, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v6

    goto :goto_30

    .line 590
    :cond_43
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    if-eqz v2, :cond_44

    .line 591
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v9, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v6

    goto :goto_30

    :cond_44
    :goto_31
    const/high16 v2, 0x3f000000    # 0.5f

    .line 593
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v8, v2

    if-eqz v30, :cond_45

    .line 597
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v2

    sub-float v2, v19, v2

    goto :goto_32

    :cond_45
    move/from16 v2, v19

    .line 599
    :goto_32
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    const/high16 v6, 0x41700000    # 15.0f

    if-eqz v5, :cond_46

    .line 600
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 601
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    mul-float v9, v2, v4

    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 602
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v9, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v5, v24

    div-float v5, v5, v16

    add-float/2addr v9, v5

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v5, v19, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v5, v10

    add-float/2addr v5, v8

    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 603
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 604
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 606
    :cond_46
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    if-eqz v5, :cond_47

    .line 607
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 608
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    mul-float v9, v2, v4

    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    sub-float v10, v19, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 609
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v9, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v5, v24

    div-float v5, v5, v16

    add-float/2addr v9, v5

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 610
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 611
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 614
    :cond_47
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    if-eqz v5, :cond_48

    .line 615
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 616
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 617
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v2, v24

    div-float v2, v2, v16

    add-float/2addr v5, v2

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 618
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 619
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 621
    :cond_48
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_33

    :cond_49
    if-eqz v13, :cond_4b

    if-eqz v30, :cond_4a

    .line 625
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    sub-float v5, v19, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 627
    :cond_4a
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v3, v3, v24

    div-float v3, v3, v16

    add-float/2addr v5, v3

    const/high16 v3, 0x41480000    # 12.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1, v13, v5, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4b
    :goto_33
    if-nez v31, :cond_4c

    if-eqz v22, :cond_4d

    .line 632
    :cond_4c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_4d
    if-eqz v30, :cond_32

    .line 634
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetisEditing(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v2

    cmpl-float v2, v2, v20

    if-eqz v2, :cond_32

    .line 635
    :cond_4e
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetdeletePaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 636
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetdeletePaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x40400000    # 3.0f

    .line 637
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 638
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    int-to-float v8, v2

    sub-float v2, v3, v8

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v8

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v4, v8

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float/2addr v5, v8

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetdeletePaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 639
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v2, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v3, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v5, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetdeletePaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_26

    :goto_34
    if-eqz v21, :cond_4f

    .line 642
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgeteditingAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v3

    cmpl-float v3, v3, v20

    if-eqz v3, :cond_4f

    .line 643
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 646
    :cond_4f
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentEmoticon:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastEmoticon:Ljava/lang/String;

    move/from16 v6, v32

    .line 647
    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTextX:F

    int-to-float v3, v7

    .line 648
    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastIconX:F

    .line 649
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v4, v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iput v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    .line 650
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    iput-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleLayout:Landroid/text/StaticLayout;

    .line 651
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/CharSequence;

    iput-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/CharSequence;

    .line 652
    iget v4, v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    iput v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    .line 653
    iput v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCountWidth:I

    .line 654
    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCounterWidth:F

    .line 655
    iget v2, v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastIconWidth:I

    .line 656
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    .line 657
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    if-nez v2, :cond_51

    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    cmpl-float v2, v2, v20

    if-eqz v2, :cond_50

    goto :goto_35

    :cond_50
    return-void

    .line 660
    :cond_51
    :goto_35
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_52

    .line 661
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->other_lockedfolders:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fputlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;Landroid/graphics/drawable/Drawable;)V

    .line 663
    :cond_52
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    const v3, 0x3dda740e

    if-eqz v2, :cond_53

    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    cmpl-float v5, v4, v19

    if-eqz v5, :cond_53

    add-float/2addr v4, v3

    .line 664
    iput v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    goto :goto_36

    :cond_53
    if-nez v2, :cond_54

    .line 666
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    .line 668
    :cond_54
    :goto_36
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    move/from16 v4, v19

    move/from16 v3, v20

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    .line 669
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetunactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    .line 670
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetaUnactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v3

    if-ltz v3, :cond_55

    .line 671
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetaUnactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetanimationValue(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v4

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    .line 673
    :cond_55
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawableColor(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v3

    if-eq v3, v2, :cond_56

    .line 674
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fputlockDrawableColor(Lorg/telegram/ui/Components/FilterTabsView;I)V

    .line 675
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 677
    :cond_56
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v2, v16

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 678
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 679
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 680
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v19

    if-eqz v2, :cond_57

    .line 681
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 682
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 683
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 684
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 686
    :cond_57
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 873
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetselectedTabId(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetselectedTabId(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 v0, 0x10

    .line 875
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 876
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrOpenMenu2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    if-eqz v0, :cond_3

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 880
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    if-eqz v2, :cond_1

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lez v2, :cond_2

    .line 882
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    const-string v3, "AccDescrUnreadCount"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result p1

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetadditionalTabWidth(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v0

    add-int/2addr p1, v0

    .line 337
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V
    .locals 5

    .line 285
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 286
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    .line 287
    iget-object p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 290
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentNoanimate:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eq p1, p2, :cond_6

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 292
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 295
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->attached:Z

    if-eqz p1, :cond_5

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    const/16 p2, 0x1a

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    new-array v4, v0, [Landroid/text/Layout;

    aput-object v3, v4, v1

    invoke-static {p1, p0, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 297
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz p1, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    new-array v4, v0, [Landroid/text/Layout;

    aput-object v3, v4, v1

    invoke-static {p1, p0, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 298
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz p1, :cond_3

    move p1, p2

    goto :goto_3

    :cond_3
    move p1, v1

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    new-array v4, v0, [Landroid/text/Layout;

    aput-object v3, v4, v1

    invoke-static {p1, p0, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move p2, v1

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    new-array v0, v0, [Landroid/text/Layout;

    aput-object v2, v0, v1

    invoke-static {p2, p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 301
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentNoanimate:Z

    :cond_6
    return-void
.end method

.method public shakeLockIcon(FI)V
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 905
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    return-void

    .line 908
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 909
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 910
    new-instance v3, Lorg/telegram/ui/Components/FilterTabsView$TabView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FilterTabsView$TabView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TabView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 914
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x32

    .line 915
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 916
    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$TabView$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView$1;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TabView;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 924
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
