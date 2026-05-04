.class public Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/DialogStoriesCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoryCell"
.end annotation


# instance fields
.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private bounceScale:F

.field public cancellable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

.field chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field crossfadeAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

.field crossfadeToDialog:Z

.field crossfadeToDialogId:J

.field private cx:F

.field private cy:F

.field dialogId:J

.field public drawAvatar:Z

.field public drawInParent:Z

.field private final failT:Lorg/telegram/ui/Components/AnimatedFloat;

.field isFail:Z

.field public isFirst:Z

.field public isLast:Z

.field isSelf:Z

.field private isUploadingState:Z

.field private mini:Z

.field private overscrollProgress:F

.field public final params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field public position:I

.field progressToCollapsed:F

.field progressToCollapsed2:F

.field progressWasDrawn:Z

.field public radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field private selectedForOverscroll:Z

.field textAlpha:F

.field textAlphaTransition:F

.field textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field textViewContainer:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

.field user:Lorg/telegram/tgnet/TLRPC$User;

.field private verifiedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$3ZnTv2Lx6FObaSBnotR50v39svQ(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->lambda$setDialogId$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KAhbR-S0GGcWTL6pOfy9fwt3auU(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->lambda$dispatchDraw$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sHvrbiaOLkQ6sazwSWEPBlEEbEM(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->lambda$setDialogId$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmini(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetClipInParent(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setClipInParent(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;)V
    .locals 9

    .line 1530
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 1531
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1499
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 1500
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1501
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1502
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 p2, 0x1

    .line 1503
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    .line 1516
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1517
    iput v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    .line 1518
    iput v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlphaTransition:F

    .line 1522
    iput v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->bounceScale:F

    .line 1528
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v6, 0x15e

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->failT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1532
    invoke-static {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettype(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    .line 1533
    iput-boolean p2, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isDialogStoriesCell:Z

    .line 1534
    iget-object p1, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1535
    iget-object p1, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 1537
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    .line 1538
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1539
    iget-boolean p1, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez p1, :cond_1

    .line 1540
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1542
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->createTextView()V

    .line 1543
    iget-object p1, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    const/4 p2, -0x1

    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1544
    iget-object p1, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p2, 0x42400000    # 48.0f

    invoke-static {p2}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1545
    iget-object p1, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p2}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method private createTextView()V
    .locals 9

    .line 1549
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1550
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1553
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetTextColor(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 1555
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method private getArcProgress(FF)F
    .locals 3

    .line 1893
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isLast:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetoverscrollProgress(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    .line 1896
    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1897
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40600000    # 3.5f

    .line 1898
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    div-float/2addr p1, v1

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 1901
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p1, v1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$dispatchDraw$2(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetcollapsedProgress2(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 1806
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setDialogId$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1618
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1619
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 1620
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1622
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1623
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$setDialogId$1()V
    .locals 2

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1640
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fputanimationRunnable(Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setClipInParent(Z)V
    .locals 1

    .line 1884
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1887
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1888
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    const/high16 v1, 0x42400000    # 48.0f

    .line 1704
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x41d2a3d7    # 26.33f

    .line 1705
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    .line 1706
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v5}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetoverscrollProgress(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    div-float/2addr v5, v6

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    mul-float/2addr v4, v5

    .line 1707
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->selectedForOverscroll:Z

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v5, :cond_0

    .line 1708
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v7}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetoverscrollProgress(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v7

    sub-float/2addr v7, v6

    div-float/2addr v7, v6

    invoke-static {v7, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v7

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    :cond_0
    add-float/2addr v1, v4

    .line 1711
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v12, v13

    .line 1714
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v13

    sub-float v15, v1, v14

    .line 1715
    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v15, v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1716
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v13

    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 1718
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    div-float/2addr v4, v6

    invoke-static {v4, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v16

    .line 1720
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 1721
    iget-boolean v6, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceAnimateProgressToSegments:Z

    if-nez v6, :cond_1

    .line 1722
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v6}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetcollapsedProgress2(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v6

    sub-float v6, v9, v6

    iput v6, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 1724
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    add-float v6, v1, v12

    add-float v7, v2, v12

    invoke-virtual {v4, v1, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1725
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const v6, 0x3faa3d71    # 1.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    mul-float/2addr v6, v8

    iput v6, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->additionalInset:F

    .line 1726
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1728
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v12, v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    add-float v4, v1, v14

    .line 1730
    iput v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    add-float v6, v2, v14

    .line 1731
    iput v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    .line 1732
    iget-object v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v8}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettype(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v8

    if-nez v8, :cond_2

    .line 1733
    iget-object v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    move/from16 v17, v3

    iget-object v3, v8, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    move/from16 v18, v11

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v8, v11}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    move/from16 v17, v3

    move/from16 v18, v11

    .line 1735
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v8, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    invoke-static {v3, v11}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1737
    :goto_0
    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    cmpl-float v3, v3, v10

    const/high16 v11, 0x40400000    # 3.0f

    if-eqz v3, :cond_3

    .line 1738
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v14

    .line 1739
    iget v8, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    move/from16 v19, v2

    sub-float v2, v8, v3

    move/from16 v20, v11

    iget v11, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    move/from16 v21, v3

    sub-float v3, v11, v21

    add-float v8, v8, v21

    add-float v11, v11, v21

    mul-float v21, v14, v13

    move/from16 v22, v13

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float v13, v21, v13

    invoke-static {v13, v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v13

    int-to-float v13, v13

    move/from16 v23, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float v9, v21, v9

    invoke-static {v9, v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v9

    int-to-float v9, v9

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v5, v5, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v17, v7

    move v4, v8

    move v7, v9

    move v6, v13

    move/from16 v13, v19

    const/4 v9, 0x1

    move-object v8, v5

    move v5, v11

    move v11, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object/from16 v3, p1

    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v17, v7

    move/from16 v23, v9

    move/from16 v20, v11

    move/from16 v22, v13

    move v11, v1

    move v13, v2

    move v9, v5

    .line 1743
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1744
    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->bounceScale:F

    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    invoke-virtual {v3, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1745
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v1, :cond_4

    .line 1746
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iput-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    .line 1748
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingAndEditingStories(J)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    .line 1749
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move v5, v9

    goto :goto_2

    :cond_5
    move v5, v7

    :goto_2
    const/4 v8, 0x2

    if-nez v5, :cond_c

    .line 1750
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressWasDrawn:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v2

    const v4, 0x3f7ae148    # 0.98f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    goto/16 :goto_5

    .line 1798
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->failT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFail:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    .line 1799
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    if-eqz v2, :cond_b

    .line 1800
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressWasDrawn:Z

    if-eqz v2, :cond_7

    .line 1801
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v9, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceAnimateProgressToSegments:Z

    .line 1802
    iput v10, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 1803
    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1804
    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1808
    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$2;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x64

    .line 1815
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1816
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1818
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v4, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    mul-float v19, v1, v4

    .line 1820
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressWasDrawn:Z

    xor-int/2addr v1, v9

    iput-boolean v1, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    .line 1821
    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    invoke-direct {v0, v1, v14}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->getArcProgress(FF)F

    move-result v1

    iput v1, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    .line 1822
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isLast:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    .line 1823
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFirst:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isFirst:Z

    sub-float v9, v23, v19

    .line 1824
    iput v9, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    .line 1826
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-nez v2, :cond_8

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialog:Z

    if-eqz v4, :cond_8

    .line 1827
    iget-wide v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialogId:J

    iput-wide v4, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->crossfadeToDialog:J

    .line 1828
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    iput v4, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->crossfadeToDialogProgress:F

    goto :goto_3

    :cond_8
    const-wide/16 v4, 0x0

    .line 1830
    iput-wide v4, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->crossfadeToDialog:J

    :goto_3
    if-eqz v2, :cond_9

    .line 1834
    iget-wide v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v5, v5, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    move-object/from16 v3, p1

    goto :goto_4

    .line 1836
    :cond_9
    iget-wide v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    :goto_4
    cmpl-float v1, v19, v10

    if-lez v1, :cond_a

    .line 1841
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getErrorPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v1

    .line 1842
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v19

    float-to-int v2, v2

    .line 1843
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 1844
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v14, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v2

    mul-float/2addr v14, v2

    move/from16 v2, v24

    move/from16 v4, v25

    invoke-virtual {v3, v2, v4, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_a
    move/from16 v1, v19

    .line 1847
    :cond_b
    iput-boolean v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressWasDrawn:Z

    .line 1848
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    if-eqz v2, :cond_14

    .line 1849
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    sub-float v9, v23, v16

    .line 1851
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v9, v9, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1852
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    move/from16 v5, v23

    invoke-virtual {v0, v3, v2, v4, v5}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawPlus(Landroid/graphics/Canvas;FFF)V

    .line 1853
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cx:F

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cy:F

    invoke-virtual {v0, v3, v2, v4, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawFail(Landroid/graphics/Canvas;FFF)V

    .line 1854
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    :cond_c
    :goto_5
    if-nez v5, :cond_d

    .line 1756
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetlastUploadingCloseFriends(Lorg/telegram/ui/Stories/DialogStoriesCell;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_d
    move v2, v7

    move v4, v10

    .line 1758
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 1759
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget v5, v5, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    add-float/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1761
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget v2, v2, Lorg/telegram/ui/Stories/StoriesController;->uploadedStories:I

    int-to-float v5, v2

    add-float/2addr v5, v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float v2, v5, v2

    .line 1762
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isCloseFriends()Z

    move-result v1

    invoke-static {v4, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fputlastUploadingCloseFriends(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V

    .line 1764
    :goto_7
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    .line 1765
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v4, :cond_10

    .line 1766
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v5, v4, Lorg/telegram/ui/Stories/DialogStoriesCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v5, :cond_f

    .line 1767
    iput-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    goto :goto_8

    .line 1769
    :cond_f
    new-instance v5, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iput-object v5, v4, Lorg/telegram/ui/Stories/DialogStoriesCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v4, 0x0

    .line 1770
    invoke-virtual {v5, v4, v9, v7}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 1773
    :cond_10
    :goto_8
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    if-eqz v4, :cond_11

    .line 1774
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1775
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v14, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v14, v14, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v3, v4, v5, v6, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1776
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 1777
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1778
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1780
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RadialProgress;->setDiff(I)V

    if-eqz v1, :cond_12

    .line 1782
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_9

    .line 1783
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v9}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v1

    :goto_9
    const/16 v4, 0xff

    .line 1784
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1785
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    .line 1786
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1787
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1788
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v6

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v7

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v7, v14

    float-to-int v7, v7

    .line 1786
    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    .line 1790
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressWasDrawn:Z

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 1791
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1792
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    .line 1794
    :cond_13
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressWasDrawn:Z

    .line 1795
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iput-boolean v9, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->drawCircleForce:Z

    .line 1796
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    .line 1857
    :cond_14
    :goto_a
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1859
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialog:Z

    if-eqz v1, :cond_15

    iget v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_15

    .line 1860
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v11, v13, v12, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1861
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1862
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1864
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v9, v5, v4

    mul-float/2addr v2, v9

    add-float v7, v17, v2

    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 1865
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    sub-float v2, v11, v15

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1866
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez v1, :cond_19

    .line 1868
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v1, :cond_16

    .line 1869
    iput v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    goto :goto_d

    .line 1871
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_17

    .line 1872
    iget v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    goto :goto_b

    .line 1874
    :cond_17
    iget v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    .line 1876
    :goto_b
    iget v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalState:I

    if-ne v1, v8, :cond_18

    const v9, 0x3f333333    # 0.7f

    goto :goto_c

    :cond_18
    move v9, v5

    :goto_c
    iput v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    .line 1878
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlphaTransition:F

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1880
    :cond_19
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public drawFail(Landroid/graphics/Canvas;FFF)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41880000    # 17.0f

    .line 1974
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 1975
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 1976
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v0

    invoke-static {v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1977
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettype(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1978
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v0

    invoke-static {v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1980
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v0

    invoke-static {v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const/high16 v0, 0x41100000    # 9.0f

    .line 1982
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, p4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 1983
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1984
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1986
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetTextColor(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v0

    invoke-static {v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1988
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    const v2, 0x40933333    # 4.6f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v3, p3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    const v5, 0x3fcccccd    # 1.6f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v5, p3

    invoke-virtual {p4, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 1989
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v5, v5, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1991
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    const v4, 0x40266666    # 2.6f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v4, p3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr p3, v0

    invoke-virtual {p4, v3, v4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1992
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPlus(Landroid/graphics/Canvas;FFF)V
    .locals 4

    .line 1942
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    .line 1945
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 1946
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 1947
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_telegram_color:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v0

    invoke-static {v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1948
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettype(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1949
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v0

    invoke-static {v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1951
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v0

    invoke-static {v0, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const/high16 v0, 0x41300000    # 11.0f

    .line 1953
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41100000    # 9.0f

    .line 1954
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1956
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettype(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    goto :goto_1

    .line 1957
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryLastColor(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1958
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v3, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fputaddNewStoryLastColor(Lorg/telegram/ui/Stories/DialogStoriesCell;I)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1960
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1961
    iget-object p4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1962
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    float-to-int v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1963
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float v2, p3, v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v3}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1964
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v3}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1965
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr p3, v3

    float-to-int p3, p3

    .line 1961
    invoke-virtual {p4, v0, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1967
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetaddNewStoryDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_3
    return-void
.end method

.method getCy()F
    .locals 5

    const/high16 v0, 0x42400000    # 48.0f

    .line 1692
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41d2a3d7    # 26.33f

    .line 1693
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 1695
    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/high16 v3, 0x40a00000    # 5.0f

    .line 1698
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v2

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetcollapsedProgress1(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v1

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method public invalidate()V
    .locals 3

    .line 1920
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1921
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v2, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v0, v2, :cond_1

    .line 1922
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1924
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1927
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 2

    .line 1932
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1933
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v1, v1, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v0, v1, :cond_1

    .line 1934
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1936
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1938
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1997
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1998
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1999
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2004
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2005
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 2006
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    .line 2008
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cancellable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    if-eqz v0, :cond_0

    .line 2009
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->cancel()V

    const/4 v0, 0x0

    .line 2010
    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cancellable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1688
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x428c0000    # 70.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentCellWidth:I

    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42a20000    # 81.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCrossfadeTo(J)V
    .locals 2

    .line 2027
    iget-wide v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3

    .line 2028
    iput-wide p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialogId:J

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2029
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToDialog:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2033
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2034
    iput-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_1

    .line 2036
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2037
    iput-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    :goto_1
    if-eqz p1, :cond_3

    .line 2040
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    .line 2041
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2044
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :cond_3
    return-void
.end method

.method public setDialogId(J)V
    .locals 8

    .line 1563
    iget-wide v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v2, v0, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 1565
    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cancellable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    if-eqz v6, :cond_1

    .line 1566
    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v6, v6, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v6, v0, v1, v4}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    .line 1567
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cancellable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->cancel()V

    .line 1568
    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->cancellable:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    .line 1571
    :cond_1
    iput-wide p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    .line 1573
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFail:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1578
    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_2

    .line 1580
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v6, p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1581
    iput-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1584
    :goto_2
    const-string v1, ""

    if-nez v0, :cond_4

    .line 1585
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1586
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void

    .line 1589
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v7, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget v7, v7, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    .line 1590
    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 1591
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-eqz v0, :cond_5

    return-void

    .line 1594
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 1595
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v0

    const/16 v6, 0xa

    if-eqz v0, :cond_6

    .line 1596
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1597
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->FailedStory:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1598
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    return-void

    .line 1599
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1600
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1601
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1, v3, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->applyUploadingStr(Lorg/telegram/ui/ActionBar/SimpleTextView;ZZ)V

    .line 1602
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    return-void

    .line 1603
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getEditingStory(J)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1604
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1605
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1, v3, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->applyUploadingStr(Lorg/telegram/ui/ActionBar/SimpleTextView;ZZ)V

    .line 1606
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    return-void

    .line 1608
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    const/16 v7, 0xb

    if-eqz v0, :cond_d

    if-eqz v2, :cond_a

    .line 1609
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    if-nez v0, :cond_a

    .line 1610
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1611
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->createTextView()V

    .line 1612
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1613
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1614
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1, v5}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fputtextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V

    .line 1616
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fputtextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V

    .line 1617
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1625
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$1;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettextAnimator(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1635
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1636
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    new-instance v1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fputanimationRunnable(Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Runnable;)V

    .line 1643
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetanimationRunnable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1644
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isUploadingState:Z

    .line 1645
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgettype(Lorg/telegram/ui/Stories/DialogStoriesCell;)I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1647
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_3

    :cond_b
    move p1, v3

    .line 1648
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1649
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Stories"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void

    .line 1651
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1652
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->MyStory:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void

    .line 1654
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_12

    .line 1655
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1656
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez p1, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1657
    :goto_4
    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_f

    .line 1659
    invoke-virtual {v1, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1661
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz p1, :cond_11

    .line 1662
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_10

    .line 1663
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$mcreateVerifiedDrawable(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 1666
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-static {v1, p1, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1667
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1668
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    .line 1671
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-static {v1, p1, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1672
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1673
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    .line 1676
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1677
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1678
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-static {p1, p2, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1679
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1680
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setPressed(Z)V
    .locals 4

    .line 1909
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    if-eqz p1, :cond_0

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-nez v1, :cond_0

    .line 1911
    new-instance v1, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v2, 0x3fc00000    # 1.5f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;FF)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1913
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v0, :cond_1

    .line 1914
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method public setProgressToCollapsed(FFFZ)V
    .locals 1

    .line 2015
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->overscrollProgress:F

    cmpl-float p3, v0, p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->selectedForOverscroll:Z

    if-eq p3, p4, :cond_1

    .line 2016
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->selectedForOverscroll:Z

    .line 2017
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed:F

    .line 2018
    iput p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->progressToCollapsed2:F

    .line 2019
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    .line 2020
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2022
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->mini:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget p3, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    iget p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell;->K:F

    div-float/2addr p3, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p2

    sub-float p2, p1, p2

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlphaTransition:F

    .line 2023
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textViewContainer:Landroid/widget/FrameLayout;

    iget p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textAlpha:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
