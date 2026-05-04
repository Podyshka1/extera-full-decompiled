.class Lorg/telegram/ui/ChatActivity$37$1;
.super Lorg/telegram/ui/ChatActivityContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$37;->createView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field activityCreated:Z

.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$37;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$37;Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/os/Bundle;)V
    .locals 0

    .line 7832
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$37$1;->this$1:Lorg/telegram/ui/ChatActivity$37;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ChatActivityContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 7833
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$37$1;->activityCreated:Z

    return-void
.end method


# virtual methods
.method protected initChatActivity()V
    .locals 1

    .line 7837
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$37$1;->activityCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7838
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$37$1;->activityCreated:Z

    .line 7839
    invoke-super {p0}, Lorg/telegram/ui/ChatActivityContainer;->initChatActivity()V

    :cond_0
    return-void
.end method
