.class Lorg/telegram/ui/LaunchActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$MessagesLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->runLinkRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_wallPaper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;ZIZIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/Integer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$dialog_id:J

.field final synthetic val$dismissLoading:Ljava/lang/Runnable;

.field final synthetic val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$livestream:Ljava/lang/String;

.field final synthetic val$messageId:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$0UF0ve8I9VYy5s8c0NRmh6PtSS0(Lorg/telegram/ui/LaunchActivity$16;Ljava/lang/String;JLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity$16;->lambda$onMessagesLoaded$2(Ljava/lang/String;JLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6ngeavYDjrTfmzA8-S4zuP_ldw4(Lorg/telegram/ui/LaunchActivity$16;Lorg/telegram/messenger/AccountInstance;JLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity$16;->lambda$onMessagesLoaded$0(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7WoEuvkUnavtWMXwRn7AIn4BQpc(Lorg/telegram/ui/LaunchActivity$16;Lorg/telegram/messenger/AccountInstance;JLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity$16;->lambda$onMessagesLoaded$1(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0

    .line 4911
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$16;->val$dismissLoading:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$16;->val$livestream:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$16;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-wide p5, p0, Lorg/telegram/ui/LaunchActivity$16;->val$dialog_id:J

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$16;->val$messageId:Ljava/lang/Integer;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$16;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onMessagesLoaded$0(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 15

    move-wide/from16 v0, p2

    .line 4961
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v2

    .line 4962
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    if-eqz v2, :cond_0

    iget-object v0, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/LaunchActivity$16;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v14, p1

    move-object/from16 v13, p4

    invoke-static/range {v7 .. v14}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLjava/lang/Boolean;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    return-void
.end method

.method private synthetic lambda$onMessagesLoaded$1(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 6

    .line 4960
    new-instance v0, Lorg/telegram/ui/LaunchActivity$16$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LaunchActivity$16$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LaunchActivity$16;Lorg/telegram/messenger/AccountInstance;JLorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onMessagesLoaded$2(Ljava/lang/String;JLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 9

    if-eqz p1, :cond_2

    .line 4948
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget p1, p1, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    .line 4949
    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    neg-long v6, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v6, v7, v0}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    .line 4951
    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    xor-int/2addr p1, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$16;->this$0:Lorg/telegram/ui/LaunchActivity;

    move-object v7, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLjava/lang/Boolean;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    return-void

    :cond_0
    move-object v5, p4

    .line 4953
    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4955
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-nez p1, :cond_1

    .line 4956
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4957
    invoke-static {v5}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget p3, Lorg/telegram/messenger/R$string;->InviteExpired:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 4960
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/LaunchActivity$16$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LaunchActivity$16$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LaunchActivity$16;Lorg/telegram/messenger/AccountInstance;JLorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p1, v6, v7, v8, v0}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZLjava/lang/Runnable;)Lorg/telegram/messenger/ChatObject$Call;

    :cond_2
    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 4974
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$16;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4975
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$sfgetmainFragmentsStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$sfgetmainFragmentsStack()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 4976
    sget v1, Lorg/telegram/messenger/R$string;->JoinToGroupErrorNotExist:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    .line 4979
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$16;->val$dismissLoading:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4981
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onMessagesLoaded(Z)V
    .locals 7

    .line 4915
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->val$dismissLoading:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4917
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4919
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 4921
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->val$livestream:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/LaunchActivity$16;->val$dialog_id:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_2

    .line 4943
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    :goto_1
    move-object v6, p1

    goto :goto_5

    .line 4922
    :cond_1
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/LaunchActivity$16;->val$dialog_id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->val$messageId:Ljava/lang/Integer;

    if-nez p1, :cond_4

    .line 4923
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    .line 4924
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getChatListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 4925
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 4926
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 4928
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 4929
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4930
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4932
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    .line 4933
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 4934
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4936
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$16;->val$lastFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    .line 4938
    :cond_4
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$16;->val$args:Landroid/os/Bundle;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 4939
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$16;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    .line 4946
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$16;->val$livestream:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/ui/LaunchActivity$16;->val$dialog_id:J

    new-instance v1, Lorg/telegram/ui/LaunchActivity$16$$ExternalSyntheticLambda0;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/LaunchActivity$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity$16;Ljava/lang/String;JLorg/telegram/ui/ActionBar/BaseFragment;)V

    const-wide/16 v2, 0x96

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    return-void
.end method
