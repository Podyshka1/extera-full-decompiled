.class Lorg/telegram/ui/bots/BotWebViewSheet$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

.field final synthetic val$fromTranslationX:F

.field final synthetic val$fullscreen:Z

.field final synthetic val$topoffset:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;ZFF)V
    .locals 0

    .line 2277
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fullscreen:Z

    iput p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$topoffset:F

    iput p4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fromTranslationX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 2280
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fputfullscreenInProgress(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V

    .line 2281
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fullscreen:Z

    const/high16 v1, 0x41c00000    # 24.0f

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 2282
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    .line 2283
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    .line 2284
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$topoffset:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setForceOffsetY(F)V

    .line 2285
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$topoffset:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    .line 2286
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    goto :goto_0

    .line 2288
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setForceOffsetY(F)V

    .line 2289
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    .line 2290
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    .line 2292
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fullscreen:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    sub-float v1, v3, v1

    :goto_1
    invoke-static {p1, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fputfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;F)V

    .line 2293
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    sub-float/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2294
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 2295
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2296
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fullscreen:Z

    if-eqz p1, :cond_2

    .line 2297
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetactionBar(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2299
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    .line 2300
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fromTranslationX:F

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenTransitionProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2301
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2302
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetwindowView(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2303
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetwebViewContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortHeightOffset(F)V

    .line 2304
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetwebViewContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    .line 2305
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$mupdateDownloadBulletinArrow(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    return-void
.end method
