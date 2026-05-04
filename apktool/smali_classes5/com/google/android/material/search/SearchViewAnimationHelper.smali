.class Lcom/google/android/material/search/SearchViewAnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;,
        Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;,
        Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;
    }
.end annotation


# static fields
.field private static final CONTENT_FROM_SCALE:F = 0.95f

.field private static final DEFAULT_DURATION_MS:I = 0x64

.field private static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final HIDE_CLEAR_BUTTON_ALPHA_DURATION_MS:J = 0x2aL

.field private static final HIDE_CLEAR_BUTTON_ALPHA_START_DELAY_MS:J = 0x0L

.field private static final HIDE_CONTENT_ALPHA_DURATION_MS:J = 0x53L

.field private static final HIDE_CONTENT_ALPHA_START_DELAY_MS:J = 0x0L

.field private static final HIDE_CONTENT_SCALE_DURATION_MS:J = 0xfaL

.field private static final HIDE_DURATION_MS:J = 0xfaL

.field private static final HIDE_TRANSLATE_DURATION_MS:J = 0x12cL

.field private static final SHOW_CLEAR_BUTTON_ALPHA_DURATION_MS:J = 0x32L

.field private static final SHOW_CLEAR_BUTTON_ALPHA_START_DELAY_MS:J = 0xfaL

.field private static final SHOW_CONTENT_ALPHA_DURATION_MS:J = 0x96L

.field private static final SHOW_CONTENT_ALPHA_START_DELAY_MS:J = 0x4bL

.field private static final SHOW_CONTENT_SCALE_DURATION_MS:J = 0x12cL

.field private static final SHOW_DURATION_MS:J = 0x12cL

.field private static final SHOW_SCRIM_ALPHA_DURATION_MS:J = 0x64L

.field private static final SHOW_TRANSLATE_DURATION_MS:J = 0x15eL

.field private static final SHOW_TRANSLATE_KEYBOARD_START_DELAY_MS:J = 0x96L


# instance fields
.field private final animationDelegate:Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

.field private final backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

.field private backProgressAnimatorSet:Landroid/animation/AnimatorSet;

.field private final backgroundView:Landroid/view/View;

.field private final clearButton:Landroid/widget/ImageButton;

.field private final contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private final context:Landroid/content/Context;

.field private final divider:Landroid/view/View;

.field private final dummyTextView:Landroid/widget/TextView;

.field private final dummyToolbar:Landroidx/appcompat/widget/Toolbar;

.field private final durationShort1:I

.field private final durationShort2:I

.field private final editText:Landroid/widget/EditText;

.field private final headerContainer:Landroid/widget/FrameLayout;

.field private final rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field private final scrim:Landroid/view/View;

.field private searchBar:Lcom/google/android/material/search/SearchBar;

.field private final searchPrefix:Landroid/widget/TextView;

.field private final searchView:Lcom/google/android/material/search/SearchView;

.field private final standardAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private final standardDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private final textContainer:Landroid/widget/LinearLayout;

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;

