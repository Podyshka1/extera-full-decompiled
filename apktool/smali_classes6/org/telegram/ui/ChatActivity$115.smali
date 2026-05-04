.class Lorg/telegram/ui/ChatActivity$115;
.super Lorg/telegram/ui/MessageAuthorView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;ZZFFZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 31106
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$115;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/MessageAuthorView;-><init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method


# virtual methods
.method protected openUser(J)V
    .locals 4

    .line 31109
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$115;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcloseMenu(Lorg/telegram/ui/ChatActivity;Z)V

    .line 31110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31111
    const-string v2, "user_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 31112
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$115;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-nez p1, :cond_0

    .line 31113
    const-string p1, "my_profile"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31115
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$115;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
