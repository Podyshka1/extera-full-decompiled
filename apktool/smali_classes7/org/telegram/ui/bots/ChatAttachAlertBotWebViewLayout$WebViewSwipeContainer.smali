.class public abstract Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewSwipeContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;
    }
.end annotation


# static fields
.field public static final SWIPE_OFFSET_Y:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;


# instance fields
.field private allowFullSizeSwipe:Z

.field private allowSwipes:Z

.field public allowedScrollX:Z

.field public allowedScrollY:Z

.field private delegate:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;

.field private drawnSwipeOffsetY:F

.field private flingInProgress:Z

.field private fullsize:Z

.field private final gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private isKeyboardVisible:Lorg/telegram/messenger/GenericProvider;

.field public isPinned:Z

.field public isScrolling:Z

.field private isSwipeDisallowed:Z

.field private isSwipeOffsetAnimationDisallowed:Z

.field private final minscroll:F

.field public offsetY:F

.field private offsetYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public opened:Z

.field private pendingOffsetY:F

.field private pendingSwipeOffsetY:F

.field private pressDownTime:J

.field private pressDownX:F

.field private pressDownY:F

.field private renderNode:Ljava/lang/Object;

.field private scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private scrollEndListener:Ljava/lang/Runnable;

.field private scrollListener:Ljava/lang/Runnable;

.field private scrolledOut:Z

.field public shouldWaitWebViewScroll:Z

.field public stickToEdges:Z

.field private swipeOffsetY:F

.field private swipeStickyRange:I

.field private sy:F

.field public topActionBarOffsetY:F

.field private webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;


