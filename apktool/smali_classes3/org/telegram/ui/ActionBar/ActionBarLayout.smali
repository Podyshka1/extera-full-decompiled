.class public Lorg/telegram/ui/ActionBar/ActionBarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/INavigationLayout;
.implements Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;
    }
.end annotation


# static fields
.field private static scrimPaint:Landroid/graphics/Paint;


# instance fields
.field private accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private animateEndColors:Ljava/util/ArrayList;

.field private animateSetThemeAccentIdAfterAnimation:I

.field private animateSetThemeAfterAnimation:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private animateSetThemeAfterAnimationApply:Z

.field private animateSetThemeNightAfterAnimation:Z

.field private animateStartColors:Ljava/util/ArrayList;

.field private animateThemeAfterAnimation:Z

.field protected animationInProgress:Z

.field private animationProgress:F

.field public animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

.field private animationRunnable:Ljava/lang/Runnable;

.field private attached:Z

.field private backAnimator:Landroid/animation/AnimatorSet;

.field private backAnimatorIsBack:Z

.field private backgroundView:Landroid/view/View;

.field private beginTrackingSent:Z

.field private bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

.field private bottomSheetTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

.field private cachedBottomLeftRadius:F

.field private cachedBottomRightRadius:F

.field private cachedTopLeftRadius:F

.field private cachedTopRightRadius:F

.field private final clipPath:Landroid/graphics/Path;

.field public containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

.field public containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

.field private currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private currentNavigationBarColor:I

.field private currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field debugBlackScreenRunnable:Ljava/lang/Runnable;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private delayedAnimationResumed:Z

.field private delayedOpenAnimationRunnable:Ljava/lang/Runnable;

.field private delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

.field private drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private fragmentsStack:Ljava/util/List;

.field private final hasSheetsAnimator:Lorg/telegram/ui/Components/AnimatedFloat;

.field public highlightActionButtons:Z

.field private inActionMode:Z

.field private inBubbleMode:Z

.field private inPreviewMode:Z

.field public innerTranslationX:F

.field private final invalidateRunnable:Ljava/lang/Runnable;

.field public isKeyboardVisible:Z

.field private isLayersLayout:Z

.field private isSheet:Z

.field lastActions:Ljava/util/ArrayList;

.field private lastFrameTime:J

.field private lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

.field private layoutToIgnore:Landroid/view/View;

.field private final main:Z

.field private maybeStartTracking:Z

