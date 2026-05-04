.class public Lorg/telegram/ui/ActionBar/BottomSheet;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;,
        Lorg/telegram/ui/ActionBar/BottomSheet$Builder;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;
    }
.end annotation


# static fields
.field private static final AVOID_SYSTEM_CUTOUT_FULLSCREEN:Z = false


# instance fields
.field private allowCustomAnimation:Z

.field private allowDrawContent:Z

.field protected allowNestedScroll:Z

.field private applyBottomPadding:Z

.field private applyTopPadding:Z

.field public attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private backAnimationCallback:Landroid/window/OnBackAnimationCallback;

.field protected backDrawable:Landroid/graphics/drawable/ColorDrawable;

.field protected backgroundPaddingLeft:I

.field protected backgroundPaddingTop:I

.field protected behindKeyboardColor:I

.field protected behindKeyboardColorKey:I

.field private bigTitle:Z

.field private bottomInset:I

.field protected calcMandatoryInsets:Z

.field private canDismissWithSwipe:Z

.field private canDismissWithTouchOutside:Z

.field private cellType:I

.field public container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

.field protected containerView:Landroid/view/ViewGroup;

.field protected currentAccount:I

.field private currentPanTranslationY:F

.field protected currentSheetAnimation:Landroid/animation/AnimatorSet;

.field protected currentSheetAnimationType:I

.field private customView:Landroid/view/View;

.field protected customViewGravity:I

.field protected delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

.field protected dimBehind:Z

.field protected dimBehindAlpha:I

.field private disableScroll:Z

.field private dismissRunnable:Ljava/lang/Runnable;

.field private dismissed:Z

.field public drawDoubleNavigationBar:Z

.field public drawNavigationBar:Z

.field private focusable:Z

.field private focusableSoftInputMode:I

.field private forceKeyboardOnDismiss:Z

.field private fullHeight:Z

.field protected fullWidth:Z

.field private hideSystemVerticalInsetsProgress:F

.field private internalBackgroundColor:I

.field private isBackCallbackRegistered:Z

.field protected isFullscreen:Z

.field protected isPortrait:Z

.field private itemIcons:[I

.field private itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;",
            ">;"
        }
    .end annotation
.end field

