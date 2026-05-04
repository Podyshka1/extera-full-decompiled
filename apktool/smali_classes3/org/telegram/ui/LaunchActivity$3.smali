.class Lorg/telegram/ui/LaunchActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/pip/activity/IPipActivityListener;


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

    .line 481
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteEnterToPip()V
    .locals 2

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic onCompleteExitFromPip(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/activity/IPipActivityListener$-CC;->$default$onCompleteExitFromPip(Lorg/telegram/messenger/pip/activity/IPipActivityListener;Z)V

    return-void
.end method

.method public synthetic onStartEnterToPip()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/pip/activity/IPipActivityListener$-CC;->$default$onStartEnterToPip(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V

    return-void
.end method

.method public onStartExitFromPip(Z)V
    .locals 1

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
