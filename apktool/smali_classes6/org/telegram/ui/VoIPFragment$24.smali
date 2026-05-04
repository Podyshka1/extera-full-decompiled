.class Lorg/telegram/ui/VoIPFragment$24;
.super Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;FF)V
    .locals 0

    .line 2892
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;-><init>(Landroid/content/Context;FF)V

    return-void
.end method


# virtual methods
.method protected afterOpened()V
    .locals 2

    .line 2919
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetgradientLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lockDrawing:Z

    .line 2920
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetgradientLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected beforeClosed()V
    .locals 2

    .line 2925
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetgradientLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lockDrawing:Z

    .line 2926
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetgradientLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected getFloatingViewLocation()[I
    .locals 3

    const/4 v0, 0x2

    .line 2931
    new-array v0, v0, [I

    .line 2933
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcurrentUserCameraFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 2934
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 2935
    aget v0, v0, v2

    .line 2936
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v2}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcurrentUserCameraFloatingLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    filled-new-array {v1, v0, v2}, [I

    move-result-object v0

    return-object v0
.end method

.method protected isHasVideoOnMainScreen()Z
    .locals 1

    .line 2942
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget-boolean v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    return v0
.end method

.method public onDismiss(ZZ)V
    .locals 3

    .line 2895
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fputpreviewDialog(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    .line 2896
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    .line 2897
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetwindowView(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPWindowView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    if-eqz p2, :cond_1

    .line 2899
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2901
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    const/4 p1, 0x2

    .line 2902
    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2903
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchToSpeaker()V

    :cond_0
    if-eqz v0, :cond_2

    .line 2906
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetbottomVideoBtn(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    move-result-object p2

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$msetVideoAction(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 2910
    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2913
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcurrentState(Lorg/telegram/ui/VoIPFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fputpreviousState(Lorg/telegram/ui/VoIPFragment;I)V

    .line 2914
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$24;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$mupdateViewState(Lorg/telegram/ui/VoIPFragment;)V

    return-void
.end method
