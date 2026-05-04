.class Lorg/telegram/ui/Components/FragmentContextView$7;
.super Lorg/telegram/ui/Components/RLottieImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final pressRunnable:Ljava/lang/Runnable;

.field pressed:Z

.field scheduled:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;

.field private final toggleMicRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$S_NoiRFXu4mQL_zlOp3w_4Xw13c(Lorg/telegram/ui/Components/FragmentContextView$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView$7;->lambda$$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XypYe9DH5WZu54q4dwK0QouejM4(Lorg/telegram/ui/Components/FragmentContextView$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView$7;->lambda$$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 572
    new-instance p1, Lorg/telegram/ui/Components/FragmentContextView$7$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FragmentContextView$7$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FragmentContextView$7;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->toggleMicRunnable:Ljava/lang/Runnable;

    .line 590
    new-instance p1, Lorg/telegram/ui/Components/FragmentContextView$7$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FragmentContextView$7$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FragmentContextView$7;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->pressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$$0()V
    .locals 4

    .line 573
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteDrawable(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetisMuted(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xf

    goto :goto_0

    :cond_1
    const/16 v3, 0x1d

    :goto_0
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetisMuted(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteDrawable(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_1

    .line 581
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteDrawable(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 584
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 586
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    return-void
.end method

.method private synthetic lambda$$1()V
    .locals 3

    .line 591
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->scheduled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->scheduled:Z

    const/4 v1, 0x1

    .line 595
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->pressed:Z

    .line 596
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputisMuted(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->toggleMicRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5a

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 600
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 656
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 657
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetisMuted(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->VoipUnmute:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->VoipMute:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcurrentStyle(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcurrentStyle(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 608
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->pressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->toggleMicRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 612
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->scheduled:Z

    .line 613
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->pressed:Z

    return v1

    .line 616
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->pressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 618
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->scheduled:Z

    goto/16 :goto_2

    .line 619
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 620
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->toggleMicRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 621
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->scheduled:Z

    if-eqz v0, :cond_5

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->pressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 623
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->scheduled:Z

    goto :goto_2

    .line 624
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->pressed:Z

    if-eqz v0, :cond_9

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputisMuted(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteDrawable(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetisMuted(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteDrawable(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_1

    .line 630
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteDrawable(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 633
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 634
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 635
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v3}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 637
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :catch_0
    :cond_8
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView$7;->pressed:Z

    .line 641
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 642
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 643
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1

    .line 648
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