# direct methods
.method public static synthetic $r8$lambda$B6SCKwI0Ul0i3QX6YTUA3w-NMAQ(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 794
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$BXPDav7lWXXIyR1Olq3-oGDxvoA(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;FFZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->lambda$setOffsetY$1(FFZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rh8JMPlKxnazjnKCvZ1SgHFlQIQ(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->updateDrawn()V

    return-void
.end method

.method public static synthetic $r8$lambda$VTGdtg7qVvXSG6tavlMcqIcuRhU(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->lambda$setOffsetY$2(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$nlzq3YI7qUhDTQzPFCBVU6aKT6Q(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->lambda$stickTo$3(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowFullSizeSwipe(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowFullSizeSwipe:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowSwipes(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowSwipes:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->delegate:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawnSwipeOffsetY(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->drawnSwipeOffsetY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfullsize(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->fullsize:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisKeyboardVisible(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)Lorg/telegram/messenger/GenericProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isKeyboardVisible:Lorg/telegram/messenger/GenericProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisSwipeDisallowed(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeDisallowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeOffsetY(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeStickyRange(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeStickyRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputflingInProgress(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->flingInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisSwipeDisallowed(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeDisallowed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswipeOffsetY(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mcap(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;F)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->cap(F)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 735
    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda3;-><init>()V

    const-string v3, "swipeOffsetY"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    sput-object v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->SWIPE_OFFSET_Y:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 845
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 771
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    const/4 v0, 0x0

    .line 772
    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 773
    iput v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingOffsetY:F

    const/high16 v1, -0x31000000

    .line 774
    iput v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingSwipeOffsetY:F

    .line 794
    new-instance v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda4;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isKeyboardVisible:Lorg/telegram/messenger/GenericProvider;

    const/4 v1, 0x1

    .line 820
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowSwipes:Z

    .line 1093
    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->sy:F

    const/4 v0, 0x0

    .line 1094
    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrolledOut:Z

    const/high16 v0, 0x42700000    # 60.0f

    .line 1095
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->minscroll:F

    .line 1114
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickToEdges:Z

    .line 847
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 848
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    new-instance v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$1;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;I)V

    invoke-direct {v1, p1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 931
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->updateStickyRange()V

    return-void
.end method

.method private cap(F)F
    .locals 2

    .line 1097
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrolledOut:Z

    if-eqz v0, :cond_0

    return p1

    .line 1100
    :cond_0
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->sy:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->sy:F

    .line 1101
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->minscroll:F

    cmpl-float p1, p1, v0

    const/4 v1, 0x0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 1102
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrolledOut:Z

    .line 1103
    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->sy:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    sub-float/2addr p1, v0

    return p1

    :cond_1
    add-float/2addr p1, v0

    return p1

    :cond_2
    return v1
.end method

.method private synthetic lambda$setOffsetY$1(FFZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 1013
    iput p6, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    const/4 p5, 0x0

    cmpl-float p7, p1, p5

    if-nez p7, :cond_0

    const/high16 p6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sub-float/2addr p6, p2

    div-float/2addr p6, p1

    :goto_0
    if-eqz p3, :cond_1

    .line 1018
    iget p3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    .line 1019
    invoke-static {p5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p6, p1

    sub-float/2addr p3, p6

    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    neg-float p1, p1

    iget p5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr p1, p5

    .line 1021
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    int-to-float p5, p5

    iget p6, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    sub-float/2addr p5, p6

    iget p6, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr p5, p6

    .line 1018
    invoke-static {p3, p1, p5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    .line 1024
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result p1

    neg-float p2, p2

    iget p3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    .line 1025
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    neg-float p2, p4

    iget p3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1027
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    return-void
.end method

.method private synthetic lambda$setOffsetY$2(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p2, 0x0

    .line 1030
    iput-object p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p3, :cond_0

    .line 1033
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    .line 1034
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    return-void

    .line 1036
    :cond_0
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingOffsetY:F

    return-void
.end method

.method private synthetic lambda$stickTo$3(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1226
    iget-object p3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_3

    const/4 p2, 0x0

    .line 1227
    iput-object p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    .line 1230
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1233
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollEndListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1234
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1237
    :cond_1
    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingOffsetY:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p3, p1, p2

    if-eqz p3, :cond_2

    .line 1238
    iget-boolean p3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeOffsetAnimationDisallowed:Z

    const/4 p4, 0x1

    .line 1239
    iput-boolean p4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeOffsetAnimationDisallowed:Z

    .line 1240
    invoke-virtual {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setOffsetY(F)V

    .line 1241
    iput p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingOffsetY:F

    .line 1242
    iput-boolean p3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeOffsetAnimationDisallowed:Z

    :cond_2
    const/high16 p1, -0x31000000

    .line 1244
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingSwipeOffsetY:F

    :cond_3
    return-void
.end method

.method private updateDrawn()V
    .locals 1

    .line 1055
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->drawnSwipeOffsetY:F

    return-void
.end method

.method private updateStickyRange()V
    .locals 2

    .line 947
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42800000    # 64.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeStickyRange:I

    return-void
.end method


# virtual methods
.method public allowThisScroll(ZZ)V
    .locals 0

    .line 836
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowedScrollX:Z

    .line 837
    iput-boolean p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowedScrollY:Z

    return-void
.end method

.method public allowingScroll(Z)Z
    .locals 1

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowedScrollX:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowedScrollY:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public cancelStickTo()V
    .locals 1

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1192
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    .line 1193
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 749
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->renderNode:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 752
    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 753
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 754
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 756
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->renderNode:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 758
    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 760
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_1
    return-void

    .line 763
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1120
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isScrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1123
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pressDownTime:J

    .line 1125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pressDownX:F

    .line 1126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pressDownY:F

    .line 1127
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrolledOut:Z

    .line 1128
    iput v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->sy:F

    .line 1129
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->shouldWaitWebViewScroll:Z

    if-eqz v0, :cond_1

    .line 1130
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowedScrollX:Z

    .line 1131
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowedScrollY:Z

    .line 1135
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 1137
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_2

    .line 1138
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1140
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 1141
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v3, v5

    invoke-virtual {v0, v6, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1143
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v3, v0}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1144
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_b

    .line 1147
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isScrolling:Z

    .line 1148
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeDisallowed:Z

    .line 1149
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isScrolling:Z

    .line 1151
    iget-boolean v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->fullsize:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowFullSizeSwipe:Z

    if-nez v5, :cond_4

    goto/16 :goto_1

    .line 1153
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->flingInProgress:Z

    if-eqz v5, :cond_5

    .line 1154
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->flingInProgress:Z

    goto/16 :goto_1

    .line 1155
    :cond_5
    iget-boolean v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowSwipes:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->shouldWaitWebViewScroll:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    iget v6, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    neg-float v6, v6

    iget v7, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_b

    invoke-virtual {p0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowingScroll(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1156
    :cond_6
    iget v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    iget v6, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeStickyRange:I

    neg-int v7, v6

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_7

    .line 1157
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickToEdges:Z

    if-eqz v0, :cond_b

    .line 1158
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    neg-float v0, v0

    iget v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    goto :goto_1

    :cond_7
    neg-int v7, v6

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_8

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_8

    .line 1161
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickToEdges:Z

    if-eqz v0, :cond_b

    .line 1162
    invoke-virtual {p0, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    goto :goto_1

    .line 1165
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pressDownX:F

    iget v7, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pressDownY:F

    invoke-static {v2, v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->distance(FFFF)F

    move-result v2

    .line 1166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pressDownTime:J

    sub-long/2addr v5, v7

    .line 1167
    iget-object v7, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->delegate:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;

    if-eqz v7, :cond_a

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_9

    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 1168
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->delegate:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;

    xor-int/2addr v0, v4

    invoke-interface {v2, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;->onDismiss(Z)V

    goto :goto_1

    .line 1169
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickToEdges:Z

    if-eqz v0, :cond_b

    .line 1170
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    neg-float v0, v0

    iget v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    .line 1176
    :cond_b
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v3, :cond_c

    .line 1177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_c

    return v4

    :cond_c
    if-nez v0, :cond_e

    if-eqz v3, :cond_d

    goto :goto_2

    :cond_d
    return v1

    :cond_e
    :goto_2
    return v4
.end method

.method public getOffsetY()F
    .locals 1

    .line 1082
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    return v0
.end method

.method public getRenderNode()Ljava/lang/Object;
    .locals 2

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->renderNode:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 740
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 741
    const-string v0, "WebViewSwipeContainer"

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->renderNode:Ljava/lang/Object;

    .line 744
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->renderNode:Ljava/lang/Object;

    return-object v0
.end method

.method public getSwipeOffsetY()F
    .locals 1

    .line 1086
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    return v0
.end method

.method public getTopActionBarOffsetY()F
    .locals 1

    .line 1078
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    return v0
.end method

.method public invalidateTranslation()V
    .locals 3

    .line 1059
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    iget v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTranslationY(F)V

    .line 1060
    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1061
    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1063
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1066
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1067
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    :cond_1
    return-void
.end method

.method public isAllowedSwipes()Z
    .locals 1

    .line 827
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowSwipes:Z

    return v0
.end method

.method public isFullSize()Z
    .locals 1

    .line 812
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->fullsize:Z

    return v0
.end method

.method public isSwipeInProgress()Z
    .locals 1

    .line 1251
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isScrolling:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 942
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 943
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->updateStickyRange()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 952
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 955
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeDisallowed:Z

    const/4 p1, 0x0

    .line 956
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isScrolling:Z

    :cond_0
    return-void
.end method

.method public setAllowFullSizeSwipe(Z)V
    .locals 0

    .line 817
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowFullSizeSwipe:Z

    return-void
.end method

.method public setAllowSwipes(Z)V
    .locals 1

    .line 822
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowSwipes:Z

    if-eq v0, p1, :cond_0

    .line 823
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowSwipes:Z

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->delegate:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;

    return-void
.end method

.method public setForceOffsetY(F)V
    .locals 0

    .line 987
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    .line 988
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    return-void
.end method

.method public setFullSize(Z)V
    .locals 1

    .line 799
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->fullsize:Z

    if-eq v0, p1, :cond_1

    .line 800
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->fullsize:Z

    if-eqz p1, :cond_0

    .line 802
    iget-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->opened:Z

    if-eqz p1, :cond_1

    .line 803
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 806
    invoke-virtual {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_1
    return-void
.end method

.method public setIsKeyboardVisible(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 937
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isKeyboardVisible:Lorg/telegram/messenger/GenericProvider;

    return-void
.end method

.method public setOffsetY(F)V
    .locals 7

    .line 992
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingSwipeOffsetY:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 993
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingOffsetY:F

    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    .line 998
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1001
    :cond_1
    iget v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    sub-float v3, p1, v4

    .line 1003
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    add-float/2addr v0, v4

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1004
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeOffsetAnimationDisallowed:Z

    if-nez v0, :cond_4

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_3

    .line 1006
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1008
    :cond_3
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v2, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v6, 0x44af0000    # 1400.0f

    .line 1010
    invoke-virtual {v2, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 1011
    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1009
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;FFZF)V

    .line 1012
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v6}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;F)V

    .line 1029
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1039
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_4
    move-object v2, p0

    move v6, p1

    .line 1041
    iput v6, v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    if-eqz v5, :cond_5

    .line 1044
    iget p1, v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    const/4 v0, 0x0

    .line 1045
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    neg-float v0, v0

    iget v1, v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr v0, v1

    .line 1047
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    sub-float/2addr v1, v3

    iget v3, v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr v1, v3

    .line 1044
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    .line 1050
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    return-void
.end method

.method public setScrollEndListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollEndListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setScrollListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 965
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setShouldWaitWebViewScroll(Z)V
    .locals 0

    .line 833
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->shouldWaitWebViewScroll:Z

    return-void
.end method

.method public setSwipeOffsetAnimationDisallowed(Z)V
    .locals 0

    .line 961
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeOffsetAnimationDisallowed:Z

    return-void
.end method

.method public setSwipeOffsetY(F)V
    .locals 0

    .line 982
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    .line 983
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    return-void
.end method

.method public setTopActionBarOffsetY(F)V
    .locals 0

    .line 977
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    .line 978
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1074
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public setWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-void
.end method

.method public stickTo(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1185
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(FLjava/lang/Runnable;)V

    return-void
.end method

.method public stickTo(FLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1198
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(FZLjava/lang/Runnable;)V

    return-void
.end method

.method public stickTo(FZLjava/lang/Runnable;)V
    .locals 1

    .line 1201
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->fullsize:Z

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 1202
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result p2

    add-float/2addr p1, p2

    .line 1204
    :cond_1
    iget p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->swipeOffsetY:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result p2

    cmpl-float p2, p2, p1

    if-nez p2, :cond_2

    goto :goto_0

    .line 1213
    :cond_2
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->pendingSwipeOffsetY:F

    .line 1215
    iget-object p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_3

    .line 1216
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1218
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_4

    .line 1219
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1221
    :cond_4
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->SWIPE_OFFSET_Y:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    invoke-direct {p2, p0, v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p1, 0x44960000    # 1200.0f

    .line 1223
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1224
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 1222
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;Ljava/lang/Runnable;)V

    .line 1225
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1247
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    .line 1206
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1208
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->scrollEndListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 1209
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method
