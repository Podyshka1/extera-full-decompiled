.class Lorg/telegram/ui/ChatActivity$108;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;


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
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 30594
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 30597
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 30598
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setAutoDeleteHistory(II)V
    .locals 8

    .line 30604
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/MessagesController;->setDialogHistoryTTL(JI)V

    .line 30605
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 30606
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateUndoView(Lorg/telegram/ui/ChatActivity;)V

    .line 30607
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    return-void

    .line 30610
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p1, Lorg/telegram/ui/ChatActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v3, :cond_3

    iget p1, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic showGlobalAutoDeleteScreen()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback$-CC;->$default$showGlobalAutoDeleteScreen(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    return-void
.end method
