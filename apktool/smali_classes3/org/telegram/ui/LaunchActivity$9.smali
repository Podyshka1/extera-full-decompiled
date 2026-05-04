.class Lorg/telegram/ui/LaunchActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private drawerPredictiveBackStarted:Z

.field private invoked:Z

.field private predictiveBackStarted:Z

.field private started:Z

.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 757
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$9;->started:Z

    .line 758
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$9;->invoked:Z

    .line 759
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$9;->drawerPredictiveBackStarted:Z

    return-void
.end method

.method private onBackStartedInternal(Landroid/window/BackEvent;)V
    .locals 2

    .line 789
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 791
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 792
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/drawer/DrawerContainer;->startPredictiveBack()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 793
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$9;->drawerPredictiveBackStarted:Z

    return-void

    .line 796
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_3

    .line 797
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackStarted(FF)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 2

    const/4 v0, 0x0

    .line 827
    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$9;->started:Z

    .line 828
    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$9;->invoked:Z

    .line 830
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 831
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/LaunchActivity$9;->drawerPredictiveBackStarted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->cancelPredictiveBack()V

    .line 833
    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$9;->drawerPredictiveBackStarted:Z

    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_2

    .line 835
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackCancelled()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackInvoked()V
    .locals 2

    const/4 v0, 0x1

    .line 763
    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$9;->invoked:Z

    .line 765
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->onBackPressed()V

    return-void

    .line 769
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/LaunchActivity;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 771
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$9;->drawerPredictiveBackStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/drawer/DrawerContainer;->commitPredictiveBack()V

    return-void

    .line 773
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_3

    .line 774
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackInvoked()V

    return-void

    .line 776
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->onBackPressed()V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 3

    .line 807
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$9;->started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$9;->invoked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    .line 810
    iget-boolean v1, p0, Lorg/telegram/ui/LaunchActivity$9;->predictiveBackStarted:Z

    const v2, 0x3c75c28f    # 0.015f

    if-nez v1, :cond_1

    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 811
    iput-boolean v1, p0, Lorg/telegram/ui/LaunchActivity$9;->predictiveBackStarted:Z

    .line 812
    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity$9;->onBackStartedInternal(Landroid/window/BackEvent;)V

    :cond_1
    const/4 p1, 0x0

    sub-float/2addr v0, v2

    .line 815
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v0, 0x3f7c28f6    # 0.985f

    div-float/2addr p1, v0

    .line 817
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 818
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$9;->drawerPredictiveBackStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 819
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerContainer()Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->updatePredictiveBackProgress(F)V

    return-void

    .line 820
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_4

    .line 821
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackProgress(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 782
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$9;->started:Z

    const/4 p1, 0x0

    .line 783
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$9;->invoked:Z

    .line 784
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$9;->predictiveBackStarted:Z

    .line 785
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$9;->drawerPredictiveBackStarted:Z

    return-void
.end method
