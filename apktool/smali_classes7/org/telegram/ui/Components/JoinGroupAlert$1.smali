.class Lorg/telegram/ui/Components/JoinGroupAlert$1;
.super Lorg/telegram/ui/ChatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/JoinGroupAlert;->openChat(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private shownToast:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

.field final synthetic val$chatId:J

.field final synthetic val$showJoined:Z


# direct methods
.method public static synthetic $r8$lambda$5TOeQmOYh7QQCaPfFpeVdtT6WFM(Lorg/telegram/ui/Components/JoinGroupAlert$1;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinGroupAlert$1;->lambda$onBecomeFullyVisible$0(JLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/os/Bundle;ZJ)V
    .locals 0

    .line 402
    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->val$showJoined:Z

    iput-wide p4, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->val$chatId:J

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 403
    iput-boolean p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->shownToast:Z

    return-void
.end method

.method private synthetic lambda$onBecomeFullyVisible$0(JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 10

    .line 413
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isContextSafe(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    neg-long v3, p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v8, p3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/TagEditCell;->showSheet(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onBecomeFullyVisible()V
    .locals 10

    .line 406
    invoke-super {p0}, Lorg/telegram/ui/ChatActivity;->onBecomeFullyVisible()V

    .line 407
    iget-boolean v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->shownToast:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->val$showJoined:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->shownToast:Z

    .line 409
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->val$chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 410
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageMyTag(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 411
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v5, Lorg/telegram/messenger/R$string;->JoinedGroup:I

    .line 412
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->JoinedGroupAddTag:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->val$chatId:J

    new-instance v9, Lorg/telegram/ui/Components/JoinGroupAlert$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v7, v8, v1}, Lorg/telegram/ui/Components/JoinGroupAlert$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert$1;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v2, v4, v5, v6, v9}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 416
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 417
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 419
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v4, Lorg/telegram/messenger/R$string;->JoinedGroup:I

    .line 420
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 421
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 422
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method
