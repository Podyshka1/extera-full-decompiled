.class Lorg/telegram/ui/LaunchActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .locals 2

    .line 849
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->onBackPressed()V

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 855
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_2

    .line 856
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackInvoked()V

    return-void

    .line 858
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->onBackPressed()V

    return-void
.end method
