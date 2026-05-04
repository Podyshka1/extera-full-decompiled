.class Lorg/telegram/ui/ChatActivity$96;
.super Lorg/telegram/ui/Components/GigagroupConvertAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showGigagroupConvertAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$KE8p8MoF6Y9SMrnteYJ1VDDriLQ(Lorg/telegram/ui/ChatActivity$96;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$96;->lambda$onCovert$0(Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 25034
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/GigagroupConvertAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$onCovert$0(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 25039
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateUndoView(Lorg/telegram/ui/ChatActivity;)V

    .line 25040
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 25043
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const/16 v0, 0x4c

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 5

    .line 25050
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateUndoView(Lorg/telegram/ui/ChatActivity;)V

    .line 25051
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 25054
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const/16 v1, 0x4b

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    .line 25055
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    const-string v3, "CONVERT_GIGAGROUP"

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    return-void
.end method

.method protected onCovert()V
    .locals 5

    .line 25037
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v4, Lorg/telegram/ui/ChatActivity$96$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatActivity$96$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$96;)V

    invoke-virtual {v0, v1, v3, v2, v4}, Lorg/telegram/messenger/MessagesController;->convertToGigaGroup(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    return-void
.end method
