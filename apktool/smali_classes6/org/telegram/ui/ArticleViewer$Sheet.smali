.class public Lorg/telegram/ui/ArticleViewer$Sheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;
.implements Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;
    }
.end annotation


# instance fields
.field public final animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field public attachedToActionBar:Z

.field private backProgress:F

.field public containerView:Landroid/view/View;

.field public final context:Landroid/content/Context;

.field public dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

.field private dismissAnimator:Landroid/animation/ValueAnimator;

.field private dismissProgress:F

.field private dismissing:Z

.field private dismissingIntoTabs:Z

.field public fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public fullyAttachedToActionBar:Z

.field private hadDialog:Z

.field private lastVisible:Z

.field public nestedVerticalScroll:Z

.field private onDismissListener:Ljava/lang/Runnable;

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private released:Z

.field public resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private wasFullyVisible:Z

.field public final windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;


# direct methods
.method public static synthetic $r8$lambda$5mUps6-5Ia3NDdKvLwbqOkx_3j8(Lorg/telegram/ui/ArticleViewer$Sheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$dismiss$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$6j-nm1Mdg04ebE7HW3p2SsKEpak(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$animateBackProgressTo$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JDtfLEHLe7YRvT_ABP14z5GeBiU(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$animateDismiss$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dicmel6ycvGa4qRnt2-oxQZ7AEc(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$animateOpen$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-v6QSnYdXqI-qSCGIey4qAo7Z0(Lorg/telegram/ui/ArticleViewer$Sheet;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbackProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissingIntoTabs(Lorg/telegram/ui/ArticleViewer$Sheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenProgress(Lorg/telegram/ui/ArticleViewer$Sheet;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdismissProgress(Lorg/telegram/ui/ArticleViewer$Sheet;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenProgress(Lorg/telegram/ui/ArticleViewer$Sheet;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetListPaddingTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListPaddingTop()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetListTop(Lorg/telegram/ui/ArticleViewer$Sheet;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListTop()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 13770
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13758
    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 13771
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 13772
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 13773
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->context:Landroid/content/Context;

    .line 13774
    new-instance p2, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    .line 13775
    new-instance p1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private getListPaddingTop()I
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    .line 14177
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method private getListTop()I
    .locals 4

    .line 14135
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sub-float/2addr v2, v0

    .line 14137
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 14138
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getListTop()F

    move-result v3

    mul-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 14140
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 14141
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getListTop()F

    move-result v0

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method private synthetic lambda$animateBackProgressTo$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 14454
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->setBackProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateDismiss$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 14097
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    .line 14098
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-nez p1, :cond_0

    .line 14099
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    .line 14101
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    .line 14102
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method private synthetic lambda$animateOpen$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 14053
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    .line 14054
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    .line 14055
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    .line 14056
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method private synthetic lambda$dismiss$1()V
    .locals 1

    .line 13890
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->release()V

    .line 13891
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->destroy()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 2

    .line 13776
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr p1, v1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputkeyboardVisible(Lorg/telegram/ui/ArticleViewer;Z)V

    return-void
.end method


# virtual methods
.method public animateBackProgressTo(F)Landroid/animation/ValueAnimator;
    .locals 3

    .line 14453
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 14454
    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public animateDismiss(ZZLjava/lang/Runnable;)V
    .locals 3

    .line 14091
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 14092
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    .line 14095
    iget p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    .line 14096
    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14104
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$2;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/ArticleViewer$Sheet$2;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;ZLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14118
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14119
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14120
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    .line 14122
    :cond_3
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    .line 14123
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-nez p1, :cond_4

    .line 14124
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    :cond_4
    if-eqz p3, :cond_5

    .line 14127
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 14129
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method public animateOpen(ZZLjava/lang/Runnable;)V
    .locals 3

    .line 14047
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 14048
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 14051
    iget p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    .line 14052
    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14058
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$1;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/ArticleViewer$Sheet$1;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;ZLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_2

    .line 14072
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14073
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 14075
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14076
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xb4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14078
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    move v0, v1

    .line 14080
    :cond_4
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    .line 14081
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    if-eqz p3, :cond_5

    .line 14083
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 14085
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    if-eqz p1, :cond_6

    .line 14086
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    :cond_6
    return-void
.end method

.method public attachInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const/4 v0, 0x0

    .line 13840
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->released:Z

    .line 13841
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 13842
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 13843
    instance-of v1, p1, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 13844
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13845
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 13846
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    .line 13849
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v1, :cond_1

    .line 13850
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->attach()V

    goto :goto_0

    .line 13852
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 13853
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13854
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13857
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    if-eqz p1, :cond_3

    .line 13858
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->resume()V

    .line 13860
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v2

    if-eqz p1, :cond_4

    .line 13861
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->resume()V

    .line 13863
    :cond_4
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->activeSheets:Ljava/util/HashSet;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachedToParent()Z
    .locals 1

    .line 13963
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public checkFullyVisible()V
    .locals 2

    .line 13945
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->wasFullyVisible:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->isFullyVisible()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 13946
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->isFullyVisible()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->wasFullyVisible:Z

    .line 13948
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_1

    .line 13949
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 13950
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v1, :cond_0

    .line 13951
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 13953
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v0, :cond_2

    .line 13954
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 13956
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 13957
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public checkNavColor()V
    .locals 4

    .line 14147
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->isAttachedLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/View;Z)V

    .line 14148
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v0, :cond_1

    .line 14149
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->updateNavigationBarColor()V

    return-void

    .line 14151
    :cond_1
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, v1}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZ)V

    .line 14152
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getWindowView()Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->getNavigationBarColor(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    const v3, 0x3f389375    # 0.721f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 13874
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 13883
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 13884
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    .line 13885
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-eqz p1, :cond_1

    .line 13887
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Z

    goto :goto_0

    .line 13889
    :cond_1
    new-instance p1, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    invoke-virtual {p0, v0, v0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateDismiss(ZZLjava/lang/Runnable;)V

    .line 13894
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    .line 13895
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method public dismissInstant()V
    .locals 1

    .line 13928
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 13929
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    .line 13930
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->release()V

    .line 13931
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->destroy()V

    return-void
.end method

.method public getActionBarColor()I
    .locals 5

    .line 14165
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-nez v0, :cond_0

    .line 14166
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0

    .line 14168
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    .line 14169
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v3

    sub-float/2addr v2, v0

    invoke-static {v1, v3, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getArticleViewer()Lorg/telegram/ui/ArticleViewer;
    .locals 1

    .line 13767
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    return-object v0
.end method

.method public getBackProgress()F
    .locals 1

    .line 14449
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    return v0
.end method

.method public getBackgroundColor()I
    .locals 5

    .line 14157
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-nez v0, :cond_0

    .line 14158
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_iv_navigationBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0

    .line 14160
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    .line 14161
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v3

    sub-float/2addr v2, v0

    invoke-static {v1, v3, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 3

    .line 14474
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isWeb()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 14475
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 14476
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    goto :goto_0

    .line 14478
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    .line 14479
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    .line 14481
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyPadding()I
    .locals 3

    const/high16 v0, 0x41800000    # 16.0f

    .line 14181
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->containerView:Landroid/view/View;

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListTop()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNavigationBarColor(I)I
    .locals 4

    .line 14004
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 14005
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getBackgroundColor()I

    move-result v1

    .line 14006
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14007
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundColor:I

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 14009
    :cond_1
    invoke-static {p1, v1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getWindowView()Landroid/view/View;
    .locals 1

    .line 13753
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getWindowView()Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;
    .locals 1

    .line 13753
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getWindowView()Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    move-result-object v0

    return-object v0
.end method

.method public getWindowView()Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;
    .locals 1

    .line 13786
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    return-object v0
.end method

.method public hadDialog()Z
    .locals 1

    .line 13803
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->hadDialog:Z

    return v0
.end method

.method public final halfSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAttachedLightStatusBar()Z
    .locals 3

    .line 14014
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 14015
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getActionBarColor()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public isFullyVisible()Z
    .locals 3

    .line 13942
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fullyAttachedToActionBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 2

    .line 13836
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->released:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedBackPressed()Z
    .locals 3

    .line 13968
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetkeyboardVisible(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 13969
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return v1

    .line 13972
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 13973
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->showSearch(ZZ)V

    return v1

    .line 13976
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13977
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    return v1

    .line 13980
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isFirstArticle()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->hasBackButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13981
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->back()V

    return v1

    .line 13984
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 13985
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgoBack(Lorg/telegram/ui/ArticleViewer;)V

    return v1

    .line 13988
    :cond_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return v1
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x1

    .line 13900
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->released:Z

    .line 13901
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->-$$Nest$fgetswipeBack(Lorg/telegram/ui/ArticleViewer$PageLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13902
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget v3, v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    neg-float v3, v3

    iget v4, v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    .line 13903
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->-$$Nest$fputswipeBack(Lorg/telegram/ui/ArticleViewer$PageLayout;Z)V

    .line 13905
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 13906
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->pause()V

    .line 13908
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    .line 13909
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->pause()V

    .line 13911
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v0, :cond_3

    .line 13912
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->detach()V

    .line 13914
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    .line 13915
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    .line 13916
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-nez v0, :cond_4

    .line 13917
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 13920
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->onDismissListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 13921
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 13922
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->onDismissListener:Ljava/lang/Runnable;

    .line 13924
    :cond_5
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->activeSheets:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 14025
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    .line 14026
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    .line 14027
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 14028
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14030
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 14031
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 14033
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    .line 14034
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    .line 14035
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    .line 14036
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    .line 14037
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 14038
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public saveState()Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 5

    .line 13808
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;-><init>()V

    .line 13809
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/WebActionBar;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->title:Ljava/lang/String;

    .line 13810
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    .line 13811
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v1

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    :goto_0
    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColor:I

    .line 13812
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v1

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    :goto_1
    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    const/4 v1, 0x1

    .line 13813
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideActionBarColor:Z

    .line 13815
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getProgress()F

    move-result v1

    :goto_2
    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleProgress:F

    .line 13817
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->view2:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 13818
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->favicon:Landroid/graphics/Bitmap;

    .line 13819
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->view2:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 13820
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewWidth:I

    .line 13821
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->view2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewHeight:I

    .line 13823
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListTop()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewScroll:I

    .line 13824
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->themeIsDark:Z

    return-object v0
.end method

.method public setBackProgress(F)V
    .locals 0

    .line 14442
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    .line 14443
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 14444
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    .line 14445
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method public setContainerView(Landroid/view/View;)V
    .locals 0

    .line 13781
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->containerView:Landroid/view/View;

    .line 13782
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    return-void
.end method

.method public setDialog(Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;)Z
    .locals 1

    .line 13796
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 13797
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->hadDialog:Z

    :cond_0
    return v0
.end method

.method public setKeyboardHeightFromParent(I)V
    .locals 0

    return-void
.end method

.method public setLastVisible(Z)V
    .locals 2

    .line 14461
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->lastVisible:Z

    .line 14462
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setLastVisible(Z)V

    .line 14463
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setLastVisible(Z)V

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 14021
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->onDismissListener:Ljava/lang/Runnable;

    return-void
.end method

.method public show()V
    .locals 2

    .line 13867
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 13868
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->attachInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 13869
    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateOpen(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateLastVisible()V
    .locals 3

    .line 14467
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->lastVisible:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setLastVisible(Z)V

    .line 14468
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setLastVisible(Z)V

    return-void
.end method

.method public updateTranslation()V
    .locals 4

    .line 14185
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 14186
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getEmptyPadding()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    sub-float/2addr v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 14187
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
