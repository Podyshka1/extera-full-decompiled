.class Lorg/telegram/ui/ChatActivity$79;
.super Lorg/telegram/ui/Components/ChatAttachAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 12779
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dismissInternal()V
    .locals 3

    .line 12782
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12783
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 12785
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 12786
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    return-void
.end method

.method public onDismissAnimationStart()V
    .locals 3

    .line 12791
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12792
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 12794
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12795
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 12797
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12798
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 12800
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$79;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    return-void
.end method
