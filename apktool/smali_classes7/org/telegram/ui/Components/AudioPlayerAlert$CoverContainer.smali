.class abstract Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CoverContainer"
.end annotation


# instance fields
.field private activeIndex:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final imageViews:[Lorg/telegram/ui/Components/BackupImageView;


# direct methods
.method public static synthetic $r8$lambda$KUh1H3SP_GHVwhtYm2kMJv3tCrA(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/ui/Components/BackupImageView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 3177
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3178
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3179
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 3180
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 3181
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result p1

    if-nez p1, :cond_0

    sub-float/2addr p2, v0

    const p1, 0x3faaaaab

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    .line 3182
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$RS4PiwA2welbGSsqpkDqZvq4_2w(Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;ILorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->lambda$new$0(ILorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$fkF2vGavqOZgdsKRRz84wV-aCZk(Lorg/telegram/ui/Components/BackupImageView;ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 3164
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3165
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3166
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    if-nez p1, :cond_0

    .line 3168
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 3112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 3106
    new-array v1, v0, [Lorg/telegram/ui/Components/BackupImageView;

    iput-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3114
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 3115
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 3116
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 3123
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 3128
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    if-ne v1, v3, :cond_0

    .line 3130
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3132
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(ILorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 3124
    iget p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->activeIndex:I

    if-ne p1, p3, :cond_0

    .line 3125
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->onImageUpdated(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 3211
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    return-object v0
.end method

.method public final getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    .line 3203
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->activeIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getNextImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    .line 3207
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->activeIndex:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aget-object v0, v0, v1

    return-object v0
.end method

.method protected abstract onImageUpdated(Lorg/telegram/messenger/ImageReceiver;)V
.end method

.method public final switchImageViews()V
    .locals 11

    .line 3137
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3138
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3140
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3141
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->activeIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->activeIndex:I

    .line 3143
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->imageViews:[Lorg/telegram/ui/Components/BackupImageView;

    xor-int/lit8 v4, v0, 0x1

    aget-object v4, v3, v4

    .line 3144
    aget-object v0, v3, v0

    .line 3146
    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 3148
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    const v5, 0x3f4ccccd    # 0.8f

    .line 3149
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 3150
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 3151
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_3

    .line 3154
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    goto :goto_2

    :cond_3
    const/16 v6, 0x8

    .line 3156
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    .line 3157
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const/4 v6, 0x2

    .line 3160
    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v8, 0x7d

    .line 3161
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3162
    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3163
    new-instance v10, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BackupImageView;Z)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v3, :cond_4

    .line 3173
    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v3

    new-array v10, v6, [F

    aput v3, v10, v1

    aput v5, v10, v2

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 3174
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3175
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3176
    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/ui/Components/BackupImageView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3185
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$2;

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer$2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;Lorg/telegram/ui/Components/BackupImageView;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3194
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v3, v4, v1

    aput-object v7, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_3

    .line 3196
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3199
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
