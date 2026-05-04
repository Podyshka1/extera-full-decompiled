.class Lorg/telegram/ui/Components/ShareAlert$5;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fromOffsetTop:I

.field private fromScrollY:I

.field private fullHeight:Z

.field private ignoreLayout:Z

.field private lightStatusBar:Z

.field private final pinnedToTop:Lorg/telegram/ui/Components/AnimatedFloat;

.field private previousTopOffset:I

.field private rect1:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field private toOffsetTop:I

.field private toScrollY:I

.field private topOffset:I


# direct methods
.method static bridge synthetic -$$Nest$fgetfromOffsetTop(Lorg/telegram/ui/Components/ShareAlert$5;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->fromOffsetTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfromScrollY(Lorg/telegram/ui/Components/ShareAlert$5;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->fromScrollY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousTopOffset(Lorg/telegram/ui/Components/ShareAlert$5;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->previousTopOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettoOffsetTop(Lorg/telegram/ui/Components/ShareAlert$5;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->toOffsetTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettoScrollY(Lorg/telegram/ui/Components/ShareAlert$5;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->toScrollY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopOffset(Lorg/telegram/ui/Components/ShareAlert$5;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->topOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfromOffsetTop(Lorg/telegram/ui/Components/ShareAlert$5;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->fromOffsetTop:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfromScrollY(Lorg/telegram/ui/Components/ShareAlert$5;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->fromScrollY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtoOffsetTop(Lorg/telegram/ui/Components/ShareAlert$5;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->toOffsetTop:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtoScrollY(Lorg/telegram/ui/Components/ShareAlert$5;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->toScrollY:I

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 7

    .line 539
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 541
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 542
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->rect1:Landroid/graphics/RectF;

    .line 555
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$5$1;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/Components/ShareAlert$5$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$5;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    .line 912
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2300(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v0, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->lightStatusBar:Z

    .line 913
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ShareAlert$5;->pinnedToTop:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method private onMeasureInternal(II)V
    .locals 13

    .line 743
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 744
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 746
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 748
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputkeyboardSize2(Lorg/telegram/ui/Components/ShareAlert;I)V

    .line 749
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetkeyboardSize2(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-gt v2, v6, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 751
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 752
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 755
    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 756
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetkeyboardSize2(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/16 v4, 0x8

    const/high16 v6, 0x40000000    # 2.0f

    if-gt v2, v3, :cond_5

    .line 757
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_2

    .line 759
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v5

    goto :goto_0

    .line 762
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result p2

    :goto_0
    sub-int/2addr v1, p2

    .line 765
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 767
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v5

    .line 768
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetpickerBottomLayout(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 769
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetpickerBottomLayout(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    move v11, p2

    goto :goto_3

    .line 772
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupVisible()Z

    move-result v2

    if-nez v2, :cond_6

    .line 773
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 775
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetpickerBottomLayout(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 776
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetpickerBottomLayout(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 779
    :goto_3
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 781
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v5, p2, :cond_e

    .line 783
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 784
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_8

    :cond_7
    :goto_5
    move-object v7, p0

    move v9, p1

    goto/16 :goto_8

    .line 787
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 788
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    .line 795
    :cond_9
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 789
    :cond_a
    :goto_6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 790
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_b

    const/high16 v3, 0x43480000    # 200.0f

    goto :goto_7

    :cond_b
    const/high16 v3, 0x43a00000    # 320.0f

    :goto_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v7, v1, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int/2addr v7, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 792
    :cond_c
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_5

    :cond_d
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move v9, p1

    .line 798
    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move p1, v9

    goto/16 :goto_4

    :cond_e
    move-object v7, p0

    .line 802
    iget-object p1, v7, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->updateBottomOverlay()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 977
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/Components/ShareAlert;)V

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$3300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setSize(II)V

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->updateDisplayListIfNeeded()V

    .line 983
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$3500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setSize(II)V

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->updateDisplayListIfNeeded()V

    .line 989
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 990
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 991
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 992
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 997
    instance-of v0, p2, Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetemojiViewChildBg(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetemojiViewChildBg(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetemojiViewChildBg(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetemojiViewChildBg(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1003
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1004
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 1008
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V
    .locals 1

    .line 654
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_0

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 656
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 657
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 658
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 660
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_1

    .line 661
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 662
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 663
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 664
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 666
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_2

    .line 667
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 668
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 669
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 670
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 681
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 688
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 917
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$2400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->topOffset:I

    add-int/2addr v0, v2

    .line 920
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$2500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->topOffset:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputcontainerViewTop(Lorg/telegram/ui/Components/ShareAlert;I)V

    .line 921
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    add-int/2addr v2, v4

    .line 925
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$2700(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 926
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v4

    .line 927
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->fullHeight:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$2800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    add-int/2addr v4, v3

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v4, v7, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 928
    :goto_0
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ShareAlert;->access$2900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v7

    neg-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$5;->pinnedToTop:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v4

    invoke-static {v3, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 931
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetshadowDrawable(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7, v6, v3, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 932
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetshadowDrawable(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 934
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer2:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 935
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-gt v3, v7, :cond_3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 936
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 937
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 939
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 940
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/Bulletin$Layout;->setTop(Z)V

    .line 942
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    goto :goto_2

    .line 945
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer2:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v4, v1

    if-gez v2, :cond_5

    const/high16 v2, 0x42100000    # 36.0f

    .line 950
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 951
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->rect1:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v0, v9

    int-to-float v0, v0

    invoke-virtual {v3, v7, v8, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 952
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ShareAlert;->access$3100(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 953
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v4

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 954
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->rect1:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 958
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 959
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->lightStatusBar:Z

    if-eqz v1, :cond_6

    int-to-float v1, v6

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    move v1, v5

    goto :goto_3

    :cond_6
    move v1, v6

    :goto_3
    and-int/lit16 v2, v0, 0x2000

    if-lez v2, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    :goto_4
    if-eq v1, v5, :cond_9

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x2000

    goto :goto_5

    :cond_8
    and-int/lit16 v0, v0, -0x2001

    .line 967
    :goto_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 971
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 972
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->topOffset:I

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->previousTopOffset:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 885
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->fullHeight:Z

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    if-nez v0, :cond_0

    .line 886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->topOffset:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 887
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return v1

    .line 891
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 892
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return v1

    .line 896
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 807
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 809
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    .line 811
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x41a00000    # 20.0f

    .line 814
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 816
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    :goto_1
    if-ge v2, p1, :cond_c

    .line 819
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 820
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto/16 :goto_8

    .line 823
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 825
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 826
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 831
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    const/16 v7, 0x33

    :cond_3
    and-int/lit8 v8, v7, 0x70

    and-int/lit8 v7, v7, 0x7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_5

    const/4 v9, 0x5

    if-eq v7, v9, :cond_4

    .line 848
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_3

    :cond_4
    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    .line 844
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert;->access$2200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v9

    :goto_2
    sub-int/2addr v7, v9

    goto :goto_3

    :cond_5
    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    .line 841
    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :goto_3
    const/16 v9, 0x10

    if-eq v8, v9, :cond_8

    const/16 v9, 0x30

    if-eq v8, v9, :cond_7

    const/16 v9, 0x50

    if-eq v8, v9, :cond_6

    .line 862
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_6
    sub-int v8, p5, v1

    sub-int/2addr v8, p3

    sub-int/2addr v8, v6

    .line 859
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_4
    sub-int v4, v8, v4

    goto :goto_5

    .line 853
    :cond_7
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v4, v8

    iget v8, p0, Lorg/telegram/ui/Components/ShareAlert$5;->topOffset:I

    add-int/2addr v4, v8

    goto :goto_5

    :cond_8
    sub-int v8, p5, v1

    .line 856
    iget v9, p0, Lorg/telegram/ui/Components/ShareAlert$5;->topOffset:I

    add-int/2addr v9, p3

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 865
    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 866
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 867
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    :goto_6
    sub-int/2addr v4, v8

    goto :goto_7

    .line 869
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    goto :goto_6

    .line 872
    :cond_a
    :goto_7
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetbottomFadeView(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/View;

    move-result-object v8

    if-ne v3, v8, :cond_b

    .line 873
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v4, v8

    :cond_b
    add-int/2addr v5, v7

    add-int/2addr v6, v4

    .line 875
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 878
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->updateBottomOverlay()V

    .line 880
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mupdateLayout(Lorg/telegram/ui/Components/ShareAlert;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 695
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 698
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 701
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchLayoutManager(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 704
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    invoke-virtual {p0, v0, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 706
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 708
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    .line 710
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v4, 0x42ce0000    # 103.0f

    .line 711
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v1, v1

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v1, v7

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    const/4 v8, 0x2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    mul-int/2addr v1, v9

    add-int/2addr v5, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    add-int/2addr v5, v1

    .line 712
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_4

    .line 713
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v1, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetshareTopicsAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int/2addr v6, v4

    add-int/2addr v1, v6

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    add-int/2addr v1, v4

    if-le v1, v5, :cond_4

    .line 715
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    :cond_4
    if-ge v5, v0, :cond_5

    move v0, v3

    goto :goto_3

    .line 718
    :cond_5
    div-int/lit8 v1, v0, 0x5

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 719
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    add-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$1500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v6

    add-int/2addr v1, v6

    .line 720
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    if-ne v6, v0, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    if-eq v6, v1, :cond_8

    .line 721
    :cond_7
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 722
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetgridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v3, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 723
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgettopicsGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v3, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 724
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 727
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_a

    .line 728
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchGridView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v4, v3

    :goto_5
    add-int/lit8 v4, v4, 0x3c

    int-to-float v1, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$1700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 730
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    :cond_a
    if-lt v5, p2, :cond_b

    move v0, v2

    goto :goto_6

    :cond_b
    move v0, v3

    .line 732
    :goto_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->fullHeight:Z

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_7

    :cond_c
    sub-int v0, p2, v5

    .line 733
    :goto_7
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->topOffset:I

    .line 734
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mcheckCurrentList(Lorg/telegram/ui/Components/ShareAlert;Z)V

    .line 736
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    .line 738
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 739
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$5;->onMeasureInternal(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->this$0:Lorg/telegram/ui/Components/ShareAlert;

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

    .line 906
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$5;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 909
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
