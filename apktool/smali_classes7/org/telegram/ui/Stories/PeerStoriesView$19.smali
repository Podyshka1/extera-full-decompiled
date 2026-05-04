.class Lorg/telegram/ui/Stories/PeerStoriesView$19;
.super Lorg/telegram/ui/Components/ChatActivityEnterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private chatActivityEnterViewAnimateFromTop:I

.field lastContentViewHeight:I

.field private messageEditTextAnimator:Landroid/animation/Animator;

.field messageEditTextPredrawHeigth:I

.field messageEditTextPredrawScrollY:I

.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$amlAc174B2VOfATVCBlOlzAiqD8(Lorg/telegram/ui/Stories/PeerStoriesView$19;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$19;->lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mGndjUyN1uf1Yl_w0Zur-6TgumA(Lorg/telegram/ui/Stories/PeerStoriesView$19;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$19;->lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 3084
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/PeerStoriesView$19;)Landroid/view/View;
    .locals 0

    .line 3084
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/PeerStoriesView$19;)Landroid/view/View;
    .locals 0

    .line 3084
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/PeerStoriesView$19;)I
    .locals 0

    .line 3084
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/PeerStoriesView$19;)Landroid/view/View;
    .locals 0

    .line 3084
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/PeerStoriesView$19;)Landroid/view/View;
    .locals 0

    .line 3084
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method private checkRecording()V
    .locals 3

    .line 3268
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    .line 3269
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingAudioVideo()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->seekbarVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputisRecording(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 3270
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 3271
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_2

    .line 3272
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    .line 3274
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3275
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3202
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 3203
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAnimatedTop(I)V

    .line 3204
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 3205
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3206
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3229
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    return-void
.end method


# virtual methods
.method public areLiveCommentsFree()Z
    .locals 2

    .line 3311
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mdisabledPaidFeatures(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    move-result v0

    return v0
.end method

.method public checkAnimation()V
    .locals 11

    .line 3185
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v0

    .line 3186
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->chatActivityEnterViewAnimateFromTop:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0xfa

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    if-eq v0, v1, :cond_2

    .line 3187
    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    add-int/2addr v8, v1

    sub-int/2addr v8, v0

    .line 3188
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAnimatedTop(I)V

    .line 3189
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 3190
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3191
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 3192
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3196
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v1, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTopViewEnterProgress()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3199
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3200
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    int-to-float v1, v8

    new-array v8, v2, [F

    aput v1, v8, v4

    aput v7, v8, v3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V

    .line 3201
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$19$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$19$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$19;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3208
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$19$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$19$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$19;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3220
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3221
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3222
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetchangeBoundAnimator(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3223
    iput v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->chatActivityEnterViewAnimateFromTop:I

    .line 3225
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_4

    .line 3226
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->messageEditTextPredrawHeigth:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->messageEditTextPredrawScrollY:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 3227
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    .line 3228
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v0

    new-array v1, v2, [F

    aput v0, v1, v4

    aput v7, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3229
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$19$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$19$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$19;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3230
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->messageEditTextAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 3231
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 3233
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->messageEditTextAnimator:Landroid/animation/Animator;

    .line 3234
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3235
    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3237
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 3238
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mupdateViewOffsets(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 3240
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->lastContentViewHeight:I

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 3139
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3140
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/high16 v2, 0x3fc00000    # 1.5f

    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayoutPaddingTranslationX:F

    mul-float/2addr v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 3142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    .line 3143
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3144
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 3146
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 3147
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    .line 3148
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3149
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mshowPremiumBlockedToast(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 3151
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 3153
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 3154
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3155
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3158
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText2(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 3160
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public extendActionMode(Landroid/view/Menu;)V
    .locals 3

    .line 3281
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isLive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;ZZ)V

    return-void
.end method

.method public getMessagesCount()I
    .locals 1

    .line 3295
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3298
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMessagesCount()I

    move-result v0

    return v0
.end method

.method public getStarsPrice()J
    .locals 4

    .line 3303
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mgetMessageMinPrice(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmessageStars(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 3306
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getStarsPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method protected isRecordingStateChanged()V
    .locals 0

    .line 3263
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    .line 3264
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$19;->checkRecording()V

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    .line 3245
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3246
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 3247
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->messageEditTextPredrawHeigth:I

    .line 3248
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->messageEditTextPredrawScrollY:I

    .line 3249
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3250
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3251
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->chatActivityEnterViewAnimateFromTop:I

    :cond_0
    return-void
.end method

.method public sendMessage()Z
    .locals 10

    .line 3093
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 3094
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    return v1

    .line 3097
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3098
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmessageStars(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mgetMessageMinPrice(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3100
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTextWithEntities()Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v0

    .line 3101
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;ZLandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3102
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/ui/Stories/HighlightMessageSheet;->getMaxLength(I)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 3103
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v0, :cond_1

    const/high16 v2, 0x40600000    # 3.5f

    .line 3104
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 3106
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v1

    .line 3111
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mdisabledPaidFeatures(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3113
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_3

    .line 3114
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    .line 3115
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v5, v1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 3116
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v9, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v5, v1, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 3117
    array-length v7, v7

    array-length v5, v5

    add-int/2addr v7, v5

    goto :goto_0

    :cond_3
    move v7, v1

    .line 3119
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v5

    long-to-int v8, v2

    sget v9, Lorg/telegram/ui/Stories/HighlightMessageSheet;->TIER_EMOJIS:I

    invoke-static {v5, v8, v9}, Lorg/telegram/ui/Stories/HighlightMessageSheet;->getTierOption(III)I

    move-result v5

    if-gt v7, v5, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v5

    sget v7, Lorg/telegram/ui/Stories/HighlightMessageSheet;->TIER_LENGTH:I

    invoke-static {v5, v8, v7}, Lorg/telegram/ui/Stories/HighlightMessageSheet;->getTierOption(III)I

    move-result v5

    if-le v4, v5, :cond_5

    .line 3120
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$monHighlightLiveMessage(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return v1

    .line 3125
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Stories/LiveCommentsView;->send(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;J)I

    .line 3126
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3127
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3128
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputmessageStars(Lorg/telegram/ui/Stories/PeerStoriesView;J)V

    .line 3129
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mcheckStealthMode(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 3130
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    return v6

    .line 3134
    :cond_6
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()Z

    move-result v0

    return v0
.end method

.method protected sendMessageInternal(ZIIJZ)Z
    .locals 7

    .line 3286
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3287
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 3290
    invoke-super/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIIJZ)Z

    move-result p1

    return p1
.end method

.method public setHorizontalPadding(FFFZ)V
    .locals 2

    .line 3166
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3167
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetpremiumBlockedText(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3169
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setHorizontalPadding(FFFZ)V

    return-void
.end method

.method protected showConfirmAlert(Ljava/lang/Runnable;)Z
    .locals 1

    .line 3180
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mapplyMessageToChat(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected updateRecordInterface(IZ)V
    .locals 0

    .line 3257
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    .line 3258
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$19;->checkRecording()V

    return-void
.end method

.method public updateSendAsButton(Z)V
    .locals 2

    .line 3088
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$19;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->areLiveCommentsDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-super {p0, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendAsButton(ZZ)V

    return-void
.end method
