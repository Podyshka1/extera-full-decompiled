.class public Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FastScroll"
.end annotation


# instance fields
.field private activeColor:I

.field private arrowPath:Landroid/graphics/Path;

.field blurredCircleDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field blurredTagDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private bubbleProgress:F

.field private currentLetter:Ljava/lang/String;

.field fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private floatingDateProgress:F

.field private floatingDateVisible:Z

.field private fromTop:Z

.field private fromWidth:F

.field hideFloatingDateRunnable:Ljava/lang/Runnable;

.field private inLetterLayout:Landroid/text/StaticLayout;

.field private inactiveColor:I

.field isMoving:Z

.field isRtl:Z

.field public isVisible:Z

.field private lastLetterY:F

.field private lastUpdateTime:J

.field private lastY:F

.field private letterLayout:Landroid/text/StaticLayout;

.field private letterPaint:Landroid/text/TextPaint;

.field private oldLetterLayout:Landroid/text/StaticLayout;

.field private outLetterLayout:Landroid/text/StaticLayout;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private positionWithOffset:[I

.field private pressed:Z

.field private progress:F

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private replaceLayoutProgress:F

.field private scrollX:I

.field private stableLetterLayout:Landroid/text/StaticLayout;

.field private startDy:F

.field startTime:J

.field startY:F

.field private textX:F

.field private textY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;

.field public topOffset:I

.field touchSlop:F

.field private type:I

.field public usePadding:Z

.field viewAlpha:F

.field visibilityAlpha:F


# direct methods
.method static bridge synthetic -$$Nest$fgetpressed(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfloatingDateVisible(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentLetter(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateColors(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;I)V
    .locals 8

    .line 590
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    .line 591
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    .line 534
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    .line 535
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    .line 536
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 546
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    .line 550
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    .line 552
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    .line 553
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/16 v2, 0x8

    .line 554
    new-array v3, v2, [F

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v3, 0x2

    .line 565
    new-array v3, v3, [I

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    .line 577
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$FastScroll$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    .line 636
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    .line 592
    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 594
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x42340000    # 45.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 595
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    goto :goto_0

    .line 597
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    .line 598
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 599
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 600
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v5, p1, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    sget v3, Lorg/telegram/messenger/R$drawable;->calendar_date:I

    invoke-static {p2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 602
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, p1, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const/4 v6, -0x1

    const v7, 0x3dcccccd    # 0.1f

    invoke-static {v4, v6, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    if-ge v1, v2, :cond_1

    .line 605
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v1, :cond_2

    const/high16 p3, 0x41200000    # 10.0f

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    const/16 p3, 0x84

    goto :goto_2

    :cond_3
    const/16 p3, 0xf0

    :goto_2
    add-int/lit8 p3, p3, -0xf

    int-to-float p3, p3

    goto :goto_1

    :goto_3
    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    .line 609
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->hasSections()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 610
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    iget-boolean p3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz p3, :cond_4

    const/high16 p3, -0x3f800000    # -4.0f

    goto :goto_4

    :cond_4
    const/high16 p3, 0x40c00000    # 6.0f

    :goto_4
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    .line 612
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    .line 613
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 614
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 615
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->touchSlop:F

    .line 616
    sget p1, Lorg/telegram/messenger/R$drawable;->fast_scroll_shadow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getCurrentLetter(Z)V
    .locals 26

    move-object/from16 v0, p0

    .line 719
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 720
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_8

    .line 721
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 722
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 723
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 724
    instance-of v4, v2, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v4, :cond_8

    .line 725
    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    .line 726
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 728
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    aget v6, v5, v4

    aget v5, v5, v3

    neg-int v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetsectionOffset(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1, v6, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 731
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    aget v1, v1, v4

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getLetter(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    if-nez v6, :cond_2

    .line 733
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1

    .line 734
    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    .line 736
    :cond_1
    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    return-void

    .line 737
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->currentLetter:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 738
    iput-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->currentLetter:Ljava/lang/String;

    .line 739
    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v13, 0x2

    if-nez v2, :cond_3

    .line 740
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v8, 0x3e8

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    goto/16 :goto_2

    .line 742
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    .line 743
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v17, v2, 0x1

    .line 744
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v8, v17

    move-object/from16 v9, v18

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    .line 745
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_6

    .line 746
    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 747
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 748
    array-length v7, v5

    if-ne v7, v13, :cond_4

    array-length v7, v2

    if-ne v7, v13, :cond_4

    aget-object v7, v5, v3

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 749
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 750
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 751
    new-instance v9, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v9}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v2, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 752
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v21, v2, 0x1

    move-object/from16 v22, v18

    .line 753
    new-instance v18, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v20, v2

    move-object/from16 v19, v8

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v2, v18

    move-object/from16 v18, v22

    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    .line 755
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 756
    new-instance v2, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v2}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v15, v2, v7, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 757
    new-instance v14, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    .line 759
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 760
    new-instance v2, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v2}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15, v2, v4, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 761
    new-instance v14, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 763
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    .line 764
    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    .line 767
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromWidth:F

    const/4 v2, 0x0

    .line 768
    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    .line 769
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getProgress()F

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastLetterY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    .line 772
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getProgress()F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastLetterY:F

    .line 774
    :goto_2
    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    .line 775
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineWidth(I)F

    .line 777
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 778
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x42b00000    # 88.0f

    if-eqz v1, :cond_7

    const/high16 v1, 0x41200000    # 10.0f

    .line 779
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    add-float/2addr v1, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    goto :goto_3

    .line 781
    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    .line 783
    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v13

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    :cond_8
    return-void
.end method

.method private updateColors()V
    .locals 3

    .line 620
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    const/16 v1, 0x66

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    .line 621
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->activeColor:I

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 624
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 627
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public applyBlurDrawables(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;)V
    .locals 2

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetfastScroll(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredCircleDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v1, 0x40800000    # 4.0f

    .line 1071
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredCircleDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetfastScroll(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredTagDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 p2, 0x40c00000    # 6.0f

    .line 1075
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1076
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredTagDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-void
.end method

.method public fillDrawablesRect(Landroid/graphics/RectF;)Z
    .locals 2

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredCircleDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredTagDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1081
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredTagDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1082
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredCircleDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1083
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAlpha()F
    .locals 1

    .line 1054
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 1062
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    return v0
.end method

.method public getScrollBarY()I
    .locals 2

    .line 1058
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetselfOnLayout(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1004
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 805
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 806
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v2, v4

    .line 807
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v5, v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v2

    int-to-float v9, v9

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 808
    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/high16 v5, 0x42100000    # 36.0f

    const/4 v7, -0x1

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v9, 0x2

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    if-nez v4, :cond_1

    .line 809
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->activeColor:I

    const/16 v16, 0x0

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    invoke-static {v14, v15, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 810
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move/from16 v18, v5

    move/from16 v19, v6

    goto/16 :goto_2

    :cond_1
    const/16 v16, 0x0

    .line 812
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v14, v14, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const v14, 0x3dcccccd    # 0.1f

    invoke-static {v4, v7, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41d80000    # 27.0f

    .line 814
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    .line 815
    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredCircleDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v14, :cond_2

    .line 816
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    const/high16 v4, -0x3e600000    # -20.0f

    .line 817
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    .line 818
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    .line 819
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v15, v15, v17

    const/high16 v17, 0x425c0000    # 55.0f

    .line 820
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v18, v5

    add-int v5, v2, v17

    .line 816
    invoke-virtual {v14, v3, v4, v15, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 821
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredCircleDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v19, v6

    goto :goto_1

    :cond_2
    move/from16 v18, v5

    .line 823
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    sub-int/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/2addr v15, v9

    int-to-float v15, v15

    sub-float v15, v4, v15

    float-to-int v15, v15

    move/from16 v17, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v19, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v14, v15, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 824
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 825
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 828
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, v5, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 830
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 831
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 832
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 834
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 835
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 836
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v1, v4, v12, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 837
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 838
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 840
    :goto_2
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v6, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v3, :cond_d

    .line 841
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-nez v3, :cond_3

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_17

    .line 842
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 843
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x42380000    # 46.0f

    .line 844
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    .line 846
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-gt v2, v4, :cond_4

    .line 847
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    .line 848
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move/from16 v20, v4

    move v4, v2

    move/from16 v2, v20

    goto :goto_3

    :cond_4
    move v4, v12

    :goto_3
    const/high16 v5, 0x41200000    # 10.0f

    .line 852
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v7, 0x41e80000    # 29.0f

    .line 853
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    const/high16 v10, 0x42200000    # 40.0f

    const/high16 v13, 0x42300000    # 44.0f

    if-gtz v8, :cond_5

    .line 854
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    .line 855
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    add-float/2addr v11, v4

    goto :goto_4

    .line 857
    :cond_5
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    .line 858
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    .line 859
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    sub-float v4, v14, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    add-float/2addr v4, v11

    move v11, v8

    move v8, v4

    .line 861
    :goto_4
    iget-boolean v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    const/4 v7, 0x6

    if-eqz v4, :cond_6

    iget-object v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aget v13, v10, v16

    cmpl-float v13, v13, v8

    if-nez v13, :cond_7

    aget v10, v10, v7

    cmpl-float v10, v10, v11

    if-nez v10, :cond_7

    :cond_6
    if-nez v4, :cond_b

    iget-object v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aget v13, v10, v9

    cmpl-float v13, v13, v8

    if-nez v13, :cond_7

    const/4 v13, 0x4

    aget v10, v10, v13

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_b

    :cond_7
    if-eqz v4, :cond_8

    .line 863
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aput v8, v4, v6

    aput v8, v4, v16

    const/4 v6, 0x7

    .line 864
    aput v11, v4, v6

    aput v11, v4, v7

    goto :goto_5

    .line 866
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v6, 0x3

    aput v8, v4, v6

    aput v8, v4, v9

    const/4 v6, 0x5

    .line 867
    aput v11, v4, v6

    const/4 v6, 0x4

    aput v11, v4, v6

    .line 869
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 870
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v6, :cond_9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_6

    :cond_9
    move v5, v12

    :goto_6
    iget-boolean v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v6, :cond_a

    const/high16 v6, 0x42c40000    # 98.0f

    goto :goto_7

    :cond_a
    const/high16 v6, 0x42b00000    # 88.0f

    :goto_7
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42b00000    # 88.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v5, v12, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 871
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 872
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 874
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_c

    goto :goto_8

    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    :goto_8
    if-eqz v4, :cond_17

    .line 876
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 877
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v6, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v1, v5, v5, v6, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 878
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 879
    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 880
    invoke-virtual {v4, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 881
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_e

    :cond_d
    if-ne v3, v6, :cond_17

    .line 885
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_17

    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_17

    .line 886
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const v2, 0x3e99999a    # 0.3f

    .line 887
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v3, v2

    const v2, 0x3f333333    # 0.7f

    add-float/2addr v3, v2

    .line 888
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v2, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v1, v3, v3, v2, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 890
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 891
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 892
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 893
    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromWidth:F

    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v15, v14, v15

    mul-float/2addr v9, v15

    add-float/2addr v4, v9

    .line 894
    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    sub-float v4, v3, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v4, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/text/Layout;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v13

    sub-float v15, v2, v15

    move/from16 v16, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v15, v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v13

    add-float/2addr v6, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-virtual {v9, v4, v15, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 896
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 897
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    .line 898
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    int-to-float v8, v4

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 900
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredTagDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v6, :cond_e

    .line 901
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 902
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 903
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredTagDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 904
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->blurredTagDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 906
    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget v15, v8, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iget v7, v8, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {v6, v9, v15, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 907
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float v7, v7, v16

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 908
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 911
    :goto_9
    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    cmpl-float v7, v6, v14

    if-eqz v7, :cond_10

    const v7, 0x3dda740e

    add-float/2addr v6, v7

    .line 912
    iput v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    cmpl-float v6, v6, v14

    if-lez v6, :cond_f

    .line 914
    iput v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    goto :goto_a

    .line 916
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 920
    :cond_10
    :goto_a
    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    cmpl-float v6, v6, v14

    const/high16 v7, 0x41700000    # 15.0f

    if-eqz v6, :cond_16

    .line 921
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 922
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 923
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 924
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_12

    .line 925
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v8, v5

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v8, v9

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v9, v14, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 926
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 927
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v13

    sub-float v8, v2, v8

    iget-boolean v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    if-eqz v9, :cond_11

    const/4 v9, -0x1

    goto :goto_b

    :cond_11
    const/4 v9, 0x1

    :goto_b
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    mul-int/2addr v9, v11

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 928
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 929
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 932
    :cond_12
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_14

    .line 933
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v8, v5

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v8, v9

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 934
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 935
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v13

    sub-float v8, v2, v8

    iget-boolean v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    if-eqz v9, :cond_13

    const/16 v17, 0x1

    goto :goto_c

    :cond_13
    const/16 v17, -0x1

    :goto_c
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int v7, v7, v17

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v9, v14, v9

    mul-float/2addr v7, v9

    add-float/2addr v8, v7

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 936
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 937
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 940
    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_15

    .line 941
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    iget v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 942
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 943
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v13

    sub-float/2addr v2, v6

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 944
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 945
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 947
    :cond_15
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    .line 949
    :cond_16
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v8, v5

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 950
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 951
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v13

    sub-float/2addr v2, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v7, v14, v7

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 952
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 953
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 956
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 957
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 959
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 962
    :cond_17
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 963
    iget-wide v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_18

    const-wide/16 v5, 0x11

    cmp-long v5, v3, v5

    if-lez v5, :cond_19

    :cond_18
    const-wide/16 v3, 0x11

    .line 967
    :cond_19
    iget-boolean v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    const/high16 v6, 0x42f00000    # 120.0f

    if-eqz v5, :cond_1a

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_1a

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpg-float v7, v7, v14

    if-ltz v7, :cond_1c

    :cond_1a
    if-eqz v5, :cond_1b

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-nez v5, :cond_1e

    :cond_1b
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v5, v5, v12

    if-lez v5, :cond_1e

    .line 968
    :cond_1c
    iput-wide v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 969
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 970
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1d

    .line 971
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1e

    .line 973
    iput v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    goto :goto_f

    .line 976
    :cond_1d
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_1e

    .line 978
    iput v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    .line 984
    :cond_1e
    :goto_f
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-eqz v1, :cond_20

    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v5, v2, v14

    if-eqz v5, :cond_20

    long-to-float v1, v3

    div-float/2addr v1, v6

    add-float/2addr v2, v1

    .line 985
    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v1, v2, v14

    if-lez v1, :cond_1f

    .line 987
    iput v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    .line 989
    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_20
    if-nez v1, :cond_22

    .line 990
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v2, v1, v12

    if-eqz v2, :cond_22

    long-to-float v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    .line 991
    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_21

    .line 993
    iput v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    .line 995
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_22
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 793
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez p1, :cond_0

    const/high16 p1, 0x43040000    # 132.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43700000    # 240.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 795
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 797
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 640
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 641
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return v1

    .line 644
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v2, 0x42580000    # 54.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_9

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_9

    .line 715
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return p1

    .line 670
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-nez v0, :cond_2

    return v4

    .line 673
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->touchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 674
    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    .line 676
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-eqz v0, :cond_8

    .line 677
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 678
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float/2addr v0, v1

    .line 679
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float/2addr v1, v3

    cmpg-float v3, p1, v0

    if-gez v3, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    cmpl-float v0, p1, v1

    if-lez v0, :cond_5

    move p1, v1

    .line 685
    :cond_5
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float v0, p1, v0

    .line 686
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    .line 687
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 689
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    goto :goto_1

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 691
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    .line 693
    :cond_7
    :goto_1
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter(Z)V

    .line 694
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    return v4

    .line 699
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 700
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startTime:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x96

    cmp-long v0, v2, v5

    if-gez v0, :cond_a

    .line 701
    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_a

    .line 702
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onFastScrollSingleTap()V

    .line 705
    :cond_a
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    .line 706
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 708
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 709
    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_b

    .line 710
    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 712
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->showFloatingDate()V

    return v4

    .line 646
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 647
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startY:F

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr p1, v2

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float p1, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 649
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    const/high16 v3, 0x41c80000    # 25.0f

    if-eqz v2, :cond_d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_15

    :cond_d
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-nez v2, :cond_e

    const/high16 v2, 0x42d60000    # 107.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_15

    :cond_e
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    cmpg-float v5, v2, p1

    if-ltz v5, :cond_15

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    cmpl-float v2, v2, v6

    if-lez v2, :cond_f

    goto :goto_2

    .line 652
    :cond_f
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-ne v2, v4, :cond_13

    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-nez v2, :cond_13

    .line 653
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v2, :cond_10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_12

    :cond_10
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_12

    :cond_11
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    cmpg-float v2, v0, p1

    if-ltz v2, :cond_12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    :cond_12
    return v1

    .line 657
    :cond_13
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    .line 658
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startTime:J

    .line 659
    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    .line 660
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 664
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->showFloatingDate()V

    .line 665
    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_14

    .line 666
    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onStartFastScroll()V

    :cond_14
    return v4

    :cond_15
    :goto_2
    return v1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1046
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1047
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    .line 1048
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    mul-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 1030
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eq v0, p1, :cond_1

    .line 1031
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1032
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    .line 1033
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    mul-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1008
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    .line 1009
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisibilityAlpha(F)V
    .locals 1

    .line 1038
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1039
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    .line 1040
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    mul-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public showFloatingDate()V
    .locals 3

    .line 1018
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 1021
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-nez v0, :cond_1

    .line 1022
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    .line 1023
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1025
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