.field private final toolbarContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$4nHpflMzJGprd9zBkTBoB3RS_zM(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    .line 286
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$3;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$WWXE9jFF650BkIjOhTeSBIog5c8(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 419
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$XH7Tt31rKFxUHNqrtP-bWKMltC0(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    new-instance v0, Lcom/google/android/material/animation/AnimationCoordinator;

    invoke-direct {v0}, Lcom/google/android/material/animation/AnimationCoordinator;-><init>()V

    const/4 v1, 0x1

    .line 212
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/animation/AnimationCoordinator;->addAnimator(Landroid/animation/Animator;)V

    .line 213
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseSpringAnimations(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 214
    invoke-virtual {v0, v3}, Lcom/google/android/material/animation/AnimationCoordinator;->addDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;)V

    goto :goto_0

    .line 217
    :cond_0
    new-instance v2, Lcom/google/android/material/search/SearchViewAnimationHelper$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/animation/AnimationCoordinator;->addListener(Lcom/google/android/material/animation/AnimationCoordinator$Listener;)V

    .line 236
    invoke-virtual {v0}, Lcom/google/android/material/animation/AnimationCoordinator;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$bW219ByJ4-f-K-2F4KYc0jC_Tsc(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 429
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$yS_MhX_A9yAxJfIfqpcbcBf6riQ(Landroid/widget/ImageButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 410
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 109
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/search/SearchView;Z)V
    .locals 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->context:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 144
    iget-object v0, p2, Lcom/google/android/material/search/SearchView;->scrim:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    .line 145
    iget-object v0, p2, Lcom/google/android/material/search/SearchView;->backgroundView:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backgroundView:Landroid/view/View;

    .line 146
    iget-object v0, p2, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 147
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    .line 148
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->toolbarContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    .line 149
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 150
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 151
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    .line 152
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->dummyTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyTextView:Landroid/widget/TextView;

    .line 153
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    .line 154
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    .line 155
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    .line 156
    iget-object v1, p2, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 157
    iget-object p2, p2, Lcom/google/android/material/search/SearchView;->textContainer:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->textContainer:Landroid/widget/LinearLayout;

    .line 159
    new-instance p2, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-direct {p2, v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    .line 161
    sget p2, Lcom/google/android/material/R$attr;->motionEasingStandardAccelerateInterpolator:I

    sget-object v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 162
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->standardAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 164
    sget p2, Lcom/google/android/material/R$attr;->motionEasingStandardDecelerateInterpolator:I

    .line 165
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->standardDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 167
    sget p2, Lcom/google/android/material/R$attr;->motionDurationShort1:I

    const/16 v0, 0x64

    .line 168
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->durationShort1:I

    .line 169
    sget p2, Lcom/google/android/material/R$attr;->motionDurationShort2:I

    .line 170
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->durationShort2:I

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 174
    new-instance p2, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Lcom/google/android/material/search/SearchViewAnimationHelper$1;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p2, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Lcom/google/android/material/search/SearchViewAnimationHelper$1;)V

    :goto_0
    iput-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->animationDelegate:Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;)I
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/LinearLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->textContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->animationDelegate:Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;)I
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewTopFromSearchViewParent(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;Landroid/view/View;)I
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationXBetweenViews(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setBackgroundAlpha(F)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/material/search/SearchViewAnimationHelper;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->durationShort2:I

    return p0
.end method

.method static synthetic access$2600(Lcom/google/android/material/search/SearchViewAnimationHelper;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->durationShort1:I

    return p0
.end method

.method static synthetic access$2700(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->standardDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->standardAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setMenuItemsNotClickable(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)Landroid/animation/Animator;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getClearButtonAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setContentViewsAlpha(F)V

    return-void
.end method

.method private addBackButtonAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/widget/ImageButton;)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 408
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;-><init>(Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    .line 411
    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addDrawerArrowDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    .line 394
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addFadeThroughDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/widget/ImageButton;)V

    return-void

    .line 397
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setFullDrawableProgressIfNeeded(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private addDrawerArrowDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 415
    instance-of v0, p2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    if-eqz v0, :cond_0

    .line 416
    check-cast p2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v0, 0x2

    .line 417
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 418
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    .line 420
    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addFadeThroughDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 425
    instance-of v0, p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz v0, :cond_0

    .line 426
    check-cast p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    const/4 v0, 0x2

    .line 427
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 428
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/internal/FadeThroughDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    .line 430
    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 377
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 378
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 379
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 380
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 381
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 380
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getClearButtonAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    .line 365
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x2a

    .line 366
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xfa

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 368
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 370
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 371
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 370
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->animationDelegate:Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_0

    .line 351
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-object v0
.end method

.method private getExpandCollapseSpringAnimations(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->animationDelegate:Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;->getExpandCollapseSpringAnimations(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 4

    .line 333
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 334
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationYAnimator()Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 335
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    .line 336
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 337
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    .line 338
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private getTranslationXBetweenViews(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    if-nez p1, :cond_1

    .line 551
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    .line 552
    iget-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    .line 553
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 556
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    sub-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0

    .line 562
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result p1

    .line 563
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private getTranslationYAnimator()Landroid/animation/Animator;
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 344
    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-array v0, v0, [Landroid/view/View;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1
.end method

.method private getViewLeftFromSearchViewParent(Landroid/view/View;)I
    .locals 2

    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 569
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 570
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getViewTopFromSearchViewParent(Landroid/view/View;)I
    .locals 2

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 579
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 580
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 581
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private setActionMenuViewAlphaIfNeeded(F)V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private setBackgroundAlpha(F)V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private setContentViewsAlpha(F)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 532
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 533
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 534
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setActionMenuViewAlphaIfNeeded(F)V

    return-void
.end method

.method private setFullDrawableProgressIfNeeded(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 435
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 436
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 438
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz v0, :cond_1

    .line 439
    check-cast p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    :cond_1
    return-void
.end method

.method private setMenuItemsNotClickable(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 444
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 446
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 447
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 448
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 449
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 450
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startHideAnimationCollapse()Landroid/animation/AnimatorSet;
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    .line 245
    :cond_0
    new-instance v0, Lcom/google/android/material/animation/AnimationCoordinator;

    invoke-direct {v0}, Lcom/google/android/material/animation/AnimationCoordinator;-><init>()V

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v2}, Lcom/google/android/material/animation/AnimationCoordinator;->addAnimator(Landroid/animation/Animator;)V

    .line 248
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseSpringAnimations(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 249
    invoke-virtual {v0, v4}, Lcom/google/android/material/animation/AnimationCoordinator;->addDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;)V

    goto :goto_0

    .line 252
    :cond_1
    new-instance v3, Lcom/google/android/material/search/SearchViewAnimationHelper$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/animation/AnimationCoordinator;->addListener(Lcom/google/android/material/animation/AnimationCoordinator$Listener;)V

    .line 271
    invoke-virtual {v0}, Lcom/google/android/material/animation/AnimationCoordinator;->start()V

    return-object v2
.end method

.method private startHideAnimationTranslate()Landroid/animation/AnimatorSet;
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method private startShowAnimationExpand()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->animationDelegate:Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

    invoke-interface {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;->setUpDummyToolbarIfNeeded()V

    .line 205
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startShowAnimationTranslate()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 279
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/search/SearchView;)V

    const-wide/16 v2, 0x96

    .line 278
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancelBackProgress()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->cancelBackProgress(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    :cond_0
    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public finishBackProgress()V
    .locals 4

    .line 495
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->hide()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    .line 498
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->finishBackProgress(JLandroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->animationDelegate:Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

    invoke-interface {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;->startButtonsTranslationAnimation()V

    .line 502
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method getBackHelper()Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-object v0
.end method

.method hide()Landroid/animation/AnimatorSet;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationCollapse()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationTranslate()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public onHandleBackInvoked()Landroidx/activity/BackEventCompat;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onHandleBackInvoked()Landroidx/activity/BackEventCompat;

    move-result-object v0

    return-object v0
.end method

.method setSearchBar(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    return-void
.end method

.method show()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startShowAnimationExpand()V

    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startShowAnimationTranslate()V

    return-void
.end method

.method startBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->startBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;)V

    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 3

    .line 461
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->updateBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;F)V

    .line 467
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_3

    .line 468
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 469
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 479
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    .line 480
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 481
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    return-void

    .line 484
    :cond_3
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-long v1, p1

    .line 483
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method
