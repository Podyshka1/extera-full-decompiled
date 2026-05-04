.class Lcom/exteragram/messenger/drawer/DrawerContainer$6;
.super Lorg/telegram/ui/MainTabsActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/drawer/DrawerContainer;->showAccountPreview(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

.field final synthetic val$account:I


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/drawer/DrawerContainer;Landroid/os/Bundle;I)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$6;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    iput p3, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$6;->val$account:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/MainTabsActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onPreviewOpenAnimationEnd()V
    .locals 3

    .line 483
    invoke-super {p0}, Lorg/telegram/ui/MainTabsActivity;->onPreviewOpenAnimationEnd()V

    .line 484
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$6;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    invoke-static {v0}, Lcom/exteragram/messenger/drawer/DrawerContainer;->-$$Nest$mrestoreDrawerAbovePreview(Lcom/exteragram/messenger/drawer/DrawerContainer;)V

    .line 485
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$6;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->closeDrawer(Z)V

    .line 486
    iget v0, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$6;->val$account:I

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$6;->val$account:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    .line 475
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 477
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$6;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    invoke-static {p1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->-$$Nest$mrestoreDrawerAbovePreview(Lcom/exteragram/messenger/drawer/DrawerContainer;)V

    :cond_0
    return-void
.end method