.field private measureSpec:[I

.field public messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field public messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private navigationBarInsetHeight:I

.field private newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private onCloseAnimationEndRunnable:Ljava/lang/Runnable;

.field private onFragmentStackChangedListener:Ljava/lang/Runnable;

.field private onOpenAnimationEndRunnable:Ljava/lang/Runnable;

.field private openingAnimation:Z

.field private overlayAction:Ljava/lang/Runnable;

.field private overrideWidthOffset:I

.field private overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field protected parentActivity:Landroid/app/Activity;

.field private predictiveBackHasProgress:Z

.field private predictiveBackInProgress:Z

.field private predictiveBackLeft:Z

.field private predictiveBackY:F

.field private predictiveInput:Z

.field private presentingFragmentDescriptions:Ljava/util/ArrayList;

.field private previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private previewFinishInProgress:Z

.field private previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private previewOpenAnimationInProgress:Z

.field private pulledDialogs:Ljava/util/List;

.field private radii:[F

.field private rebuildAfterAnimation:Z

.field private rebuildLastAfterAnimation:Z

.field private rect:Landroid/graphics/Rect;

.field private final relayoutRunnable:Ljava/lang/Runnable;

.field private removeActionBarExtraHeight:Z

.field private savedBottomSheetTabsTop:I

.field public sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

.field private sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

.field private showLastAfterAnimation:Z

.field private springForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private springIsBack:Z

.field private springIsLayout:Z

.field private springIsPreview:Z

.field private springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

.field protected startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private statusBarInsetHeight:I

.field private tabsEvents:Z

.field private themeAnimationValue:F

.field private themeAnimatorDelegate:Ljava/util/ArrayList;

.field private themeAnimatorDescriptions:Ljava/util/ArrayList;

.field private themeAnimatorSet:Landroid/animation/AnimatorSet;

.field private titleOverlayText:Ljava/lang/String;

.field private titleOverlayTextId:I

.field private transitionAnimationInProgress:Z

.field private transitionAnimationPreviewMode:Z

.field private transitionAnimationStartTime:J

.field private useAlphaAnimations:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

.field private window:Landroid/view/Window;

.field private withShadow:Z


# direct methods
.method public static synthetic $r8$lambda$2dXp_mm7GHDQ6k20eQpF_jRHqMI(Lorg/telegram/ui/ActionBar/ActionBarLayout;ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$animateThemedValues$15(ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4gl2bzwZtgTqyTn4CY3q23GhrQk(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$startLayoutAnimation$4(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$7hRm_whDvhhf-gLAnGphhnNo56k(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8womldMaYyEeUuBVT5cGBoXmVgg(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/view/View;FFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$expandPreviewFragment$9(Landroid/view/View;FFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$9e20g90z1TmDFMNsJk5vx9x0O_o(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$closeLastFragment$13(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ADZDqkw6T3IiZToPuNCgQSjk01E(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$animateBackEndAnimation$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$FDgrrL6swPDIfMioJxOaYCl3obg(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$closeLastFragment$11(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gx5DF62G_lufQspialCmrIM8VlQ(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$presentFragment$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$SRhR532OMLzV5YB07qSNrnK1PaQ(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$onTouchEvent$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$UDdIyzdv8Z3TglajHpclSq6qP3M(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$closeLastFragment$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$VtuC5aL0XF5O3mFllcCZeuqRtHU(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$expandPreviewFragment$10(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUVL6fVbvt2rSHSJZM27c0L0ZWM(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$onTouchEvent$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$jHmszh1jzVqWDCVfVsp_t4DSlvc(Ljava/lang/Runnable;)V
    .locals 0

    .line 3316
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mHuGzJyhwFT3JUUj0SecQKH0zH8(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$new$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$nTys9I19nOEceGAO6VgqloexYw8(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$presentFragment$7(ZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ndOfM0SHgWZpKuNDTeOOZE7faBg(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$removeAllFragments$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$u-u7i2oc2QvApLQEA0NgbXMG_PA(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$animateBackEndAnimation$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGmJA42fC7tZkmOMCiIL8d9yLZ8(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2306
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    :cond_0
    const/4 p0, 0x1

    .line 2308
    invoke-virtual {p1, p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2309
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    return-void
.end method

.method public static synthetic $r8$lambda$zb93FhndoX_AeWuzULSa_a_wY1I(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$startLayoutAnimation$5(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimateEndColors(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateStartColors(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationProgress(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomSheetTabs(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdecelerateInterpolator(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelayedAnimationResumed(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedAnimationResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelayedOpenAnimationRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfragmentsStack(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinPreviewMode(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastFrameTime(Lorg/telegram/ui/ActionBar/ActionBarLayout;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBarInsetHeight(Lorg/telegram/ui/ActionBar/ActionBarLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->navigationBarInsetHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoldFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetovershootInterpolator(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/OvershootInterpolator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviewBackgroundDrawable(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviewMenu(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsheetFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/EmptyBaseFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeAnimatorDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeAnimatorDescriptions(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeAnimatorSet(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettransitionAnimationPreviewMode(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwaitingForKeyboardCloseRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanimationProgress(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimationRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackAnimator(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdelayedOpenAnimationRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastFrameTime(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpredictiveBackInProgress(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpresentingFragmentDescriptions(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviewOpenAnimationInProgress(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputthemeAnimatorSet(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtransitionAnimationStartTime(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwaitingForKeyboardCloseRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$monAnimationEndCheck(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSlideAnimationEnd(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onSlideAnimationEnd(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartLayoutAnimation(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .line 616
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    .line 539
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 540
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f828f5c    # 1.02f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 541
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    .line 558
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    .line 567
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 601
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 605
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    .line 608
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->clipPath:Landroid/graphics/Path;

    const/16 v0, 0x8

    .line 609
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->radii:[F

    .line 637
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->invalidateRunnable:Ljava/lang/Runnable;

    .line 638
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->relayoutRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    .line 754
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measureSpec:[I

    .line 989
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v1, 0x118

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->hasSheetsAnimator:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    .line 1943
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->openingAnimation:Z

    .line 3617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    .line 3618
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->debugBlackScreenRunnable:Ljava/lang/Runnable;

    .line 617
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    .line 618
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->main:Z

    .line 620
    sget-object p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 621
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    .line 624
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private addEndDescriptions(Ljava/util/ArrayList;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    .line 3157
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3158
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3160
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getSetColor()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private addStartDescriptions(Ljava/util/ArrayList;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_1

    .line 3140
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3142
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3143
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3144
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 3145
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getSetColor()I

    move-result v4

    aput v4, v0, v2

    .line 3146
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setDelegateDisabled()Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3147
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3148
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private animateBackEndAnimation(Z)V
    .locals 14

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1580
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    .line 1582
    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 1583
    iput-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsLayout:Z

    .line 1584
    iput-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsPreview:Z

    .line 1585
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsBack:Z

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v0

    .line 1588
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    if-nez v3, :cond_2

    .line 1589
    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v3, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    goto :goto_1

    .line 1591
    :cond_2
    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 1593
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v2, :cond_3

    .line 1594
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1595
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1596
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1597
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1598
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1609
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz p1, :cond_4

    move v0, v4

    :cond_4
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1610
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x44610000    # 900.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1611
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1613
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1614
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 1616
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    .line 1617
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    return-void

    .line 1621
    :cond_5
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1623
    invoke-virtual {v0, v5, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->shouldOverrideSlideTransition(ZZ)Z

    move-result v6

    const/4 v7, 0x2

    .line 1625
    const-string v8, "innerTranslationX"

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-nez p1, :cond_8

    .line 1626
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1627
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x43480000    # 200.0f

    div-float/2addr v11, v10

    mul-float/2addr v11, v2

    float-to-int v10, v11

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x17c

    goto :goto_2

    :cond_6
    const/16 v11, 0x32

    :goto_2
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-nez v6, :cond_b

    .line 1629
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1630
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget-boolean v12, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    if-eqz v12, :cond_7

    const/high16 v12, 0x42600000    # 56.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_3

    :cond_7
    move v12, v5

    :goto_3
    add-int/2addr v11, v12

    int-to-float v11, v11

    new-array v12, v1, [F

    aput v11, v12, v5

    invoke-static {v6, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1631
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    new-array v13, v1, [F

    aput v12, v13, v5

    invoke-static {p0, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v12, v7, [Landroid/animation/Animator;

    aput-object v6, v12, v5

    aput-object v8, v12, v1

    .line 1629
    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1633
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1634
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1635
    sget-boolean v6, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-eqz v6, :cond_b

    .line 1636
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    new-array v8, v1, [F

    aput v4, v8, v5

    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    .line 1642
    :cond_8
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x43a00000    # 320.0f

    div-float/2addr v11, v10

    mul-float/2addr v11, v2

    float-to-int v10, v11

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x140

    goto :goto_4

    :cond_9
    const/16 v11, 0x78

    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-nez v6, :cond_b

    .line 1644
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    new-array v11, v1, [F

    aput v4, v11, v5

    .line 1645
    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v12, v1, [F

    aput v4, v12, v5

    .line 1646
    invoke-static {p0, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v8, v7, [Landroid/animation/Animator;

    aput-object v6, v8, v5

    aput-object v4, v8, v1

    .line 1644
    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1648
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1649
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1651
    :cond_a
    sget-boolean v4, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-eqz v4, :cond_b

    .line 1652
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const v8, 0x3eb33333    # 0.35f

    mul-float/2addr v6, v8

    new-array v8, v1, [F

    aput v6, v8, v5

    invoke-static {v4, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1657
    :cond_b
    :goto_5
    invoke-virtual {v0, v5, p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCustomSlideTransition(ZZF)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1659
    new-array v4, v1, [Landroid/animation/Animator;

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1662
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_d

    .line 1664
    invoke-virtual {v0, v5, p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCustomSlideTransition(ZZF)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1666
    new-array v2, v1, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1670
    :cond_d
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1689
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backAnimator:Landroid/animation/AnimatorSet;

    .line 1690
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backAnimatorIsBack:Z

    .line 1691
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1692
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    .line 1693
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    return-void
.end method

.method private applySpringProgress(F)V
    .locals 9

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 1848
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p1

    .line 1849
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    .line 1851
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsPreview:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 1852
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->openingAnimation:Z

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v6, 0x42380000    # 46.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 1853
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 1854
    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 1856
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    .line 1857
    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 1859
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1860
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1861
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, p1

    .line 1862
    invoke-static {v2, v8, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    .line 1863
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    .line 1866
    :cond_4
    invoke-static {p1, v8, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 1867
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1868
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationY(F)V

    mul-float v1, p1, v7

    add-float/2addr v1, v7

    .line 1871
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1872
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1873
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setAlpha(F)V

    .line 1875
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v1, :cond_5

    .line 1876
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v4, p1

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1877
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1878
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v2

    const v2, 0x3f733333    # 0.95f

    add-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1879
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1881
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    mul-float/2addr v6, v0

    float-to-int v1, v6

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1882
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1883
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1884
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1886
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_7

    .line 1887
    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 1889
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_8

    .line 1890
    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    :cond_8
    sub-float p1, v4, p1

    .line 1892
    invoke-static {p1, v8, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 1893
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1894
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationY(F)V

    mul-float/2addr p1, v7

    add-float/2addr p1, v7

    .line 1897
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1898
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1899
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setAlpha(F)V

    .line 1900
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    mul-float/2addr v6, v0

    float-to-int v1, v6

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1901
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez p1, :cond_9

    .line 1902
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1904
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1905
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1908
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    .line 1909
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsLayout:Z

    const v6, 0x3eb33333    # 0.35f

    if-eqz v5, :cond_e

    .line 1910
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_b

    .line 1911
    invoke-virtual {v1, v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 1913
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_c

    .line 1914
    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 1916
    :cond_c
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->openingAnimation:Z

    if-eqz v1, :cond_d

    .line 1917
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    sub-float/2addr v4, p1

    mul-float/2addr v4, v0

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1918
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    neg-float p1, p1

    mul-float/2addr p1, v6

    mul-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1919
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    return-void

    .line 1921
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1922
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    sub-float/2addr v4, p1

    neg-float p1, v4

    mul-float/2addr p1, v6

    mul-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1923
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    return-void

    .line 1927
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    sub-float/2addr v5, v7

    neg-float v5, v5

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1929
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    .line 1931
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1932
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsBack:Z

    if-nez v0, :cond_11

    .line 1933
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1934
    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    :cond_10
    if-eqz v1, :cond_12

    .line 1935
    invoke-virtual {v1, v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    return-void

    :cond_11
    if-eqz v1, :cond_12

    sub-float/2addr v4, p1

    .line 1937
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    :cond_12
    return-void
.end method

.method private attachView(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    .line 2549
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2551
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2552
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2553
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 2554
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 2557
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2559
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 2560
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2563
    :cond_1
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2564
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2566
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2567
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 2568
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setDrawNavigationBar(Z)V

    .line 2569
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2570
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v0, :cond_3

    .line 2571
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2573
    :cond_3
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 2575
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2577
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2579
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayTextIfActionBarAttached(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2580
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->attachSheets(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V

    return-void
.end method

.method private attachViewTo(Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 5

    .line 2584
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2586
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2587
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2588
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 2589
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 2592
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2594
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 2595
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2598
    :cond_1
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2599
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2601
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p2

    const/4 v2, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2602
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 2603
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setDrawNavigationBar(Z)V

    .line 2604
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2605
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz p2, :cond_3

    .line 2606
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2608
    :cond_3
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    .line 2610
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2612
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2614
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayTextIfActionBarAttached(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2615
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->attachSheets(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V

    return-void
.end method

.method private checkNeedRebuild()V
    .locals 5

    .line 3422
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAfterAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3423
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildLastAfterAnimation:Z

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastAfterAnimation:Z

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 3424
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAfterAnimation:Z

    return-void

    .line 3425
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateThemeAfterAnimation:Z

    if-eqz v0, :cond_2

    .line 3426
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAfterAnimation:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAccentIdAfterAnimation:I

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeNightAfterAnimation:Z

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    .line 3427
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAfterAnimationApply:Z

    if-nez v2, :cond_1

    .line 3428
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTrulyTheme:Z

    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    :cond_1
    const/4 v2, 0x0

    .line 3430
    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    .line 3431
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAfterAnimation:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 3432
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateThemeAfterAnimation:Z

    :cond_2
    return-void
.end method

.method private closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x1

    .line 2619
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    .line 2620
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2621
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    .line 2622
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 2623
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2624
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2625
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2626
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 2627
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_0

    .line 2628
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 2630
    :cond_0
    const-string p1, "closeLastFragmentInternalRemoveOld"

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchApplyWindowInsetsInternal(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 6

    .line 3763
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isLayersLayout:Z

    if-eqz v0, :cond_0

    .line 3764
    sget-object p2, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void

    .line 3769
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 3770
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    .line 3771
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    .line 3772
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    .line 3770
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 3774
    instance-of v2, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v2, :cond_1

    .line 3775
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3776
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    if-eq v1, v0, :cond_6

    .line 3777
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3778
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 3783
    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v2, :cond_6

    .line 3784
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3785
    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v4, 0x0

    .line 3787
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getBottomTabsHeight(Z)I

    move-result v5

    if-lez v5, :cond_2

    .line 3788
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    .line 3790
    :goto_0
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisSupportEdgeToEdge(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3791
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, v0, :cond_3

    .line 3792
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3793
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 3796
    :cond_3
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, v4, v4, v4, v0}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    .line 3797
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void

    .line 3799
    :cond_4
    iget p2, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3800
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, p2, :cond_5

    .line 3801
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3802
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 3804
    :cond_5
    sget-object p2, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    :cond_6
    return-void
.end method

.method private drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v0, 0x0

    .line 1200
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1202
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    const/high16 v0, 0x42000000    # 32.0f

    .line 1205
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 1206
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 1207
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    add-float/2addr v1, p2

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    .line 1208
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v3

    add-int/2addr v2, p2

    invoke-virtual {v1, v3, p2, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1209
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public static findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 6

    .line 3595
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 3597
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3598
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 3601
    :cond_0
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v4, p1

    float-to-int v5, p2

    .line 3602
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    .line 3603
    invoke-virtual {v2, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v2, Lorg/telegram/ui/Components/SeekBarView;

    if-nez v4, :cond_2

    instance-of v4, v2, Lorg/telegram/ui/Components/SlideChooseView;

    if-nez v4, :cond_2

    instance-of v4, v2, Lcom/google/android/material/slider/Slider;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3605
    :cond_1
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 3606
    check-cast v2, Landroid/view/ViewGroup;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBackgroundView()Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;
    .locals 1

    .line 1947
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->openingAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    return-object v0
.end method

.method private getForegroundView()Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;
    .locals 1

    .line 1951
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->openingAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    return-object v0
.end method

.method private globallyUpdateColors(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3326
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3327
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3328
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/Theme$Colorable;

    if-eqz v2, :cond_1

    .line 3329
    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/ActionBar/Theme$Colorable;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/Theme$Colorable;->updateColors()V

    .line 3331
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 3332
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->globallyUpdateColors(Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$animateBackEndAnimation$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 1597
    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->applySpringProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateBackEndAnimation$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1599
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsLayout:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1600
    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    const/4 p1, 0x0

    .line 1601
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    return-void

    .line 1603
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    .line 1604
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsBack:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onSlideAnimationEnd(Z)V

    return-void
.end method

.method private synthetic lambda$animateThemedValues$15(ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, p1, :cond_b

    if-nez v1, :cond_0

    .line 3187
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    goto :goto_1

    .line 3189
    :cond_0
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v5, :cond_a

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_2

    goto/16 :goto_4

    .line 3192
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    :goto_1
    if-eqz v3, :cond_a

    .line 3196
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v2, :cond_4

    .line 3197
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-nez v2, :cond_3

    .line 3198
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v2, v0, v4, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 3199
    iput-boolean v4, v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    .line 3200
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v2, v4, v4, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 3201
    iput-boolean v4, v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    .line 3203
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    iget-object v5, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->saveColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3205
    :cond_4
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    .line 3206
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addStartDescriptions(Ljava/util/ArrayList;)V

    .line 3207
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v6, v5, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v6, :cond_5

    .line 3208
    check-cast v5, Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 3209
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addStartDescriptions(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 3210
    :cond_5
    instance-of v6, v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v6, :cond_6

    .line 3211
    check-cast v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 3212
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addStartDescriptions(Ljava/util/ArrayList;)V

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 3215
    iget-object v5, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_7

    .line 3216
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 3219
    :cond_7
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addEndDescriptions(Ljava/util/ArrayList;)V

    .line 3220
    iget-object v2, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v3, :cond_8

    .line 3221
    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addEndDescriptions(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 3222
    :cond_8
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v3, :cond_9

    .line 3223
    check-cast v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addEndDescriptions(Ljava/util/ArrayList;)V

    :cond_9
    :goto_3
    move v2, v4

    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_13

    .line 3228
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    if-nez p1, :cond_e

    .line 3229
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v1, v4

    goto :goto_6

    :cond_d
    :goto_5
    move v1, v3

    :goto_6
    sub-int/2addr p1, v1

    move v1, v0

    :goto_7
    if-ge v1, p1, :cond_e

    .line 3231
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3232
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    .line 3233
    invoke-virtual {v2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3236
    :cond_e
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->instant:Z

    if-eqz p1, :cond_10

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3237
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setThemeAnimationValue(F)V

    .line 3238
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3239
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3240
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3241
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 3242
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    .line 3243
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    .line 3244
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_f

    .line 3245
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_f
    if-eqz p3, :cond_14

    .line 3248
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3252
    :cond_10
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    const/4 p1, 0x0

    .line 3253
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setThemeAnimationValue(F)V

    .line 3254
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->beforeAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    .line 3255
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3257
    :cond_11
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->animationProgress:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    if-eqz v1, :cond_12

    .line 3259
    invoke-interface {v1, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;->setProgress(F)V

    .line 3261
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 3262
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 3263
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3299
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    const-string/jumbo v2, "themeAnimationValue"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3300
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-wide v0, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3301
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_13
    if-eqz p3, :cond_14

    .line 3304
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$closeLastFragment$11(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 2861
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    .line 2862
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2865
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2871
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2877
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    goto :goto_1

    .line 2872
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->resetViewProperties(Landroid/view/View;)V

    .line 2873
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    const/4 v0, 0x0

    .line 2874
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2875
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    .line 2879
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2880
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setRemovingFromStack(Z)V

    const/4 v0, 0x1

    .line 2881
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2882
    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2883
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    return-void
.end method

.method private synthetic lambda$closeLastFragment$12()V
    .locals 1

    const/4 v0, 0x0

    .line 2887
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    return-void
.end method

.method private synthetic lambda$closeLastFragment$13(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 2925
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const/16 p1, 0x8

    .line 2926
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2927
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2928
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$expandPreviewFragment$10(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p3, 0x0

    .line 2707
    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2708
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    .line 2709
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    return-void
.end method

.method private synthetic lambda$expandPreviewFragment$9(Landroid/view/View;FFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 5

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p5, p4

    .line 2686
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p6

    const/4 v0, 0x1

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p4, p6

    .line 2687
    iget-object p6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2688
    invoke-static {p4, v0, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 2689
    invoke-static {p6, v0, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 2690
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float p4, v0, p4

    mul-float/2addr v3, p4

    sub-float/2addr v4, v3

    .line 2691
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    iget v3, p4, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr v0, p6

    mul-float/2addr p4, v0

    sub-float/2addr v3, p4

    .line 2693
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotX(F)V

    .line 2694
    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotY(F)V

    .line 2695
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2696
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 p4, 0x0

    .line 2697
    invoke-static {v4, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p6

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationX(F)V

    .line 2698
    invoke-static {v3, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p6

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationY(F)V

    .line 2700
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {p2, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 2702
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz p1, :cond_0

    .line 2703
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p3, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$17()V
    .locals 3

    .line 3619
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3620
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 3621
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ", "

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x1

    .line 3623
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onTouchEvent$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 1437
    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->applySpringProgress(F)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1439
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsLayout:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1440
    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    const/4 p1, 0x0

    .line 1441
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    return-void

    .line 1443
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    .line 1444
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsBack:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onSlideAnimationEnd(Z)V

    return-void
.end method

.method private synthetic lambda$presentFragment$7(ZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2339
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    .line 2340
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2341
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    goto :goto_0

    .line 2343
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2345
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->resetViewProperties(Landroid/view/View;)V

    if-eqz p4, :cond_1

    .line 2347
    invoke-virtual {p4, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2349
    :cond_1
    invoke-virtual {p5, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2350
    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    return-void
.end method

.method private synthetic lambda$presentFragment$8()V
    .locals 1

    const/4 v0, 0x0

    .line 2365
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    return-void
.end method

.method private synthetic lambda$removeAllFragments$14()V
    .locals 2

    .line 3073
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$startLayoutAnimation$4(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 1975
    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->applySpringProgress(F)V

    return-void
.end method

.method private synthetic lambda$startLayoutAnimation$5(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1977
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsLayout:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1978
    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    const/4 p1, 0x0

    .line 1979
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    return-void

    .line 1981
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    .line 1982
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsBack:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onSlideAnimationEnd(Z)V

    return-void
.end method

.method private newBackTransitions()Z
    .locals 1

    .line 1571
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackHasProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private observeDebugItemsFromView(Ljava/util/List;Landroid/view/View;)V
    .locals 2

    .line 3583
    instance-of v0, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v0, :cond_0

    .line 3584
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3586
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3587
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 3588
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3589
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->observeDebugItemsFromView(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onAnimationEndCheck(Z)V
    .locals 2

    .line 1727
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd()V

    .line 1728
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd()V

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1730
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1731
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 1733
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1735
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1737
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1739
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 1741
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1743
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1745
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 1746
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1747
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1749
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1750
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->resetViewProperties(Landroid/view/View;)V

    .line 1751
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->resetViewProperties(Landroid/view/View;)V

    return-void
.end method

.method private onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 3811
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 3813
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

    .line 3814
    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->navigationBarInsetHeight:I

    .line 3815
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->statusBarInsetHeight:I

    .line 3817
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    const/4 v1, 0x0

    if-lt p1, v0, :cond_4

    .line 3818
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3820
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    const/4 v2, 0x1

    .line 3821
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    const/4 v3, 0x2

    .line 3822
    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    const/4 v4, 0x3

    .line 3823
    invoke-virtual {p1, v4}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    .line 3825
    :cond_0
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedTopLeftRadius:F

    if-nez v2, :cond_1

    move v0, v4

    goto :goto_1

    .line 3826
    :cond_1
    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedTopRightRadius:F

    if-nez v3, :cond_2

    move v0, v4

    goto :goto_2

    .line 3827
    :cond_2
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    int-to-float v0, v0

    :goto_2
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedBottomRightRadius:F

    if-nez p1, :cond_3

    goto :goto_3

    .line 3828
    :cond_3
    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p1

    int-to-float v4, p1

    :goto_3
    iput v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedBottomLeftRadius:F

    .line 3832
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_5

    .line 3833
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3834
    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dispatchApplyWindowInsetsInternal(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3837
    :cond_5
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method private onCloseAnimationEnd()V
    .locals 4

    .line 3398
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 3399
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3401
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 3402
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3404
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 3405
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 3406
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    const-wide/16 v2, 0x0

    .line 3407
    iput-wide v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 3408
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewFinishInProgress:Z

    .line 3409
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3410
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3411
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3412
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3414
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3416
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkNeedRebuild()V

    .line 3417
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkNeedRebuild()V

    :cond_2
    return-void
.end method

.method private onFragmentStackChanged(Ljava/lang/String;)V
    .locals 1

    .line 2487
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChangedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2488
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2490
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->onFragmentStackChanged()V

    .line 2491
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkBlackScreen(Ljava/lang/String;)V

    return-void
.end method

.method private onOpenAnimationEnd()V
    .locals 5

    .line 3437
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3438
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    const/4 v2, 0x0

    .line 3439
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 3440
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    const-wide/16 v3, 0x0

    .line 3441
    iput-wide v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 3442
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3443
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3445
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    .line 3446
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3447
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkNeedRebuild()V

    :cond_0
    return-void
.end method

.method private onSlideAnimationEnd(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 1221
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_0

    .line 1222
    const-string p1, "onSlideAnimationEnd exit"

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkBlackScreen(Ljava/lang/String;)V

    return-void

    .line 1225
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1226
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 1227
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1228
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1229
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1231
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1232
    const-string p1, "onSlideAnimationEnd"

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    .line 1234
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1235
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setAlpha(F)V

    .line 1236
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1237
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1238
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 1239
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_1

    .line 1240
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 1243
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1244
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1245
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1246
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1247
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 1248
    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 1251
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    goto :goto_0

    .line 1253
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v1, :cond_6

    .line 1254
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1255
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 1257
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1258
    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 1259
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1260
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1261
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 1263
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 1264
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1267
    :cond_4
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1268
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 1270
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1273
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->detachSheets()V

    .line 1275
    :cond_6
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 1277
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 1279
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    .line 1280
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1281
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1282
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1283
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    return-void
.end method

.method private prepareForMoving()V
    .locals 8

    const/4 v0, 0x0

    .line 1287
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    const/4 v1, 0x1

    .line 1288
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 1289
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 1290
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 1293
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1294
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 1296
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1297
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1298
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v3, v5}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1299
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 1302
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 1304
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 1305
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1307
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1308
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 1309
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setDrawNavigationBar(Z)V

    .line 1310
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    .line 1311
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1312
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1313
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1314
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1315
    iget-object v5, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1316
    iget-object v5, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1317
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v5, :cond_2

    .line 1318
    iget-object v5, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1320
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v6, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1322
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v5, v6, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayTextIfActionBarAttached(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1323
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->attachSheets(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V

    .line 1324
    iget-boolean v5, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1325
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1327
    :cond_4
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1328
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_5

    .line 1329
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    .line 1332
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1334
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1335
    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 1336
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    return-void
.end method

.method private presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1799
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 1800
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    if-eqz p1, :cond_1

    .line 1802
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 p1, 0x0

    .line 1803
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1804
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1805
    const-string p1, "presentFragmentInternalRemoveOld"

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 1807
    :cond_1
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1808
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 1810
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 1812
    :try_start_0
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1814
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1816
    :try_start_1
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1818
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1823
    :cond_2
    :goto_0
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1824
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 1826
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1829
    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->detachSheets()V

    .line 1831
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    .line 3031
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 3034
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 3035
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 3037
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 p2, 0x0

    .line 3038
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    return-void

    .line 3040
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 3041
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    .line 3042
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 3043
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3044
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeFragmentFromStackInternal "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    return-void
.end method

.method private resetViewProperties(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3485
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3486
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3487
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 3488
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3489
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private shouldOpenFragmentOverlay(Landroid/app/Dialog;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 2473
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v0, :cond_0

    instance-of p1, p1, Lorg/telegram/ui/bots/BotWebViewSheet;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private startLayoutAnimation(ZZZ)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1956
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    .line 1957
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    .line 1959
    :cond_0
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-eqz v1, :cond_6

    if-nez p3, :cond_6

    .line 1961
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->openingAnimation:Z

    const/4 p2, 0x1

    .line 1962
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsLayout:Z

    .line 1963
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsPreview:Z

    const/4 p2, 0x0

    .line 1964
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsBack:Z

    .line 1966
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    if-nez p2, :cond_1

    .line 1967
    new-instance p2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    goto :goto_0

    .line 1969
    :cond_1
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 1971
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p2, :cond_2

    .line 1972
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1973
    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1974
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1975
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1976
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1986
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1987
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    const p1, 0x44228000    # 650.0f

    goto :goto_1

    :cond_3
    const/high16 p1, 0x44480000    # 800.0f

    goto :goto_1

    :cond_4
    const/high16 p1, 0x44610000    # 900.0f

    :goto_1
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1988
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz p3, :cond_5

    const p2, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1989
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1990
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    .line 1993
    :cond_6
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$addFragmentToStack(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z
    .locals 6

    .line 2496
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 2499
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 2502
    :cond_3
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    const/4 v0, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v0, :cond_6

    if-ne p2, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    .line 2534
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attachViewTo(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    move p2, v1

    .line 2536
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2537
    const-string p1, "addFragmentToStack"

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 2504
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2505
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2506
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2507
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2508
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 2510
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2513
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 2514
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 2516
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 2517
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2520
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->detachSheets()V

    .line 2522
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p2, v2, :cond_a

    .line 2524
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attachView(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2525
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2526
    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2527
    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2528
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 2530
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addFragmentToStack "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    .line 2539
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    if-nez p1, :cond_b

    .line 2540
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2541
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 2542
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return v3
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3753
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3754
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p2, :cond_0

    .line 3755
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dispatchApplyWindowInsetsInternal(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    :cond_0
    return-void
.end method

.method public allowSwipe()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 4

    .line 3166
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3177
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3178
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 3179
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 3181
    :cond_1
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3182
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    if-lt v0, v1, :cond_5

    .line 3307
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTrulyTheme:Z

    if-eqz v0, :cond_5

    .line 3308
    iget v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->accentId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz v3, :cond_3

    .line 3309
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setCurrentAccentId(I)V

    .line 3310
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    :cond_3
    if-nez p2, :cond_4

    .line 3313
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    .line 3314
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3316
    :cond_4
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda10;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeInBackground(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZLjava/lang/Runnable;)V

    return-void

    .line 3319
    :cond_5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3167
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateThemeAfterAnimation:Z

    .line 3168
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAfterAnimation:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 3169
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeNightAfterAnimation:Z

    .line 3170
    iget v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->accentId:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAccentIdAfterAnimation:I

    .line 3171
    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTrulyTheme:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAfterAnimationApply:Z

    if-eqz p2, :cond_7

    .line 3173
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public synthetic animateThemedValues(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    return-void
.end method

.method public synthetic animateThemedValues(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZLjava/lang/Runnable;)V

    return-void
.end method

.method public bringToFront(I)V
    .locals 5

    .line 2967
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 2971
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2972
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2973
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 2975
    iget-object v4, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2978
    :cond_1
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2979
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2981
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2982
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 2983
    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2987
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2988
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 2989
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 2991
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2992
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2993
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 2994
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 2997
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 2999
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 3000
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3003
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3004
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 3005
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setDrawNavigationBar(Z)V

    .line 3006
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3007
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v2, :cond_6

    .line 3008
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 3010
    :cond_6
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 3011
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3013
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayTextIfActionBarAttached(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 3014
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->attachSheets(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V

    .line 3015
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 3016
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 3017
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 3018
    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez p1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_8

    .line 3019
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public checkBlackScreen(Ljava/lang/String;)V
    .locals 2

    .line 3631
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    .line 3632
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3633
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    .line 3634
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    .line 3636
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3638
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    .line 3641
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->debugBlackScreenRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3642
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->debugBlackScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public checkTransitionAnimation()Z
    .locals 6

    .line 1771
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1774
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1775
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    .line 1777
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    return v0
.end method

.method public synthetic closeLastFragment()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$closeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public closeLastFragment(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2773
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(ZZ)V

    return-void
.end method

.method public closeLastFragment(ZZ)V
    .locals 10

    .line 2777
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2778
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeLastFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2781
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    .line 2784
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2785
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_3
    const/4 v0, 0x0

    .line 2787
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 2788
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v2, :cond_4

    if-eqz p1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v2, "view_animations"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    .line 2789
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2791
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-le v3, v1, :cond_6

    .line 2792
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_6
    move-object v3, v5

    :goto_1
    const-wide/16 v6, 0xc8

    if-eqz v3, :cond_16

    .line 2796
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v8

    invoke-static {p2, v4, v8}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;ZZ)V

    .line 2797
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 2798
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 2799
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 2801
    invoke-virtual {v3, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 2802
    iget-object p2, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_7

    .line 2804
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2805
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2806
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p2, v4}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 2807
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2811
    :cond_7
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v4, :cond_b

    .line 2812
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2813
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 2815
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 2817
    :try_start_0
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 2819
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2822
    :cond_8
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2823
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 2824
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setDrawNavigationBar(Z)V

    .line 2825
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    .line 2826
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2827
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2828
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2829
    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2830
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2831
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v4, :cond_9

    .line 2832
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2834
    :cond_9
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 2835
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v8, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2837
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayTextIfActionBarAttached(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2838
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->attachSheets(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V

    .line 2841
    :cond_b
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2842
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2843
    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 2844
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 2845
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2846
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_c

    .line 2847
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    .line 2849
    :cond_c
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 2850
    iget-boolean v4, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v4, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_d

    .line 2851
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    if-eqz p1, :cond_15

    .line 2855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 2856
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 2857
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 2859
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setRemovingFromStack(Z)V

    .line 2860
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2886
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez p1, :cond_e

    .line 2887
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v5

    :cond_e
    if-nez v5, :cond_13

    .line 2890
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisKeyboardVisible(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisKeyboardVisible(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2891
    :cond_f
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 2901
    invoke-static {p1, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 2903
    :cond_10
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz p1, :cond_11

    goto :goto_3

    :cond_11
    move p1, v0

    goto :goto_4

    :cond_12
    :goto_3
    move p1, v1

    :goto_4
    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZZ)V

    goto :goto_5

    .line 2906
    :cond_13
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 2907
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2908
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 2911
    :cond_14
    :goto_5
    const-string p1, "closeLastFragment"

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2913
    :cond_15
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2914
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2915
    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2916
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    goto :goto_6

    .line 2919
    :cond_16
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    .line 2920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 2921
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 2922
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 2924
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2932
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2933
    new-array p2, v4, [F

    fill-array-data p2, :array_0

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p0, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2934
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz p2, :cond_17

    .line 2935
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2938
    :cond_17
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 2939
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2940
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2941
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2942
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2953
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    .line 2955
    :cond_18
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const/16 p1, 0x8

    .line 2956
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2957
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz p2, :cond_19

    .line 2958
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2962
    :cond_19
    :goto_6
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentClosed()V

    :cond_1a
    :goto_7
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public synthetic dismissDialogs()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$dismissDialogs(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x1

    .line 985
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->withShadow:Z

    .line 986
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 977
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onPreIme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 980
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 3672
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3673
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v0

    .line 3674
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->attachedToParent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getWindowView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    .line 3676
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3677
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v0

    .line 3678
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->attachedToParent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getWindowView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_0
    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 3681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 3682
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->tabsEvents:Z

    .line 3684
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->tabsEvents:Z

    if-nez v4, :cond_7

    .line 3685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 3686
    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->tabsEvents:Z

    .line 3688
    :cond_6
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3691
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_9

    .line 3692
    :cond_8
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->tabsEvents:Z

    .line 3694
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawCurrentPreviewFragmentAbove()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 995
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    if-eqz v1, :cond_2

    .line 996
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    :goto_0
    if-ne v8, v1, :cond_2

    .line 997
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return v9

    .line 1003
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v10, v1, v2

    .line 1004
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 1005
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1006
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v10

    .line 1009
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getBackgroundView()Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v3

    const/high16 v12, 0x3f800000    # 1.0f

    if-ne v8, v3, :cond_4

    .line 1010
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v11

    :cond_3
    move v13, v1

    move v14, v2

    goto :goto_1

    .line 1011
    :cond_4
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getForegroundView()Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v3

    if-ne v8, v3, :cond_3

    move v14, v2

    move v13, v11

    .line 1015
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 1016
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eq v8, v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    if-eqz v1, :cond_5

    .line 1017
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->withShadow:Z

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isKeyboardVisible:Z

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;->clip(Landroid/graphics/Canvas;ZZIIF)V

    move-object v1, v2

    .line 1018
    iput-boolean v9, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->withShadow:Z

    goto :goto_2

    :cond_5
    move-object/from16 v1, p1

    .line 1020
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const/4 v7, -0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isSheet:Z

    if-nez v2, :cond_6

    if-nez v11, :cond_7

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    if-eq v2, v7, :cond_6

    goto :goto_3

    :cond_6
    const/16 v16, 0x1

    goto/16 :goto_a

    .line 1021
    :cond_7
    :goto_3
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getForegroundView()Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v2

    if-ne v8, v2, :cond_f

    .line 1022
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v3, v11

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v11

    int-to-float v6, v6

    const/16 v16, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1023
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1025
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    if-eqz v4, :cond_8

    .line 1026
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float v4, v12, v4

    const/high16 v17, 0x42600000    # 56.0f

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3f59999a    # 0.85f

    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    div-float v6, v3, v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v6

    invoke-static {v12, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    goto :goto_4

    :cond_8
    const/high16 v17, 0x42600000    # 56.0f

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v3

    .line 1028
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    div-float/2addr v4, v6

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, v12, v4

    .line 1030
    :goto_4
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v11, v6, :cond_9

    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v6, :cond_9

    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    if-eqz v6, :cond_9

    move v6, v3

    goto :goto_5

    :cond_9
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v11, v6, v9}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v6

    int-to-float v6, v6

    .line 1031
    :goto_5
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    if-eqz v7, :cond_b

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackLeft:Z

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    neg-float v7, v6

    .line 1036
    invoke-virtual {v1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-int v6, v6

    add-int/2addr v14, v6

    .line 1038
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v11

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_7

    :cond_b
    :goto_6
    neg-float v3, v6

    .line 1032
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-int v3, v6

    add-int/2addr v14, v3

    .line 1040
    :goto_7
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackLeft:Z

    const/high16 v6, 0x42a40000    # 82.0f

    if-eqz v3, :cond_c

    iget v3, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    goto :goto_8

    :cond_c
    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    :goto_8
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    if-eqz v6, :cond_d

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackY:F

    goto :goto_9

    :cond_d
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    :goto_9
    invoke-virtual {v1, v4, v4, v3, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1043
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->radii:[F

    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedTopLeftRadius:F

    aput v4, v3, v16

    aput v4, v3, v9

    .line 1044
    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedTopRightRadius:F

    const/4 v6, 0x3

    aput v4, v3, v6

    const/4 v6, 0x2

    aput v4, v3, v6

    .line 1045
    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedBottomRightRadius:F

    const/4 v6, 0x5

    aput v4, v3, v6

    const/4 v6, 0x4

    aput v4, v3, v6

    .line 1046
    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedBottomLeftRadius:F

    const/4 v6, 0x7

    aput v4, v3, v6

    const/4 v6, 0x6

    aput v4, v3, v6

    .line 1048
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 1049
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->clipPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->radii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1050
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_a

    :cond_f
    const/16 v16, 0x1

    .line 1052
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getBackgroundView()Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v2

    if-ne v8, v2, :cond_10

    .line 1053
    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedTopLeftRadius:F

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->cachedBottomLeftRadius:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v14, v2

    .line 1054
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1055
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int v14, v10, v2

    .line 1060
    :cond_10
    :goto_a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1061
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isTransitionAnimationInProgress()Z

    move-result v3

    if-nez v3, :cond_11

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v3, :cond_11

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    if-nez v3, :cond_11

    .line 1062
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v13, v9, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1064
    :cond_11
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v3, :cond_12

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v3, :cond_13

    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne v8, v3, :cond_13

    .line 1065
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V

    .line 1067
    :cond_13
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 1068
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1071
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne v8, v2, :cond_15

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisSupportEdgeToEdge(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1072
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v9

    :goto_b
    if-ge v3, v2, :cond_15

    .line 1073
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1074
    instance-of v4, v4, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheetWindow;

    if-eqz v4, :cond_14

    move/from16 v4, v16

    goto :goto_c

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_15
    move v4, v9

    .line 1081
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/high16 v16, 0x437f0000    # 255.0f

    if-eqz v2, :cond_17

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isLayersLayout:Z

    if-nez v2, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne v8, v2, :cond_17

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisSupportEdgeToEdge(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v4, :cond_17

    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v2, :cond_17

    .line 1082
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1083
    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v2, :cond_17

    .line 1084
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getInternalNavbarPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 1085
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 1086
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1087
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v3

    int-to-float v4, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1088
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->navigationBarInsetHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1089
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    move/from16 v18, v9

    move v9, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v18

    .line 1088
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1090
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1094
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isLayersLayout:Z

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne v8, v1, :cond_18

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisSupportEdgeToEdge(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastWindowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_18

    .line 1098
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1099
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v2

    if-nez v2, :cond_18

    iget-boolean v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v1, :cond_18

    .line 1100
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getInternalNavbarPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 1101
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    .line 1102
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1104
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v1

    int-to-float v2, v11

    const/4 v12, 0x0

    add-float/2addr v2, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1105
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->navigationBarInsetHeight:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    .line 1106
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v1, p1

    .line 1103
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1109
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_d

    :cond_18
    const/4 v12, 0x0

    .line 1113
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isLayersLayout:Z

    if-nez v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne v8, v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    if-eqz v1, :cond_19

    .line 1114
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->hasSheetsAnimator:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasSheet()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    cmpl-float v2, v1, v12

    if-lez v2, :cond_19

    .line 1116
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getInternalNavbarPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 1117
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    mul-float v1, v1, v16

    float-to-int v1, v1

    .line 1118
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v11

    .line 1121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->navigationBarInsetHeight:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    .line 1122
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    .line 1123
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v1, p1

    .line 1119
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1126
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_19
    if-nez v11, :cond_1b

    .line 1130
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    goto :goto_e

    :cond_1a
    move-object/from16 v1, p1

    goto :goto_11

    :cond_1b
    const/4 v2, -0x1

    .line 1131
    :goto_e
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    if-eq v1, v2, :cond_1c

    goto :goto_f

    :cond_1c
    sub-int v1, v10, v11

    .line 1132
    :goto_f
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getBackgroundView()Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    move-result-object v2

    if-ne v8, v2, :cond_1a

    int-to-float v1, v1

    int-to-float v2, v10

    div-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    .line 1133
    invoke-static {v1, v12, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 1134
    sget-object v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-eqz v3, :cond_1d

    const/16 v3, 0x66

    goto :goto_10

    :cond_1d
    const/16 v3, 0x78

    :goto_10
    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1135
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1e

    .line 1136
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v1, v2

    sget-object v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_1e
    int-to-float v1, v13

    int-to-float v4, v14

    .line 1138
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v3, v2

    sget-object v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1142
    :goto_11
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v7
.end method

.method public drawCurrentPreviewFragment(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 1172
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1173
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1174
    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V

    .line 1175
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    if-gez v1, :cond_3

    .line 1176
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v8, v1

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_2

    :cond_3
    move-object v3, p1

    .line 1178
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1180
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1181
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_4

    const/4 p1, 0x0

    .line 1183
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1186
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1187
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1188
    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v4, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1189
    iget p1, v4, Landroid/graphics/Rect;->top:I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p1, v1

    iput p1, v4, Landroid/graphics/Rect;->top:I

    .line 1190
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1191
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1192
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1195
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawHeaderShadow(Landroid/graphics/Canvas;I)V
    .locals 1

    .line 864
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public drawHeaderShadow(Landroid/graphics/Canvas;II)V
    .locals 8

    .line 869
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 870
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v4, p3

    .line 871
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float v5, p2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move v6, v4

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 872
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public expandPreviewFragment()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2654
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    const/4 v2, 0x0

    .line 2655
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    .line 2657
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2658
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2660
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2661
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 2662
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2663
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v7, -0x1

    .line 2664
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2665
    iget-object v7, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2667
    sget-boolean v6, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    const/4 v7, 0x3

    if-eqz v6, :cond_1

    .line 2668
    iget-object v1, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 2669
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2671
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 2672
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v6

    .line 2677
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 2679
    new-instance v9, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v9, v6}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    .line 2680
    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v9, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v10, 0x447a0000    # 1000.0f

    invoke-direct {v9, v10}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v10, 0x443b8000    # 750.0f

    .line 2682
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v9

    const v10, 0x3f19999a    # 0.6f

    .line 2683
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v9

    .line 2681
    invoke-virtual {v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    .line 2684
    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda11;

    invoke-direct {v9, v0, v1, v8, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/view/View;FF)V

    invoke-virtual {v6, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2706
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2711
    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 2712
    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2714
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 2716
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    .line 2717
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInMenuMode(Z)V

    .line 2720
    :try_start_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v2

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 2726
    :cond_1
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2728
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2729
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-array v8, v7, [F

    fill-array-data v8, :array_0

    .line 2730
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-array v9, v7, [F

    fill-array-data v9, :array_1

    .line 2731
    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v8, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v6, v5, v2

    aput-object v8, v5, v1

    .line 2729
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0xc8

    .line 2732
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2733
    new-instance v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v13, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide v9, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v11, 0x0

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2734
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;

    invoke-direct {v1, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2741
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 2743
    :try_start_1
    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2746
    :catch_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 2747
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setDrawNavigationBar(Z)V

    .line 2748
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    .line 2749
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInMenuMode(Z)V

    .line 2752
    :try_start_2
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v2

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public extendActionMode(Landroid/view/Menu;)Z
    .locals 3

    .line 3548
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->extendActionMode(Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic findFragment(Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$findFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    return-object p1
.end method

.method public finishPreviewFragment()V
    .locals 2

    .line 2758
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewFinishInProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2761
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewFinishInProgress:Z

    .line 2762
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 2763
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2764
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    .line 2766
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2767
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2768
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewFinishInProgress:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getBackgroundFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getBottomSheet(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    return-object v0
.end method

.method public getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;
    .locals 1

    .line 3715
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    return-object v0
.end method

.method public getBottomTabsHeight(Z)I
    .locals 1

    .line 3744
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->main:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v0, :cond_0

    .line 3745
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getHeight(Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentPreviewFragmentAlpha()F
    .locals 1

    .line 1163
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1164
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .locals 1

    .line 3528
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    return-object v0
.end method

.method public getFragmentStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 2478
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    return-object v0
.end method

.method public getInnerTranslationX()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 909
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    return v0
.end method

.method public getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2

    .line 1755
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1758
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public getLastFragmentIncludeMainTabs()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2

    .line 1762
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 1763
    instance-of v1, v0, Lorg/telegram/ui/MainTabsActivity;

    if-eqz v1, :cond_0

    .line 1764
    check-cast v0, Lorg/telegram/ui/MainTabsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMessageDrawableOutMediaStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 1

    .line 3499
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object v0
.end method

.method public getMessageDrawableOutStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 1

    .line 3494
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object v0
.end method

.method public getOverlayContainerView()Landroid/widget/FrameLayout;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getParentActivity(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getPulledDialogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;",
            ">;"
        }
    .end annotation

    .line 3504
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->pulledDialogs:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getSafeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getSheetFragment()Lorg/telegram/ui/EmptyBaseFragment;
    .locals 1

    const/4 v0, 0x1

    .line 502
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment(Z)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getSheetFragment(Z)Lorg/telegram/ui/EmptyBaseFragment;
    .locals 3

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    if-nez p1, :cond_3

    .line 508
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    .line 515
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 516
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/EmptyBaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 520
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eq p1, v1, :cond_2

    .line 521
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 526
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 529
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    return-object p1
.end method

.method public getThemeAnimationValue()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 3133
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimationValue:F

    return v0
.end method

.method public bridge synthetic getView()Landroid/view/ViewGroup;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getView(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 3704
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->window:Landroid/view/Window;

    if-eqz v0, :cond_0

    return-object v0

    .line 3707
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3708
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic hasIntegratedBlurInPreview()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$hasIntegratedBlurInPreview(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic isActionBarInCrossfade()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$isActionBarInCrossfade(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    return v0
.end method

.method public isInBubbleMode()Z
    .locals 1

    .line 859
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inBubbleMode:Z

    return v0
.end method

.method public isInPassivePreviewMode()Z
    .locals 1

    .line 2117
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 2112
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPreviewOpenAnimationInProgress()Z
    .locals 1

    .line 1782
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    return v0
.end method

.method public isSheet()Z
    .locals 1

    .line 728
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isSheet:Z

    return v0
.end method

.method public isSwipeInProgress()Z
    .locals 1

    .line 1787
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    return v0
.end method

.method public isTransitionAnimationInProgress()Z
    .locals 1

    .line 1792
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public measureKeyboardHeight()I
    .locals 4

    .line 3657
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3658
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3659
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    return v3

    .line 3662
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 3663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public movePreviewFragment(F)V
    .locals 3

    .line 2635
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2638
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float p1, p1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x42700000    # 60.0f

    .line 2642
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 2644
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->expandPreviewFragment()V

    goto :goto_0

    :cond_2
    :goto_1
    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 2647
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2648
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onActionModeFinished(Ljava/lang/Object;)V
    .locals 1

    .line 3391
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3392
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3394
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    return-void
.end method

.method public onActionModeStarted(Ljava/lang/Object;)V
    .locals 1

    .line 3383
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 3384
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 3386
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 3646
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 3647
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attached:Z

    return-void
.end method

.method public onBackCancelled()V
    .locals 1

    .line 1556
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveInput:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1557
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveInput:Z

    const/4 v0, 0x1

    .line 1558
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateBackEndAnimation(Z)V

    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    .line 1562
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveInput:Z

    if-nez v0, :cond_0

    .line 1563
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1566
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveInput:Z

    .line 1567
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateBackEndAnimation(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1698
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1701
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1704
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->storyViewerAttached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v1, :cond_2

    .line 1705
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 1708
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1711
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1712
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1713
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1714
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onBackProgress(F)V
    .locals 3

    .line 1545
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveInput:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x42900000    # 72.0f

    .line 1546
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1547
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackHasProgress:Z

    .line 1548
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1549
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-eqz p1, :cond_2

    .line 1550
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    neg-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1552
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    return-void
.end method

.method public onBackStarted(FF)V
    .locals 5

    .line 1504
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 1506
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 1507
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backAnimator:Landroid/animation/AnimatorSet;

    .line 1511
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1513
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveInput:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1516
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 1519
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1522
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasShownSheet()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1525
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v2, 0x0

    .line 1526
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 1529
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasShownSheet()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 1532
    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackHasProgress:Z

    .line 1533
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    .line 1534
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveInput:Z

    .line 1535
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float p1, p1, v3

    if-gez p1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackLeft:Z

    .line 1536
    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackY:F

    .line 1537
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->prepareForMoving()V

    .line 1538
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1539
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1541
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 741
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 744
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 745
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 746
    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v3, :cond_0

    .line 747
    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 3652
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 3653
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attached:Z

    return-void
.end method

.method public onGetDebugItems()Ljava/util/List;
    .locals 3

    .line 3570
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3572
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3573
    instance-of v2, v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v2, :cond_0

    .line 3574
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3576
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->observeDebugItemsFromView(Ljava/util/List;Landroid/view/View;)V

    return-object v1

    .line 3579
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 966
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 3375
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 3376
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onMenuButtonPressed()V

    .line 3378
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 782
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 784
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p4, p2

    .line 785
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 787
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    .line 788
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_b

    .line 791
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    .line 793
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-ne v1, v2, :cond_0

    .line 794
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateCurrentAccount()V

    .line 797
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 799
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 800
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 805
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const v5, 0x800033

    .line 810
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    .line 811
    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v5, v5, 0x70

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    .line 824
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v0

    goto :goto_2

    :cond_2
    sub-int v6, p4, v3

    .line 820
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v6, v7

    goto :goto_2

    :cond_3
    sub-int v6, p4, v0

    sub-int/2addr v6, v3

    .line 816
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :goto_2
    const/16 v7, 0x10

    if-eq v5, v7, :cond_6

    const/16 v7, 0x30

    if-eq v5, v7, :cond_5

    const/16 v7, 0x50

    if-eq v5, v7, :cond_4

    .line 839
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_3
    add-int/2addr v2, p2

    goto :goto_5

    :cond_4
    sub-int v5, p5, v4

    .line 836
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_4
    sub-int v2, v5, v2

    goto :goto_5

    .line 829
    :cond_5
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_6
    sub-int v5, p5, p2

    sub-int/2addr v5, v4

    .line 832
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 842
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-ne v1, v5, :cond_8

    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->savedBottomSheetTabsTop:I

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isKeyboardVisible:Z

    if-nez v5, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_8

    .line 843
    :cond_7
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->savedBottomSheetTabsTop:I

    goto :goto_6

    .line 844
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-ne v1, v5, :cond_9

    .line 845
    iput v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->savedBottomSheetTabsTop:I

    :cond_9
    :goto_6
    add-int/2addr v3, v6

    add-int/2addr v4, v2

    .line 847
    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1722
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onLowMemory()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->storyViewerAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 763
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measureKeyboardHeight()I

    move-result v1

    .line 764
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setKeyboardHeightFromParent(I)V

    .line 765
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    add-int/2addr p2, v1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 769
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measureSpec:[I

    aput p1, v3, v2

    .line 770
    aput p2, v3, v1

    .line 771
    invoke-interface {v0, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onMeasureOverride([I)V

    .line 772
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measureSpec:[I

    aget p2, p1, v2

    .line 773
    aget p1, p1, v1

    move v4, p2

    move p2, p1

    move p1, v4

    .line 775
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measureKeyboardHeight()I

    move-result v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isKeyboardVisible:Z

    .line 776
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 957
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 959
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    if-eqz v0, :cond_1

    .line 960
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 935
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1341
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->predictiveBackInProgress:Z

    if-nez v0, :cond_1d

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1c

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->allowSwipe()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 1344
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1345
    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1346
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 1347
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 1348
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_0

    .line 1349
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return v1

    .line 1353
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    .line 1354
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 1355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    .line 1356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingY:I

    .line 1357
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1c

    .line 1358
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_5

    :cond_2
    const/4 v3, 0x3

    const v4, 0x3e19999a    # 0.15f

    const/4 v5, 0x2

    const/high16 v6, 0x42600000    # 56.0f

    if-eqz p1, :cond_a

    .line 1360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    if-ne v7, v8, :cond_a

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1362
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1364
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingY:I

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1366
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1367
    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v7, :cond_5

    int-to-float v7, v0

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v4, v7, v4

    if-ltz v4, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/2addr v4, v3

    if-le v4, v5, :cond_5

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1369
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p0, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    .line 1371
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->prepareForMoving()V

    goto/16 :goto_5

    .line 1373
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    goto/16 :goto_5

    .line 1375
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz p1, :cond_1c

    .line 1376
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    if-nez p1, :cond_7

    .line 1377
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1378
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1380
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1381
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    .line 1382
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 1384
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1385
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1386
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    goto/16 :goto_5

    .line 1388
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    int-to-float v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1389
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-eqz p1, :cond_9

    .line 1390
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    neg-int v0, v2

    int-to-float v0, v0

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 1392
    :cond_9
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    goto/16 :goto_5

    :cond_a
    if-eqz p1, :cond_1a

    .line 1395
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    if-ne v7, v8, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v7, 0x6

    if-ne v3, v7, :cond_1a

    .line 1396
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_c

    .line 1397
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1399
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1400
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1401
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1402
    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v7, :cond_e

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v7, :cond_e

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v7, :cond_e

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1403
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 1404
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 1405
    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v4, v9, v4

    if-lez v4, :cond_e

    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getSwipeVelocity()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v7, v4

    if-ltz v4, :cond_e

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v7, v4

    if-lez v4, :cond_e

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    .line 1407
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->prepareForMoving()V

    .line 1408
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    if-nez p1, :cond_e

    .line 1409
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1410
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1412
    :cond_d
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 1416
    :cond_e
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz p1, :cond_18

    .line 1417
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    .line 1418
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 1419
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 1420
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v5, v6

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_10

    const/high16 v5, -0x3b860000    # -1000.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_12

    goto :goto_0

    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    cmpg-float v5, p1, v5

    if-gez v5, :cond_12

    :cond_10
    :goto_0
    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getSwipeVelocity()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_11

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_12

    :cond_11
    move v4, v2

    goto :goto_1

    :cond_12
    move v4, v1

    .line 1422
    :goto_1
    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-eqz v5, :cond_17

    .line 1423
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsLayout:Z

    .line 1424
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsPreview:Z

    .line 1425
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springIsBack:Z

    .line 1427
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    .line 1428
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    if-nez v5, :cond_13

    .line 1429
    new-instance v5, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v5, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    goto :goto_2

    .line 1431
    :cond_13
    invoke-virtual {v5, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 1433
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_14

    .line 1434
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1435
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1436
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1437
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {p1, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1438
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {p1, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1449
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    goto :goto_3

    :cond_15
    move v4, v1

    :goto_3
    invoke-virtual {p1, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v4, 0x44610000    # 900.0f

    invoke-virtual {p1, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1451
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->springForce:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1453
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    mul-float/2addr v3, v1

    .line 1454
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1455
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 1457
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    .line 1458
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 1460
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_16

    .line 1461
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1462
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1464
    :cond_16
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    return p1

    .line 1467
    :cond_17
    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateBackEndAnimation(Z)V

    goto :goto_4

    .line 1469
    :cond_18
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 1470
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 1471
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 1472
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_19

    .line 1473
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1476
    :cond_19
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1c

    .line 1477
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1478
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_5

    :cond_1a
    if-nez p1, :cond_1c

    .line 1481
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 1482
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 1483
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 1484
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_1b

    .line 1485
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1487
    :cond_1b
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1c

    .line 1488
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1489
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1493
    :cond_1c
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    return p1

    :cond_1d
    return v1
.end method

.method public onUserLeaveHint()V
    .locals 2

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 946
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onUserLeaveHint()V

    .line 948
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    if-eqz v0, :cond_1

    .line 949
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onUserLeaveHint()V

    :cond_1
    return-void
.end method

.method public parentDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 1149
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1151
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1152
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public synthetic presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public synthetic presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZ)Z

    move-result p1

    return p1
.end method

.method public synthetic presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    move-result p1

    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2126
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2127
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->removeLast:Z

    .line 2128
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->noAnimation:Z

    .line 2129
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->checkPresentFromDelegate:Z

    .line 2130
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    move v7, v3

    .line 2131
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v8, 0x0

    if-eqz v4, :cond_38

    .line 2133
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v9

    if-nez v9, :cond_38

    iget-object v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v9, :cond_0

    if-eqz v5, :cond_0

    invoke-interface {v9, v1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_0
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_14

    .line 2136
    :cond_1
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    .line 2137
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v5

    .line 2139
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    .line 2140
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v11

    goto :goto_0

    :cond_2
    move-object v11, v10

    :goto_0
    if-nez v11, :cond_3

    .line 2141
    sget-object v12, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lorg/telegram/ui/LaunchActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 2142
    sget-object v11, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/LaunchActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v11

    :cond_3
    const/4 v12, 0x1

    if-eqz v9, :cond_4

    .line 2144
    invoke-direct {v1, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->shouldOpenFragmentOverlay(Landroid/app/Dialog;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2145
    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    .line 2146
    iput-boolean v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 2147
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 2148
    invoke-virtual {v9, v4, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return v12

    .line 2151
    :cond_4
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_5

    .line 2152
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "present fragment "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " args="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2154
    :cond_5
    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->closeGlobalInstances()V

    .line 2155
    iget-object v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v9, :cond_6

    iget-boolean v9, v9, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->doNotDismiss:Z

    if-nez v9, :cond_6

    .line 2156
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->dismissAllWeb()V

    .line 2158
    :cond_6
    iget-boolean v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-eqz v9, :cond_8

    iget-boolean v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v9, :cond_8

    .line 2159
    iget-object v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v9, :cond_7

    .line 2160
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2161
    iput-object v10, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    .line 2163
    :cond_7
    invoke-virtual {v1, v8, v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(ZZ)V

    .line 2165
    :cond_8
    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    .line 2166
    iget-object v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v9, :cond_a

    .line 2167
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 2168
    iget-object v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v11, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2170
    :cond_9
    iput-object v10, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2172
    :cond_a
    iput-object v3, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_b

    move v9, v12

    goto :goto_1

    :cond_b
    move v9, v8

    .line 2173
    :goto_1
    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInMenuMode(Z)V

    .line 2174
    iget-object v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->hideKeyboardOnShow()Z

    move-result v9

    if-eqz v9, :cond_c

    if-nez v6, :cond_c

    .line 2175
    iget-object v9, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_c
    if-nez v6, :cond_e

    if-nez v7, :cond_d

    .line 2177
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v9, "view_animations"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_2

    :cond_d
    move v7, v8

    goto :goto_3

    :cond_e
    :goto_2
    move v7, v12

    .line 2178
    :goto_3
    sget-boolean v9, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    if-eqz v9, :cond_f

    if-nez v6, :cond_f

    move v9, v12

    goto :goto_4

    :cond_f
    move v9, v8

    .line 2180
    :goto_4
    iget-object v11, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_5

    :cond_10
    move-object v11, v10

    .line 2182
    :goto_5
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 2183
    iget-object v13, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v13, :cond_11

    .line 2185
    iget-object v13, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_12

    .line 2186
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->drawEdgeNavigationBar()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 2187
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;

    invoke-direct {v14, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v13, v14}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 2188
    iget-object v14, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v14}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 2191
    :cond_11
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    if-eqz v14, :cond_12

    .line 2193
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 2194
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2199
    :cond_12
    :goto_6
    iget-object v14, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2200
    iget-object v14, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-nez v6, :cond_13

    if-eqz v0, :cond_13

    move v15, v12

    goto :goto_7

    :cond_13
    move v15, v8

    :goto_7
    invoke-virtual {v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 2201
    iget-object v14, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-nez v6, :cond_14

    if-eqz v5, :cond_14

    move v5, v12

    goto :goto_8

    :cond_14
    move v5, v8

    :goto_8
    invoke-virtual {v14, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setDrawNavigationBar(Z)V

    if-eqz v3, :cond_15

    .line 2204
    iget-object v14, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2205
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v14, v5}, Landroid/view/View;->measure(II)V

    .line 2206
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v5, v14

    .line 2207
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x2

    .line 2208
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2209
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2210
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sget v16, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int v15, v15, v16

    sub-int/2addr v15, v5

    const/high16 v16, 0x40c00000    # 6.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sub-int v15, v15, v16

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2211
    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_15
    const/high16 p1, 0x41c00000    # 24.0f

    move v5, v8

    .line 2213
    :goto_9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    .line 2214
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2215
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v10, 0x0

    if-eqz v6, :cond_1a

    const/16 v17, 0x2

    .line 2217
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPreviewHeight()I

    move-result v15

    .line 2218
    sget v18, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-lez v15, :cond_16

    .line 2219
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v12, v19, v18

    if-ge v15, v12, :cond_16

    .line 2220
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2221
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v12, v18

    sub-int/2addr v12, v15

    div-int/lit8 v12, v12, 0x2

    add-int v12, v18, v12

    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_b

    :cond_16
    if-eqz v3, :cond_17

    move v12, v10

    goto :goto_a

    :cond_17
    move/from16 v12, p1

    .line 2223
    :goto_a
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2224
    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v12, v15

    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v0, :cond_18

    add-int/2addr v12, v15

    .line 2226
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_18
    :goto_b
    const/high16 v12, 0x41000000    # 8.0f

    if-eqz v3, :cond_19

    .line 2230
    iget v15, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v5, v5, v18

    add-int/2addr v15, v5

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2233
    :cond_19
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_c

    :cond_1a
    const/16 v17, 0x2

    .line 2235
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2237
    :goto_c
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2238
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2239
    iget-boolean v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v5, :cond_1b

    .line 2240
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2242
    :cond_1b
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 2243
    iget-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v12, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2245
    :cond_1c
    iget-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v12, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v14, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v12, v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayTextIfActionBarAttached(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2246
    iget-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->attachSheets(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V

    .line 2247
    iget-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2249
    const-string v5, "presentFragment"

    invoke-direct {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2252
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 2253
    iget-boolean v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v5, :cond_1d

    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1d

    .line 2254
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2257
    :cond_1d
    iget-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 2258
    iget-object v12, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v12, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 2259
    iput-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 2260
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2261
    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    .line 2262
    iget-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationY(F)V

    if-eqz v6, :cond_1f

    .line 2265
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;

    invoke-direct {v5, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    invoke-virtual {v13, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 2273
    invoke-virtual {v13, v0}, Landroid/view/View;->setClipToOutline(Z)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 2274
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setElevation(F)V

    .line 2275
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_1e

    .line 2276
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, 0x2e000000

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 2278
    :cond_1e
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 2279
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2282
    :cond_1f
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 2283
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v0, :cond_20

    .line 2284
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_20
    if-nez v7, :cond_21

    .line 2287
    invoke-direct {v1, v2, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2288
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 2289
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    :cond_21
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_22

    .line 2294
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    :cond_22
    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v7, :cond_23

    if-eqz v6, :cond_24

    :cond_23
    const/4 v0, 0x1

    goto :goto_d

    .line 2457
    :cond_24
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 2458
    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    .line 2459
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    if-eqz v11, :cond_26

    .line 2462
    invoke-virtual {v11, v8, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 2463
    invoke-virtual {v11, v8, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    :cond_26
    const/4 v0, 0x1

    .line 2465
    invoke-virtual {v4, v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 2466
    invoke-virtual {v4, v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2467
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    move/from16 v20, v0

    goto/16 :goto_13

    .line 2298
    :goto_d
    iget-boolean v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    const-wide/16 v13, 0xc8

    if-eqz v5, :cond_29

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v0, :cond_29

    .line 2299
    invoke-direct {v1, v2, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 2302
    iput-boolean v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 2303
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 2304
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda6;

    invoke-direct {v0, v11, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move/from16 v2, v17

    .line 2312
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v3, :cond_27

    .line 2314
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2315
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    if-eqz v11, :cond_28

    .line 2318
    invoke-virtual {v11, v8, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    :cond_28
    const/4 v2, 0x1

    .line 2320
    invoke-virtual {v4, v2, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 2321
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 2322
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2323
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2324
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2325
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2331
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_e
    const/16 v20, 0x1

    goto/16 :goto_13

    .line 2333
    :cond_29
    iput-boolean v6, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    .line 2334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    const/4 v0, 0x1

    .line 2335
    iput-boolean v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 2336
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layoutToIgnore:Landroid/view/View;

    .line 2337
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda7;

    move-object v5, v4

    move v4, v2

    move v2, v6

    move-object v6, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object v3, v5

    move-object v4, v6

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2353
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    if-nez v0, :cond_2b

    if-eqz v3, :cond_2a

    .line 2355
    invoke-virtual {v3, v8, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    :cond_2a
    const/4 v0, 0x1

    .line 2357
    invoke-virtual {v4, v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    goto :goto_f

    :cond_2b
    const/4 v0, 0x1

    .line 2360
    :goto_f
    iput-boolean v8, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedAnimationResumed:Z

    .line 2361
    iput-object v3, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2362
    iput-object v4, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v2, :cond_2c

    .line 2365
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda8;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v6

    goto :goto_10

    :cond_2c
    const/4 v6, 0x0

    :goto_10
    if-nez v6, :cond_35

    if-eqz v9, :cond_2e

    if-eqz v2, :cond_2d

    .line 2370
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setAlpha(F)V

    .line 2371
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 2372
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 2373
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    goto :goto_11

    .line 2375
    :cond_2d
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    goto :goto_11

    .line 2378
    :cond_2e
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setAlpha(F)V

    if-eqz v2, :cond_2f

    .line 2380
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 2381
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 2382
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    goto :goto_11

    .line 2384
    :cond_2f
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setTranslationX(F)V

    .line 2385
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleX(F)V

    .line 2386
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleY(F)V

    .line 2389
    :goto_11
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisKeyboardVisible(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisKeyboardVisible(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_12

    .line 2433
    :cond_30
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2434
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;

    invoke-direct {v0, v1, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 2445
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_e

    :cond_31
    const/4 v0, 0x1

    .line 2447
    invoke-direct {v1, v0, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZZ)V

    goto/16 :goto_e

    :cond_32
    :goto_12
    if-eqz v3, :cond_33

    if-nez v2, :cond_33

    .line 2391
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveKeyboardPositionBeforeTransition()V

    .line 2393
    :cond_33
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$6;

    move/from16 v21, v5

    move v5, v2

    move/from16 v2, v21

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    move v2, v5

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 2416
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2417
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$7;

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    .line 2432
    :cond_34
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_e

    :cond_35
    if-nez v2, :cond_37

    .line 2450
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisKeyboardVisible(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->-$$Nest$fgetisKeyboardVisible(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_36
    if-eqz v3, :cond_37

    .line 2451
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveKeyboardPositionBeforeTransition()V

    .line 2453
    :cond_37
    iput-object v6, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    goto/16 :goto_e

    :goto_13
    return v20

    :cond_38
    :goto_14
    return v8

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public synthetic presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    move-result p1

    return p1
.end method

.method public rebuildAllFragmentViews(ZZ)V
    .locals 3

    .line 3348
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3354
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 3358
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3362
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    .line 3363
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3365
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_4

    .line 3366
    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 3369
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    :cond_5
    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 3349
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAfterAnimation:Z

    .line 3350
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildLastAfterAnimation:Z

    .line 3351
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastAfterAnimation:Z

    return-void
.end method

.method public synthetic rebuildFragments(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$rebuildFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;I)V

    return-void
.end method

.method public rebuildLogout()V
    .locals 1

    .line 3339
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3340
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 3341
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 3342
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3343
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public relayout()V
    .locals 1

    .line 3736
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3737
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 3738
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 3739
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public removeAllFragments()V
    .locals 3

    .line 3067
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3068
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_0

    .line 3071
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3072
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3074
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public synthetic removeFragmentFromStack(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$removeFragmentFromStack(Lorg/telegram/ui/ActionBar/INavigationLayout;I)V

    return-void
.end method

.method public synthetic removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$removeFragmentFromStack(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    .line 3051
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 3052
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd()V

    .line 3053
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd()V

    .line 3055
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFragmentFromStack "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkBlackScreen(Ljava/lang/String;)V

    .line 3056
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3057
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    return-void

    .line 3059
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3060
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    .line 3062
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowFinishFragmentInsteadOfRemoveFromStack()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 971
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 972
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public resumeDelayedFragmentAnimation()V
    .locals 2

    const/4 v0, 0x1

    .line 2102
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedAnimationResumed:Z

    .line 2103
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2106
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2107
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2108
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    .line 3519
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    return-void
.end method

.method public setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0

    .line 3524
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    return-void
.end method

.method public setFragmentPanTranslationOffset(I)V
    .locals 1

    .line 3558
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v0, :cond_0

    .line 3559
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setFragmentPanTranslationOffset(I)V

    :cond_0
    return-void
.end method

.method public setFragmentStack(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .line 642
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    .line 644
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz p1, :cond_0

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->invalidateRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->relayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->stopListening(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 648
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 649
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    .line 653
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->main:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 654
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, v1, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    .line 655
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    .line 658
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->invalidateRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->relayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->listen(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 660
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x57

    .line 661
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 662
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 665
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->setTabsView(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V

    .line 669
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_2

    .line 670
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 672
    :cond_2
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 673
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 674
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 675
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 676
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x33

    .line 677
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 678
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_3

    .line 681
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 683
    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 684
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 685
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 686
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 687
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 688
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 689
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz p1, :cond_4

    .line 692
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 694
    :cond_4
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 695
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 696
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 697
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 698
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 699
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 700
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    if-eqz p1, :cond_7

    .line 702
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v1, :cond_5

    .line 705
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/EmptyBaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 707
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eq p1, v2, :cond_6

    .line 708
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 709
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setShouldHandleBottomInsets(Z)V

    .line 712
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 713
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetFragment:Lorg/telegram/ui/EmptyBaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 716
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 717
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public setFragmentStackChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 2483
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setHighlightActionButtons(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    return-void
.end method

.method public setInBubbleMode(Z)V
    .locals 0

    .line 854
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inBubbleMode:Z

    return-void
.end method

.method public setInnerTranslationX(F)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 877
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 882
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newBackTransitions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42600000    # 56.0f

    .line 883
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p1

    goto :goto_0

    .line 885
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 887
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    .line 888
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onSlideProgress(ZF)V

    .line 889
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 890
    invoke-static {p1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 891
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isBeginToShow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 892
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v2

    .line 893
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 895
    invoke-static {v2, v0, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method public setIsLayersLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 628
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isLayersLayout:Z

    return-void
.end method

.method public setIsSheet(Z)V
    .locals 0

    .line 723
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isSheet:Z

    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 2

    .line 3722
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentNavigationBarColor:I

    if-eq v0, p1, :cond_0

    .line 3723
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentNavigationBarColor:I

    .line 3724
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3727
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v0, :cond_1

    .line 3728
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setInternalNavigationBarColor(I)V

    .line 3730
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bottomSheetTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v0, :cond_3

    .line 3731
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setNavigationBarColor(IZ)V

    :cond_3
    return-void
.end method

.method public setOverrideWidthOffset(I)V
    .locals 0

    .line 1157
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    .line 1158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPulledDialogs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;",
            ">;)V"
        }
    .end annotation

    .line 3509
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->pulledDialogs:Ljava/util/List;

    return-void
.end method

.method public setRemoveActionBarExtraHeight(Z)V
    .locals 0

    .line 3532
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    return-void
.end method

.method public setThemeAnimationValue(F)V
    .locals 18
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3080
    iput v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimationValue:F

    .line 3081
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 3082
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3083
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 3084
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 3086
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    .line 3087
    aget v10, v7, v9

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 3088
    aget v11, v7, v9

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 3089
    aget v12, v7, v9

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 3090
    aget v13, v7, v9

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 3092
    aget v14, v6, v9

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 3093
    aget v15, v6, v9

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 3094
    aget v16, v6, v9

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 3095
    aget v16, v6, v9

    move/from16 v17, v2

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    move/from16 v16, v4

    int-to-float v4, v2

    sub-int/2addr v13, v2

    int-to-float v2, v13

    mul-float/2addr v2, v1

    add-float/2addr v4, v2

    float-to-int v2, v4

    const/16 v4, 0xff

    .line 3097
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v13, v14

    sub-int/2addr v10, v14

    int-to-float v10, v10

    mul-float/2addr v10, v1

    add-float/2addr v13, v10

    float-to-int v10, v13

    .line 3098
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v13, v15

    sub-int/2addr v11, v15

    int-to-float v11, v11

    mul-float/2addr v11, v1

    add-float/2addr v13, v11

    float-to-int v11, v13

    .line 3099
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v13, v3

    sub-int/2addr v12, v3

    int-to-float v3, v12

    mul-float/2addr v3, v1

    add-float/2addr v13, v3

    float-to-int v3, v13

    .line 3100
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3101
    invoke-static {v2, v10, v11, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 3102
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 3103
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setAnimatedColor(I)V

    const/4 v4, 0x0

    .line 3104
    invoke-virtual {v3, v2, v4, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    move/from16 v2, v17

    goto :goto_1

    :cond_0
    move/from16 v17, v2

    move/from16 v16, v4

    add-int/lit8 v4, v16, 0x1

    goto/16 :goto_0

    .line 3107
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    .line 3108
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    if-eqz v3, :cond_2

    .line 3110
    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->didSetColor()V

    .line 3111
    invoke-interface {v3, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->onAnimationProgress(F)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3114
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 3115
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_4

    .line 3116
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 3117
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v5

    .line 3118
    iget-object v6, v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v6}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3121
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    if-eqz v2, :cond_5

    .line 3122
    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;->setProgress(F)V

    .line 3124
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v2, :cond_6

    .line 3125
    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onThemeProgress(F)V

    .line 3127
    :cond_6
    invoke-direct {v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->globallyUpdateColors(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 2

    .line 3537
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    .line 3538
    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    .line 3539
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 3540
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 3541
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3542
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    invoke-virtual {p2, v0, v1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseAlphaAnimations(Z)V
    .locals 0

    .line 3514
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 0

    .line 3699
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->window:Landroid/view/Window;

    return-void
.end method

.method public showLastFragment()V
    .locals 1

    .line 3024
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3027
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bringToFront(I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 3453
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3456
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_5

    .line 3457
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3458
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3459
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 3461
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 3462
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 3463
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3465
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 3466
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd()V

    goto :goto_0

    .line 3467
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 3468
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd()V

    .line 3470
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_5
    if-eqz p1, :cond_6

    .line 3473
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public storyViewerAttached()Z
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateTitleOverlay()V
    .locals 4

    .line 733
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