.field private items:[Ljava/lang/CharSequence;

.field private keyboardContentAnimator:Landroid/animation/ValueAnimator;

.field protected keyboardHeight:I

.field protected keyboardVisible:Z

.field private lastInsets:Landroid/view/WindowInsets;

.field private lastKeyboardHeight:I

.field private layoutCount:I

.field private leftInset:I

.field private multipleLinesTitle:Z

.field protected navBarColor:I

.field protected navBarColorKey:I

.field protected navigationBarAlpha:F

.field protected navigationBarAnimation:Landroid/animation/ValueAnimator;

.field protected navigationBarHeight:I

.field protected nestedScrollChild:Landroid/view/View;

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field public occupyNavigationBar:Z

.field public occupyNavigationBarWithoutKeyboard:Z

.field private onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onHideListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected openInterpolator:Landroid/view/animation/Interpolator;

.field private openNoDelay:Z

.field protected openedLayerNum:I

.field private overlayDrawNavBarColor:I

.field public pauseAllHeavyOperations:Z

.field protected playingImagesLayerNum:I

.field private predictiveBackAnimationInProgress:Z

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightInset:I

.field public scrollNavBar:Z

.field private selectedPos:Ljava/lang/Integer;

.field protected shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private showWithoutAnimation:Z

.field showing:Z

.field private skipDismissAnimation:Z

.field private smoothContainerViewLayoutUntil:J

.field public smoothKeyboardAnimationEnabled:Z

.field public smoothKeyboardByBottom:Z

.field protected startAnimationRunnable:Ljava/lang/Runnable;

.field private statusBarHeight:I

.field private tag:I

.field private title:Ljava/lang/CharSequence;

.field private titleView:Landroid/widget/TextView;

.field public topBulletinContainer:Landroid/widget/FrameLayout;

.field private touchSlop:I

.field private transitionFromRight:Z

.field public useBackgroundTopPadding:Z

.field private useFastDismiss:Z

.field protected useHardwareLayer:Z

.field protected useLightNavBar:Z

.field protected useLightStatusBar:Z

.field protected useSmoothKeyboard:Z

.field protected waitingKeyboard:Z


# direct methods
.method public static synthetic $r8$lambda$2PvBSg_IL-rmiVQ6Fp-XUTWUXFk(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$startOpenAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5jo9BBY6JZTAhY40ZV-t-MbuHLk(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$new$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6QmiMoEaE_Kyufvf-EKfBTpEeiI(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$dismissWithButtonClick$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Awh56dAq1Tpw-QZrJYxlzkjGp4I(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$onCreateInternal$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gd4n5DMvY6tsqBn0MFClxifpt3E(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1377
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$NHXKXFKcf6SyXgI4np2gijyWFMU(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 2099
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$SKUSPcMr81H9zFzTGpHhuEfRZy0(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->registerBackCallback()V

    return-void
.end method

.method public static synthetic $r8$lambda$TcIWMbE14w8MV0w_ZePvCTppzgw(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$dismissWithButtonClick$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ufe6-rIuCkKCNFcNQJA5h-s5GR8(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$onCreateInternal$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$drTSpdlFr3oU2oWpCgoJIvOxdtI(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$setHideSystemVerticalInsets$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hSOxx01ku5Ur7vpuxQ5vXaZ8QEI(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$dismiss$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k1U2yrdbDKk4E01feGLP3evpzTg(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$dismiss$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n6lpQHxdJAl9eZvT5PogtkXO2C8(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$dismiss$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$nuI1W4Vn4DordFNKRZO7VU_P56Q(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$dismiss$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o_thqw8ZrhWCOUph7EV3rHfRGq0(Lorg/telegram/ui/ActionBar/BottomSheet;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$dismissWithButtonClick$9(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xa-Jvz70UB3X2wi0cQb6rLIL5bs(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$startOpenAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowCustomAnimation(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowDrawContent(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/ActionBar/BottomSheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentPanTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomView(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdisableScroll(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->disableScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissRunnable(Lorg/telegram/ui/ActionBar/BottomSheet;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethideSystemVerticalInsetsProgress(Lorg/telegram/ui/ActionBar/BottomSheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinternalBackgroundColor(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->internalBackgroundColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardContentAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutCount(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetleftInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->leftInset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmultipleLinesTitle(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonClickListener(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonHideListener(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onHideListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoverlayDrawNavBarColor(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->overlayDrawNavBarColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpredictiveBackAnimationInProgress(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->predictiveBackAnimationInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrightInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->rightInset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsmoothContainerViewLayoutUntil(Lorg/telegram/ui/ActionBar/BottomSheet;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothContainerViewLayoutUntil:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettouchSlop(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->touchSlop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettransitionFromRight(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputallowCustomAnimation(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputapplyBottomPadding(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputapplyTopPadding(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbigTitle(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bigTitle:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcellType(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->cellType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomView(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputitemIcons(Lorg/telegram/ui/ActionBar/BottomSheet;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputitems(Lorg/telegram/ui/ActionBar/BottomSheet;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardContentAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/WindowInsets;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastKeyboardHeight(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastKeyboardHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlayoutCount(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputleftInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->leftInset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmultipleLinesTitle(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonClickListener(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpredictiveBackAnimationInProgress(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->predictiveBackAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrightInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->rightInset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedPos(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->selectedPos:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputskipDismissAnimation(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->skipDismissAnimation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsmoothContainerViewLayoutUntil(Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothContainerViewLayoutUntil:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtitle(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuseFastDismiss(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useFastDismiss:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAdditionalMandatoryOffsets(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getAdditionalMandatoryOffsets()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterBackCallback(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->registerBackCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartOpenAnimation(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->startOpenAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterBackCallback(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->unregisterBackCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBackCallbackState(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->updateBackCallbackState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1137
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 1141
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 1145
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 90
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    .line 117
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    .line 135
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$1;

    const/high16 v2, -0x1000000

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 143
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    .line 146
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:I

    .line 149
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe:Z

    .line 150
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithTouchOutside:Z

    .line 152
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    .line 156
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->statusBarHeight:I

    .line 162
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    const/16 v2, 0x10

    .line 167
    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusableSoftInputMode:I

    .line 169
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    const/16 v2, 0x33

    .line 170
    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    .line 172
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    .line 178
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    .line 179
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    .line 183
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 190
    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    .line 196
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    .line 202
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->pauseAllHeavyOperations:Z

    .line 203
    new-instance v3, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 218
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 219
    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customViewGravity:I

    const-wide/16 v2, -0x1

    .line 2406
    iput-wide v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothContainerViewLayoutUntil:J

    .line 1146
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1148
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt p4, v2, :cond_0

    .line 1149
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x7fffff00

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    if-eqz p3, :cond_1

    const/16 v3, 0x30

    .line 1151
    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusableSoftInputMode:I

    goto :goto_0

    .line 1154
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x7ffeff00

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1156
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 1157
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->touchSlop:I

    .line 1159
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1161
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->internalBackgroundColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1162
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1163
    iget p1, v3, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    .line 1164
    iget p1, v3, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    .line 1166
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$2;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v1, 0x0

    .line 1212
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1213
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1214
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1215
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-nez p3, :cond_2

    .line 1217
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1218
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_2
    if-lt p4, v2, :cond_3

    .line 1234
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 p2, 0x700

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 1236
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 p2, 0x500

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1239
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method

.method private getAdditionalMandatoryOffsets()I
    .locals 3

    .line 945
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->calcMandatoryInsets:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    if-nez v0, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 949
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Insets;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/Insets;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Insets;)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic lambda$dismiss$10()V
    .locals 1

    .line 1958
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1960
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$dismiss$11(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1972
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    .line 1973
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 1974
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismiss$12(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1982
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    return-void
.end method

.method private synthetic lambda$dismiss$13(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1991
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    return-void
.end method

.method private synthetic lambda$dismissWithButtonClick$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1837
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    return-void
.end method

.method private synthetic lambda$dismissWithButtonClick$8(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1883
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->selectedPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    return-void
.end method

.method private synthetic lambda$dismissWithButtonClick$9(ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1891
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1892
    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1219
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->statusBarHeight:I

    if-eq v1, v0, :cond_1

    .line 1221
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->statusBarHeight:I

    .line 1223
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    .line 1224
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onInsetsChanged()V

    .line 1226
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    .line 1227
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 1229
    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onCreateInternal$2()V
    .locals 2

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreateInternal$4(Landroid/view/View;)V
    .locals 0

    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    return-void
.end method

.method private synthetic lambda$setHideSystemVerticalInsets$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 936
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    .line 937
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 938
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$startOpenAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1695
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    .line 1696
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 1697
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOpenAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1705
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    return-void
.end method

.method private onCreateInternal()V
    .locals 18

    move-object/from16 v0, p0

    .line 1271
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1272
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->addSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    .line 1273
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_f

    .line 1275
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1276
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1277
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    const-wide/16 v4, 0x50

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1282
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1283
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    move-object v1, v3

    goto :goto_1

    .line 1287
    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1288
    sget v4, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {v1, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1289
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    :goto_1
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1293
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v4, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v4

    .line 1294
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    const v6, 0x3f389375    # 0.721f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_3

    .line 1296
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    or-int/lit16 v4, v4, 0x2000

    .line 1298
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1301
    :cond_3
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightNavBar:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v4, v7, :cond_4

    .line 1302
    invoke-static {v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    .line 1305
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v7, 0x41000000    # 8.0f

    if-nez v4, :cond_7

    .line 1306
    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$3;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 1321
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1322
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    if-eqz v9, :cond_5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_2
    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v5

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    if-eqz v11, :cond_6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_3

    :cond_6
    move v11, v6

    :goto_3
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1324
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v9, -0x2

    const/16 v10, 0x50

    invoke-static {v2, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v8, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_8

    .line 1328
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    .line 1329
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v2, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v4, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    if-eqz v4, :cond_e

    .line 1334
    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$4;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    .line 1355
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->bigTitle:Z

    if-eqz v4, :cond_a

    .line 1357
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1358
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1359
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1360
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const/high16 v9, 0x41a80000    # 21.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    if-eqz v11, :cond_9

    const/high16 v11, 0x41600000    # 14.0f

    goto :goto_4

    :cond_9
    const/high16 v11, 0x40c00000    # 6.0f

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v10, v11, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_6

    .line 1362
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1363
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1364
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    if-eqz v11, :cond_b

    move v11, v7

    goto :goto_5

    :cond_b
    move v11, v8

    :goto_5
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v10, v11, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1366
    :goto_6
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    if-eqz v4, :cond_c

    .line 1367
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1368
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1369
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_7

    .line 1371
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 1372
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1373
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1375
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1376
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    const/16 v10, 0x30

    if-eqz v9, :cond_d

    const/high16 v9, -0x40000000    # -2.0f

    goto :goto_8

    :cond_d
    int-to-float v9, v10

    :goto_8
    invoke-static {v2, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_9

    :cond_e
    move v10, v6

    .line 1380
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    if-eqz v4, :cond_11

    .line 1381
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1382
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1383
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1385
    :cond_f
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    if-nez v3, :cond_10

    .line 1386
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1387
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1388
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1389
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1390
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    iget v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customViewGravity:I

    int-to-float v15, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    neg-int v4, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_d

    .line 1393
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    iget v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customViewGravity:I

    int-to-float v15, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 1396
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_14

    move v4, v6

    .line 1399
    :goto_a
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    array-length v9, v7

    if-ge v4, v9, :cond_14

    .line 1400
    aget-object v7, v7, v4

    if-nez v7, :cond_12

    goto :goto_c

    .line 1403
    :cond_12
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->cellType:I

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v9, v11, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1404
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    aget-object v9, v9, v4

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    if-eqz v11, :cond_13

    aget v11, v11, v4

    goto :goto_b

    :cond_13
    move v11, v6

    :goto_b
    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->bigTitle:Z

    invoke-virtual {v7, v9, v11, v3, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V

    .line 1405
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    int-to-float v15, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x42400000    # 48.0f

    const/16 v13, 0x33

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x30

    .line 1407
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1408
    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1409
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1414
    :cond_14
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_15

    goto :goto_f

    :cond_15
    if-eqz v1, :cond_19

    .line 1417
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1418
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x33

    .line 1419
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1420
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1421
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1422
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-eqz v6, :cond_16

    .line 1423
    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusableSoftInputMode:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_e

    :cond_16
    const/high16 v6, 0x20000

    or-int/2addr v4, v6

    .line 1425
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1427
    :goto_e
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    if-eqz v4, :cond_17

    .line 1428
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x7ffefb00

    or-int/2addr v4, v6

    .line 1431
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1432
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 v6, 0x504

    invoke-virtual {v4, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1434
    :cond_17
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1435
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_18

    .line 1436
    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1438
    :cond_18
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_19
    :goto_f
    return-void
.end method

.method private registerBackCallback()V
    .locals 3

    .line 2470
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->predictiveBackAnimation:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2474
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 2478
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2479
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 2482
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 2483
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 2486
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_4

    .line 2487
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz v0, :cond_5

    .line 2488
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2493
    :cond_4
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$9;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backAnimationCallback:Landroid/window/OnBackAnimationCallback;

    .line 2564
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-nez v1, :cond_5

    .line 2565
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    const v2, 0xf4240

    invoke-interface {v1, v2, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x1

    .line 2569
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isBackCallbackRegistered:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private setShowing(Z)V
    .locals 4

    .line 2383
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->showing:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2386
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->showing:Z

    .line 2387
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openedLayerNum:I

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2389
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openedLayerNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 2391
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openedLayerNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startOpenAnimation()V
    .locals 8

    .line 1669
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1672
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1674
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomOpenAnimation()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1675
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1678
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1683
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerViewHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    add-int/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    .line 1685
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    .line 1686
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1683
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1688
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    const/4 v0, 0x1

    .line 1689
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 1690
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    .line 1691
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1693
    :cond_3
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    new-array v2, v2, [F

    aput v4, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    .line 1694
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1700
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 1701
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v0, [F

    aput v3, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v0, [F

    aput v4, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v0, [F

    aput v3, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1705
    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1706
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    filled-new-array {v5}, [I

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->appendOpenAnimator(ZLjava/util/ArrayList;)V

    .line 1710
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1711
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight:Z

    if-eqz v2, :cond_5

    .line 1712
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1713
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 1715
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1716
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1718
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    if-eqz v3, :cond_6

    const-wide/16 v3, 0x0

    goto :goto_3

    :cond_6
    const-wide/16 v3, 0x14

    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1719
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1721
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1722
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$6;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1756
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->pauseAllHeavyOperations:Z

    if-eqz v2, :cond_7

    .line 1757
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1759
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    :goto_4
    return-void
.end method

.method private unregisterBackCallback()V
    .locals 2

    .line 2575
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isBackCallbackRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_0

    .line 2576
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 2578
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isBackCallbackRegistered:Z

    const/4 v0, 0x0

    .line 2579
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backAnimationCallback:Landroid/window/OnBackAnimationCallback;

    .line 2580
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    return-void
.end method

.method private updateBackCallbackState()V
    .locals 4

    .line 2453
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2456
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isBackCallbackRegistered:Z

    if-eqz v3, :cond_1

    .line 2457
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    .line 2458
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isBackCallbackRegistered:Z

    return-void

    :cond_1
    if-nez v2, :cond_2

    .line 2459
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isBackCallbackRegistered:Z

    if-nez v2, :cond_2

    const v2, 0xf4240

    .line 2460
    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x1

    .line 2464
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isBackCallbackRegistered:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected appendOpenAnimator(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public attachedToParent()Z
    .locals 1

    .line 2065
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    .line 1571
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe:Z

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    .line 1622
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithTouchOutside:Z

    return v0
.end method

.method protected canSwipeToBack(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected cancelSheetAnimation()V
    .locals 1

    .line 1653
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1654
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 1655
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v0, 0x0

    .line 1657
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return-void
.end method

.method public dismiss()V
    .locals 10

    .line 1942
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->canDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1945
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1948
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 1949
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onHideListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_2

    .line 1950
    invoke-interface {v1, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1952
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    .line 1954
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onDismissAnimationStart()V

    .line 1955
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->skipDismissAnimation:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1956
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1964
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomCloseAnimation()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move-wide v5, v2

    goto/16 :goto_6

    .line 1965
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v1, 0x2

    .line 1966
    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 1967
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_6

    .line 1968
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1970
    :cond_6
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    new-array v1, v1, [F

    aput v5, v1, v4

    const/4 v5, 0x0

    aput v5, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    .line 1971
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1977
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 1978
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1979
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    .line 1980
    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight:Z

    if-eqz v7, :cond_7

    .line 1981
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    new-array v9, v0, [F

    aput v8, v9, v4

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1982
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1983
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v0, [F

    aput v5, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1986
    :cond_7
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerViewHeight()I

    move-result v7

    .line 1987
    iget-boolean v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->forceKeyboardOnDismiss:Z

    if-eqz v8, :cond_8

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastKeyboardHeight:I

    goto :goto_3

    :cond_8
    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    :goto_3
    add-int/2addr v7, v8

    const/high16 v8, 0x41200000    # 10.0f

    .line 1988
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    .line 1989
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    new-array v8, v0, [F

    aput v7, v8, v4

    .line 1986
    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1991
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1992
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    :cond_9
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v6, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    filled-new-array {v4}, [I

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    invoke-virtual {p0, v4, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->appendOpenAnimator(ZLjava/util/ArrayList;)V

    .line 1998
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2000
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight:Z

    if-eqz v1, :cond_a

    .line 2001
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2002
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide v5, v2

    goto :goto_5

    .line 2004
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2005
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2007
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$8;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$8;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2032
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v7, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v8, 0x200

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v4

    invoke-virtual {v1, v7, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2033
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2037
    :goto_6
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2038
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    if-eqz v1, :cond_c

    cmp-long v1, v5, v2

    if-lez v1, :cond_b

    long-to-float v1, v5

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    .line 2040
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin;->hide(J)V

    goto :goto_7

    .line 2042
    :cond_b
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 2045
    :cond_c
    :goto_7
    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setShowing(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    .line 2050
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    .line 2113
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 2114
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    .line 2115
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    return-void

    .line 2118
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2121
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dismissWithButtonClick(I)V
    .locals 8

    .line 1826
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1829
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 1830
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    const/4 v1, 0x2

    .line 1831
    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 1832
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 1833
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerViewHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    add-int/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    .line 1835
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    .line 1836
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    new-array v5, v0, [F

    aput v4, v5, v6

    .line 1833
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1837
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1838
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v5, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    filled-new-array {v6}, [I

    move-result-object v7

    .line 1840
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v6

    aput-object v4, v1, v0

    .line 1838
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1842
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->cellType:I

    sget v3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->CELL_TYPE_CALL:I

    if-ne v2, v3, :cond_1

    const-wide/16 v2, 0x14a

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xb4

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1843
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1844
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$7;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$7;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1875
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v6

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1876
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1878
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->cellType:I

    sget v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->CELL_TYPE_CALL:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->selectedPos:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1879
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getItemViews()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->selectedPos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 1880
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getItemViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 1881
    filled-new-array {v0, v1}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1882
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x82

    .line 1886
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1887
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1888
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1889
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1890
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1894
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1895
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1896
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 2398
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1902
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1905
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public fixNavigationBar()V
    .locals 1

    .line 1251
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    return-void
.end method

.method public fixNavigationBar(I)V
    .locals 2

    .line 1255
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBar:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    .line 1256
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    .line 1257
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    const/4 v0, -0x1

    .line 1258
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    .line 1259
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    return-void
.end method

.method public forceKeyboardOnDismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 1923
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->forceKeyboardOnDismiss:Z

    return-void
.end method

.method public getBackDrawable()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 1555
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getBackgroundPaddingLeft()I
    .locals 1

    .line 2379
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return v0
.end method

.method public getBackgroundPaddingTop()I
    .locals 1

    .line 1559
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return v0
.end method

.method public getBottomInset()I
    .locals 3

    .line 2317
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getBottomSheetWidth(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    int-to-float p1, p2

    const p3, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p3

    const/high16 p3, 0x43f00000    # 480.0f

    .line 925
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 2

    .line 2585
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
    .locals 1

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    return-object v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .line 2363
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContainerViewHeight()I
    .locals 1

    .line 1911
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1914
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 2367
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return v0
.end method

.method public getItemViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;",
            ">;"
        }
    .end annotation

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeftInset()I
    .locals 3

    .line 2287
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 2292
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationBarColor(I)I
    .locals 4

    .line 2085
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedToParent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2087
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight:Z

    if-eqz v1, :cond_1

    .line 2088
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_1

    .line 2090
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerViewHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    add-int/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 2091
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 2093
    :goto_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {p1, v1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 2440
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getRightInset()I
    .locals 3

    .line 2300
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 2305
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSheetAnimationType()I
    .locals 1

    .line 2109
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return v0
.end method

.method public getSheetContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 3

    .line 2313
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->statusBarHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSystemBottomInset()I
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 1776
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->tag:I

    return v0
.end method

.method protected getTargetOpenTranslationY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 2371
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1643
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWindowView()Landroid/view/View;
    .locals 1

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    return-object v0
.end method

.method public isAttachedLightStatusBar()Z
    .locals 1

    .line 1467
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    return v0
.end method

.method public isDismissed()Z
    .locals 1

    .line 1822
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 1471
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    return v0
.end method

.method public isFullyVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 953
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 1933
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isTouchOutside(FF)Z
    .locals 5

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1627
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 1628
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    .line 1629
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 1630
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v3

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v4

    if-gtz v0, :cond_0

    return v1

    .line 1635
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected mainContainerDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 2419
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2420
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 2421
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public onAttachedBackPressed()Z
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 2432
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    .line 2433
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void

    .line 2435
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onContainerDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onContainerTranslationYChanged(F)V
    .locals 0

    .line 1647
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 1648
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onContainerViewTranslation()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1264
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1265
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreateInternal()V

    return-void
.end method

.method protected onCustomCloseAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDismissAnimationStart()V
    .locals 0

    return-void
.end method

.method protected onDismissWithTouchOutside()V
    .locals 0

    .line 1618
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method protected onInsetsChanged()V
    .locals 0

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 0

    return-void
.end method

.method protected onScrollUp(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onScrollUpBegin(F)V
    .locals 0

    return-void
.end method

.method protected onScrollUpEnd(F)V
    .locals 0

    return-void
.end method

.method protected onSmoothContainerViewLayout(F)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1444
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onSwipeStarts()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    .line 2055
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 1

    .line 1563
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    if-eq v0, p1, :cond_1

    .line 1564
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    .line 1565
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1566
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setAllowNestedScroll(Z)V
    .locals 1

    .line 1129
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez p1, :cond_0

    .line 1131
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1132
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    :cond_0
    return-void
.end method

.method public setApplyBottomPadding(Z)V
    .locals 0

    .line 1606
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    return-void
.end method

.method public setApplyTopPadding(Z)V
    .locals 0

    .line 1602
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .line 1497
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1498
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->internalBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 1499
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->internalBackgroundColor:I

    .line 1500
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$fgetinternalPaddingBottom(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    .line 1503
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    .line 1504
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 1501
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public setCalcMandatoryInsets(Z)V
    .locals 0

    .line 967
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->calcMandatoryInsets:Z

    .line 968
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    return-void
.end method

.method public setCanDismissWithSwipe(Z)V
    .locals 0

    .line 1575
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe:Z

    return-void
.end method

.method public setCanDismissWithTouchOutside(Z)V
    .locals 0

    .line 1639
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithTouchOutside:Z

    return-void
.end method

.method public setCurrentPanTranslationY(F)V
    .locals 0

    .line 2333
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentPanTranslationY:F

    .line 2334
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 0

    .line 1764
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    return-void
.end method

.method public setDimBehind(Z)V
    .locals 0

    .line 1780
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    return-void
.end method

.method public setDimBehindAlpha(I)V
    .locals 0

    .line 1784
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    return-void
.end method

.method public setDisableScroll(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->disableScroll:Z

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 1475
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1478
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    .line 1479
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1480
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1481
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-eqz v1, :cond_1

    .line 1482
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusableSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1483
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    .line 1485
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1486
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1488
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setHideSystemVerticalInsets(Z)V
    .locals 3

    .line 933
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 934
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 935
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 940
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setImageReceiverNumLevel(II)V
    .locals 0

    .line 2402
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->playingImagesLayerNum:I

    .line 2403
    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openedLayerNum:I

    return-void
.end method

.method public setItemColor(III)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1796
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1799
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 1800
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->-$$Nest$fgettextView(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1801
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemText(ILjava/lang/CharSequence;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1791
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 1792
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->-$$Nest$fgettextView(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1809
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    .line 1810
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    .line 1811
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setKeyboardHeightFromParent(I)V
    .locals 0

    return-void
.end method

.method public synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 2105
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2099
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1661
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onHideListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOpenNoDelay(Z)V
    .locals 0

    .line 2375
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openNoDelay:Z

    return-void
.end method

.method public setOverlayNavBarColor(I)V
    .locals 6

    .line 2340
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->overlayDrawNavBarColor:I

    .line 2341
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 2342
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2345
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2346
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v1, v1, v1}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZ)V

    .line 2347
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getWindowView()Landroid/view/View;

    move-result-object p1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getNavigationBarColor(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    const v3, 0x3f389375    # 0.721f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    return-void

    .line 2358
    :cond_2
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->overlayDrawNavBarColor:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/app/Dialog;I)V

    .line 2359
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->overlayDrawNavBarColor:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    float-to-double v2, p1

    const-wide v4, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double p1, v2, v4

    if-lez p1, :cond_3

    move v0, v1

    :cond_3
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public setShowWithoutAnimation(Z)V
    .locals 0

    .line 1492
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->showWithoutAnimation:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 1593
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 1597
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    .line 1598
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bigTitle:Z

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1818
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setUseLightStatusBar(Z)V
    .locals 3

    .line 1448
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    .line 1450
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result p1

    .line 1451
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 1453
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    if-eqz v2, :cond_0

    const v2, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_0

    or-int/lit16 p1, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, -0x2001

    .line 1458
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1460
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_1

    .line 1461
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v1, v1, v1}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZ)V

    :cond_1
    return-void
.end method

.method protected shouldOverlayCameraViewOverNavBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 6

    .line 1512
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1513
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    .line 1514
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreateInternal()V

    goto :goto_0

    .line 1516
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    const/4 v0, 0x1

    .line 1518
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setShowing(Z)V

    .line 1519
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-eqz v0, :cond_2

    .line 1520
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusableSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    const/4 v0, 0x0

    .line 1522
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 1523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    .line 1524
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    const/high16 v3, -0x80000000

    .line 1525
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 1526
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1524
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1528
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->showWithoutAnimation:Z

    if-eqz v1, :cond_4

    .line 1529
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v2, :cond_3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    :cond_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1530
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1531
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    return-void

    .line 1534
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1535
    iput v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    .line 1536
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    if-eqz v3, :cond_5

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5
    int-to-float v0, v0

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1537
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    .line 1538
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openNoDelay:Z

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_6
    const-wide/16 v0, 0x96

    .line 1539
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    if-eqz v2, :cond_7

    const-wide/16 v0, 0x1f4

    .line 1542
    :cond_7
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$5;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public smoothContainerViewLayout()V
    .locals 4

    .line 2408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x50

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothContainerViewLayoutUntil:J

    return-void
.end method

.method public transitionFromRight(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight:Z

    return-void
.end method
