.class Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;


# direct methods
.method public static synthetic $r8$lambda$Y9dL4DwOfXRYLyW6llZwknbYQUw(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->lambda$didPressUrl$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YIwtadjIDb6ZG1A6bvNzTlwcUek(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->lambda$didLongPressCopyButton$3(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_3BWyWAipFQJIQuWAYnIE53nXxQ(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->lambda$didLongPressBotButton$2(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vztG8_418NVINPYO0rg_2cIfWe4(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->lambda$didLongPressUserAvatar$0(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V

    return-void
.end method

.method constructor <init>(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;)V
    .locals 0

    .line 2141
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didLongPressBotButton$2(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p3, :cond_0

    .line 2505
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 2507
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-virtual {p2, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getTextFromCallback([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 2509
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p3, p2, :cond_3

    .line 2511
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->query:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    if-ne p3, p2, :cond_4

    .line 2513
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 2516
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetundoView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2517
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetundoView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const/16 p2, 0x3a

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$didLongPressCopyButton$3(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 2534
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 2535
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->ExactTextCopied:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$0(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 1

    .line 2236
    sget-object v0, Lcom/exteragram/messenger/export/ui/ChatViewer$15;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    return-void

    .line 2241
    :cond_0
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->openProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 2238
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private synthetic lambda$didPressUrl$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    if-nez p3, :cond_0

    .line 2324
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    if-ne p3, p2, :cond_3

    .line 2327
    const-string p2, "mailto:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    .line 2328
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2329
    :cond_1
    const-string p2, "tel:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 2330
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2332
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    :cond_3
    return-void
.end method

.method private openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 2261
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2262
    const-string v0, "user_id"

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2263
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2264
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    .line 2252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2253
    const-string v1, "user_id"

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2254
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 2255
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 2256
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method


# virtual methods
.method public synthetic canDrawOutboundsContent()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$canDrawOutboundsContent(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public canPerformActions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canPerformReply()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public didLongPress(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 2276
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p2, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$mcreateMenu(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/view/View;)Z

    return-void
.end method

.method public didLongPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 11

    .line 2481
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonWebView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2490
    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;

    if-eqz v0, :cond_1

    .line 2491
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;->copy_text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->didLongPressCopyButton(Ljava/lang/String;)V

    return-void

    .line 2495
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v1, v1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v2, v2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgettheme(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2496
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2497
    sget v1, Lorg/telegram/messenger/R$string;->CopyTitle:I

    .line 2498
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2499
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->CopyCallback:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 2500
    :goto_0
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    sget v5, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 2501
    :goto_1
    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->query:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget v6, Lorg/telegram/messenger/R$string;->CopyInlineQuery:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v4

    .line 2502
    :goto_2
    iget-wide v7, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->user_id:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    sget v4, Lorg/telegram/messenger/R$string;->CopyID:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v1, v7, v3

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v2, 0x2

    aput-object v5, v7, v2

    const/4 v2, 0x3

    aput-object v6, v7, v2

    const/4 v2, 0x4

    aput-object v4, v7, v2

    new-instance v2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    .line 2497
    invoke-virtual {v0, v7, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2521
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2524
    :try_start_0
    invoke-static {v3}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_3
    return-void
.end method

.method public synthetic didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z

    move-result p1

    return p1
.end method

.method public didLongPressCopyButton(Ljava/lang/String;)V
    .locals 4

    .line 2530
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v1, v1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v2, v2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgettheme(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2531
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v1, 0x1

    .line 2532
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitleMultipleLines(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2533
    sget v2, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    new-instance v2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2537
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public synthetic didLongPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V

    return-void
.end method

.method public synthetic didLongPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;)Z

    move-result p1

    return p1
.end method

.method public didLongPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)Z
    .locals 4

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 2223
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object p4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p4, p4, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p4}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$1900(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p4, v0, v2

    if-eqz p4, :cond_2

    .line 2224
    iget-object p4, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p4, p4, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p4

    if-eqz p4, :cond_0

    move-object p2, p4

    :cond_0
    const/4 p4, 0x2

    .line 2226
    new-array p4, p4, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v0, p4, p3

    sget-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEND_MESSAGE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v1, 0x1

    aput-object v0, p4, v1

    .line 2227
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2230
    invoke-static {p2, v0, p4}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$UserFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object p4

    goto :goto_0

    .line 2232
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2000(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result v0

    invoke-static {p2, v0, p4}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object p4

    .line 2234
    :goto_0
    invoke-static {p4}, Lorg/telegram/ui/AvatarPreviewer;->canPreview(Lorg/telegram/ui/AvatarPreviewer$Data;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2235
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object p3

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    new-instance v3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p3, v2, v0, p4, v3}, Lorg/telegram/ui/AvatarPreviewer;->show(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Data;Lorg/telegram/ui/AvatarPreviewer$Callback;)V

    return v1

    :cond_2
    return p3
.end method

.method public synthetic didPressAboutRevenueSharingAds()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressAboutRevenueSharingAds(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method

.method public synthetic didPressAdmin(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressAdmin(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressAnimatedEmoji(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z
    .locals 6

    .line 2462
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    iget-boolean p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2465
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v1

    .line 2466
    iget-object p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2600(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result p1

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 2468
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    .line 2470
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2471
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2472
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v3, v3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v5, v5, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v5}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgettheme(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v5

    invoke-direct {p2, v3, v4, v5, v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 2473
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->setPreviewEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2474
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetcontentView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result p1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le p1, v1, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 2475
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method public synthetic didPressBoostCounter(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressBoostCounter(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    return-void
.end method

.method public didPressCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    return-void
.end method

.method public didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFFZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 2197
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eq p2, p1, :cond_1

    .line 2198
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2199
    const-string p4, "chat_id"

    iget-wide p5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, p4, p5, p6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p3, :cond_0

    .line 2201
    const-string p2, "message_id"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2203
    :cond_0
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$1700(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2204
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_1
    return-void
.end method

.method public synthetic didPressChannelRecommendation(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressChannelRecommendation(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public synthetic didPressChannelRecommendationsClose(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressChannelRecommendationsClose(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressCodeCopy(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)V
    .locals 6

    if-eqz p2, :cond_1

    .line 2164
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2168
    :cond_0
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2169
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2170
    new-instance v0, Lorg/telegram/messenger/CodeHighlighting$Span;

    const/4 v3, 0x0

    iget-object v4, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->language:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/CodeHighlighting$Span;-><init>(ZILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2171
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 2172
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->CodeCopied:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V

    return-void
.end method

.method public synthetic didPressEffect(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressEffect(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressExtendedMediaPreview(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressExtendedMediaPreview(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    return-void
.end method

.method public synthetic didPressFactCheck(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressFactCheck(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressFactCheckWhat(Lorg/telegram/ui/Cells/ChatMessageCell;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressFactCheckWhat(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    return-void
.end method

.method public synthetic didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    return-void
.end method

.method public synthetic didPressGroupImage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;FF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressGroupImage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;FF)V

    return-void
.end method

.method public synthetic didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    return-void
.end method

.method public didPressImage(Lorg/telegram/ui/Cells/ChatMessageCell;FFZ)V
    .locals 10

    .line 2365
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 2366
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2367
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert;

    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v4, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Z)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 2368
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p1

    if-nez p1, :cond_13

    iget p1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_13

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isWebpageDocument()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_4

    .line 2371
    :cond_2
    iget p1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-ne p1, p3, :cond_7

    .line 2374
    :try_start_0
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2375
    new-instance p4, Ljava/io/File;

    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 2377
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2378
    :cond_4
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p4

    .line 2380
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2381
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x18

    const-string v2, "video/mp4"

    if-lt p3, v0, :cond_6

    .line 2382
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2383
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".provider"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2385
    :cond_6
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2387
    :goto_0
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 2389
    :catch_0
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$malertUserOpenError(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_3

    :cond_7
    const/4 p3, 0x4

    const/4 v0, 0x0

    if-ne p1, p3, :cond_9

    .line 2392
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_3

    .line 2395
    :cond_8
    new-instance p1, Lorg/telegram/ui/LocationActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 2396
    invoke-virtual {p1, v1}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 2397
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_9
    const/16 p3, 0x9

    if-eq p1, p3, :cond_a

    if-nez p1, :cond_12

    .line 2399
    :cond_a
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p3, "attheme"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2401
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_b

    .line 2402
    new-instance p1, Ljava/io/File;

    iget-object p3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_1

    :cond_b
    move-object p1, p4

    :goto_1
    if-nez p1, :cond_c

    .line 2408
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p3

    .line 2409
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object p1, p3

    .line 2413
    :cond_c
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetchatLayoutManager(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    const/4 v2, -0x1

    if-eqz p3, :cond_f

    .line 2414
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetchatLayoutManager(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    .line 2415
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v3, v3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetchatLayoutManager(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, p2

    if-ge p3, v3, :cond_e

    .line 2416
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetchatLayoutManager(Lcom/exteragram/messenger/export/ui/ChatViewer;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-static {p3, v3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fputscrollToPositionOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;I)V

    .line 2417
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetchatListView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v3, v3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetscrollToPositionOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p3, :cond_d

    .line 2419
    iget-object v3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v3, v3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-static {v3, p3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fputscrollToOffsetOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;I)V

    goto :goto_2

    .line 2421
    :cond_d
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p3, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fputscrollToPositionOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;I)V

    goto :goto_2

    .line 2424
    :cond_e
    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p3, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fputscrollToPositionOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;I)V

    .line 2427
    :cond_f
    :goto_2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p4, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 2429
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    new-instance p3, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 2432
    :cond_10
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1, v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fputscrollToPositionOnRecreate(Lcom/exteragram/messenger/export/ui/ChatViewer;I)V

    .line 2436
    :cond_11
    :try_start_2
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {v1, p1, p4, v0}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 2438
    :catch_1
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$malertUserOpenError(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/messenger/MessageObject;)V

    :cond_12
    :goto_3
    return-void

    .line 2369
    :cond_13
    :goto_4
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2370
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetprovider(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v9

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void
.end method

.method public didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 3

    .line 2445
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p2, :cond_0

    .line 2447
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz p2, :cond_2

    .line 2448
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v1, v1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2449
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 2452
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->openVCard(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2454
    :cond_1
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p2, :cond_2

    .line 2455
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic didPressMoreChannelRecommendations(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressMoreChannelRecommendations(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressOther(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 2211
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p2, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$mcreateMenu(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/view/View;)Z

    return-void
.end method

.method public synthetic didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    return-void
.end method

.method public synthetic didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V

    return-void
.end method

.method public synthetic didPressRevealSensitiveContent(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressRevealSensitiveContent(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 8

    .line 2177
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2180
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v1, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->-$$Nest$fgetmContext(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/ShareAlert;->createShareAlert(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)Lorg/telegram/ui/Components/ShareAlert;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public synthetic didPressSponsoredClose(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressSponsoredClose(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressSponsoredInfo(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressSponsoredInfo(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didPressSummarize(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressSummarize(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void
.end method

.method public synthetic didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;Z)Z

    move-result p1

    return p1
.end method

.method public didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V
    .locals 7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2289
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 2290
    instance-of v1, p2, Lorg/telegram/ui/Components/URLSpanMono;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2291
    check-cast p2, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/URLSpanMono;->copyToClipboard()V

    .line 2292
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 2293
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2295
    :cond_1
    instance-of v1, p2, Lorg/telegram/ui/Components/URLSpanUserMention;

    if-eqz v1, :cond_3

    .line 2296
    check-cast p2, Lorg/telegram/ui/Components/URLSpanUserMention;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 2298
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2100(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2300
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2200(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v4, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto/16 :goto_0

    .line 2303
    :cond_2
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2300(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2305
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2400(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v4, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto/16 :goto_0

    .line 2308
    :cond_3
    instance-of v1, p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 2309
    check-cast p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    .line 2310
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2311
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2500(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v1, v1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v0, p2, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto/16 :goto_0

    .line 2312
    :cond_4
    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2313
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 2314
    invoke-virtual {v0, p2}, Lorg/telegram/ui/DialogsActivity;->setSearchString(Ljava/lang/String;)V

    .line 2315
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 2318
    :cond_5
    move-object v1, p2

    check-cast v1, Landroid/text/style/URLSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_6

    .line 2320
    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 2321
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2322
    sget v0, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v0, v5, v2

    aput-object v4, v5, v3

    new-instance v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Ljava/lang/String;)V

    invoke-virtual {p2, v5, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2335
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 2337
    :cond_6
    instance-of v4, p2, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v4, :cond_7

    .line 2338
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    check-cast p2, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v3}, Lcom/exteragram/messenger/export/ui/ChatViewer;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2340
    :cond_7
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_a

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p2, :cond_a

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz p2, :cond_a

    .line 2341
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2342
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2343
    invoke-static {p2, v2}, Lorg/telegram/messenger/browser/Browser;->isTelegraphUrl(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "t.me/iv"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 2344
    :cond_9
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2345
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 2349
    :cond_a
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, v1, v3}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_b
    :goto_0
    if-eqz p3, :cond_c

    const/4 p2, -0x1

    .line 2354
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->resetPressedLink(I)V

    :cond_c
    :goto_1
    return-void
.end method

.method public didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2216
    iget-wide p3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$1800(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p1, p3, v0

    if-eqz p1, :cond_0

    .line 2217
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->openProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    :cond_0
    return-void
.end method

.method public synthetic didPressUserStatus(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressUserStatus(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic didPressViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressViaBot(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic didPressViaBotNotInline(Lorg/telegram/ui/Cells/ChatMessageCell;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressViaBotNotInline(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;J)V

    return-void
.end method

.method public synthetic didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V

    return-void
.end method

.method public synthetic didPressWebPage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressWebPage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic didQuickShareEnd(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didQuickShareEnd(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didQuickShareMove(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didQuickShareMove(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didQuickShareStart(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didQuickShareStart(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didStartVideoStream(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didStartVideoStream(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public doNotShowLoadingReply(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2155
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p2, 0x1

    .line 2158
    iput-boolean p2, p1, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 2159
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$mupdateMessageAnimatedInternal(Lcom/exteragram/messenger/export/ui/ChatViewer;Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method public synthetic forceUpdateNoAnimation(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$forceUpdateNoAnimation(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void
.end method

.method public synthetic getAdminRank(J)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$getAdminRank(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPinchToZoomHelper()Lorg/telegram/ui/PinchToZoomHelper;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$getPinchToZoomHelper(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getProgressLoadingBotButtonUrl(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$getProgressLoadingBotButtonUrl(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getProgressLoadingLink(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/style/CharacterStyle;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$getProgressLoadingLink(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/style/CharacterStyle;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getTextSelectionHelper()Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$getTextSelectionHelper(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasSelectedMessages()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$hasSelectedMessages(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic invalidateBlur()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$invalidateBlur(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method

.method public synthetic isAdmin(J)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isAdmin(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;J)Z

    move-result p1

    return p1
.end method

.method public synthetic isLandscape()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isLandscape(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isOwner(J)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isOwner(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;J)Z

    move-result p1

    return p1
.end method

.method public synthetic isProgressLoading(Lorg/telegram/ui/Cells/ChatMessageCell;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isProgressLoading(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)Z

    move-result p1

    return p1
.end method

.method public synthetic isReplyOrSelf()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isReplyOrSelf(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic keyboardIsOpened()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$keyboardIsOpened(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public needOpenWebView(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    .line 2360
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v1, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetprovider(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v3

    const/4 v10, 0x0

    move-object v2, p1

    move-object v7, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public needPlayMessage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 2

    .line 2185
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2189
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2190
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object p3, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    iget-object p3, p3, Lcom/exteragram/messenger/export/ui/ChatViewer;->messages:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;J)Z

    move-result p1

    return p1

    :cond_1
    return v0

    .line 2186
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result p1

    .line 2187
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/MediaController;->setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V

    return p1
.end method

.method public synthetic needReloadPolls()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$needReloadPolls(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method

.method public synthetic needShowPremiumBulletin(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$needShowPremiumBulletin(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;I)V

    return-void
.end method

.method public synthetic onAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$onAccessibilityAction(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public synthetic onDiceFinished()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$onDiceFinished(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method

.method public synthetic setShouldNotRepeatSticker(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$setShouldNotRepeatSticker(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public synthetic shouldDrawAvatarOnlineStatus(Lorg/telegram/ui/Cells/ChatMessageCell;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$shouldDrawAvatarOnlineStatus(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result p1

    return p1
.end method

.method public synthetic shouldDrawThreadProgress(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$shouldDrawThreadProgress(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic shouldRepeatSticker(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$shouldRepeatSticker(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1
.end method

.method public synthetic videoTimerReached()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$videoTimerReached(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method
