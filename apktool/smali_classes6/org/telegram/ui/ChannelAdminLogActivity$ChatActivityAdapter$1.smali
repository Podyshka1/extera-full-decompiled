.class Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;


# direct methods
.method public static synthetic $r8$lambda$PZYvPZY4gyx1ESPZavwi4ki_qRE(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->lambda$didPressUrl$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gPv5BnIYihm-o5uh74rTygcoy_Y(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->lambda$didLongPressUserAvatar$0(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)V
    .locals 0

    .line 2807
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$0(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 1

    .line 2899
    sget-object v0, Lorg/telegram/ui/ChannelAdminLogActivity$23;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    return-void

    .line 2904
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->openProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 2901
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private synthetic lambda$didPressUrl$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    if-nez p3, :cond_0

    .line 2988
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    if-ne p3, p2, :cond_3

    .line 2991
    const-string p2, "mailto:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    .line 2992
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2993
    :cond_1
    const-string p2, "tel:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 2994
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2996
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    :cond_3
    return-void
.end method

.method private openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 2925
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2926
    const-string v0, "user_id"

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2927
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2928
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    .line 2915
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2916
    const-string v1, "user_id"

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2917
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v0, v2, v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$maddCanBanUser(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/os/Bundle;J)V

    .line 2918
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 2919
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 2920
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method


# virtual methods
.method public canDrawOutboundsContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canPerformActions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic canPerformReply()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$canPerformReply(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public didLongPress(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 2940
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)Z

    return-void
.end method

.method public synthetic didLongPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    return-void
.end method

.method public synthetic didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z

    move-result p1

    return p1
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

    .line 2886
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p4, p4, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2000(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p4, v0, v2

    if-eqz p4, :cond_2

    .line 2887
    iget-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p4, p4, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

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

    .line 2889
    new-array p4, p4, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v0, p4, p3

    sget-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEND_MESSAGE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v1, 0x1

    aput-object v0, p4, v1

    .line 2890
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2893
    invoke-static {p2, v0, p4}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$UserFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object p4

    goto :goto_0

    .line 2895
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2100(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v0

    invoke-static {p2, v0, p4}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object p4

    .line 2897
    :goto_0
    invoke-static {p4}, Lorg/telegram/ui/AvatarPreviewer;->canPreview(Lorg/telegram/ui/AvatarPreviewer$Data;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2898
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

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

.method public synthetic didPressAnimatedEmoji(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressAnimatedEmoji(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z

    move-result p1

    return p1
.end method

.method public synthetic didPressBoostCounter(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressBoostCounter(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 2

    .line 3160
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 3161
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetexpandedEvents(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashSet;

    move-result-object p2

    iget-wide v0, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3162
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetexpandedEvents(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashSet;

    move-result-object p2

    iget-wide v0, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3164
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetexpandedEvents(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashSet;

    move-result-object p2

    iget-wide v0, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3166
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->saveScrollPosition(Z)V

    .line 3167
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mfilterDeletedMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 3168
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public didPressCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    return-void
.end method

.method public didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFFZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 2860
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eq p2, p1, :cond_1

    .line 2861
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2862
    const-string p4, "chat_id"

    iget-wide p5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, p4, p5, p6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p3, :cond_0

    .line 2864
    const-string p2, "message_id"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2866
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1800(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2867
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

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

.method public synthetic didPressCodeCopy(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressCodeCopy(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)V

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

    .line 3052
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 3053
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3054
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert;

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v4, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Z)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 3055
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

    .line 3058
    :cond_2
    iget p1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-ne p1, p3, :cond_7

    .line 3061
    :try_start_0
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    .line 3062
    new-instance p4, Ljava/io/File;

    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 3064
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3065
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p4

    .line 3067
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3068
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x18

    const-string v2, "video/mp4"

    if-lt p3, v0, :cond_6

    .line 3069
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3070
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

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

    .line 3072
    :cond_6
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3074
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 3076
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$malertUserOpenError(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_3

    :cond_7
    const/4 p3, 0x4

    const/4 v0, 0x0

    if-ne p1, p3, :cond_9

    .line 3079
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_3

    .line 3082
    :cond_8
    new-instance p1, Lorg/telegram/ui/LocationActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 3083
    invoke-virtual {p1, v1}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 3084
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_9
    const/16 p3, 0x9

    if-eq p1, p3, :cond_a

    if-nez p1, :cond_12

    .line 3086
    :cond_a
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p3, "attheme"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3088
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_b

    .line 3089
    new-instance p1, Ljava/io/File;

    iget-object p3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3090
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_1

    :cond_b
    move-object p1, p4

    :goto_1
    if-nez p1, :cond_c

    .line 3095
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p3

    .line 3096
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object p1, p3

    .line 3100
    :cond_c
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    const/4 v2, -0x1

    if-eqz p3, :cond_f

    .line 3101
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    .line 3102
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, p2

    if-ge p3, v3, :cond_e

    .line 3103
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-static {p3, v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrollToPositionOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;I)V

    .line 3104
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetscrollToPositionOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p3, :cond_d

    .line 3106
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-static {v3, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrollToOffsetOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;I)V

    goto :goto_2

    .line 3108
    :cond_d
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrollToPositionOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;I)V

    goto :goto_2

    .line 3111
    :cond_e
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrollToPositionOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;I)V

    .line 3114
    :cond_f
    :goto_2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p4, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 3116
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance p3, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 3119
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputscrollToPositionOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;I)V

    .line 3123
    :cond_11
    :try_start_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {v1, p1, p4, v0}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 3125
    :catch_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$malertUserOpenError(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/messenger/MessageObject;)V

    :cond_12
    :goto_3
    return-void

    .line 3056
    :cond_13
    :goto_4
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3057
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetprovider(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v9

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void
.end method

.method public didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 4

    .line 3132
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 3133
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;

    if-eqz v0, :cond_1

    .line 3134
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3135
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    neg-long v0, v0

    const-string v2, "chat_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3136
    const-string v0, "message_id"

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3137
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 3138
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3139
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2700(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x1

    invoke-static {p2, p1, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 3141
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_1
    if-nez p2, :cond_3

    .line 3143
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz p2, :cond_5

    .line 3144
    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tryReopenTab(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 3147
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->createArticleViewer(Z)Lorg/telegram/ui/ArticleViewer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 3150
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

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

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->openVCard(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3152
    :cond_4
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p2, :cond_5

    .line 3153
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_0
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

    .line 2874
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)Z

    return-void
.end method

.method public synthetic didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    return-void
.end method

.method public didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V
    .locals 1

    .line 3028
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 3029
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3030
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide p2

    iget-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p4, p4, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p4, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p4, p4

    cmp-long p2, p2, p4

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 3031
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 3032
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_0

    .line 3033
    iget p4, p3, Lorg/telegram/messenger/MessageObject;->contentType:I

    const/4 p5, 0x1

    if-eq p4, p5, :cond_0

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v0

    if-ne p4, v0, :cond_0

    .line 3034
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToMessage(Lorg/telegram/messenger/MessageObject;Z)V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3039
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3040
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p5, "chat_id"

    invoke-virtual {p2, p5, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3041
    const-string p3, "message_id"

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3042
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

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

    .line 2840
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2843
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->-$$Nest$fgetmContext(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

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
    .locals 6

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 2953
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 2954
    instance-of v0, p2, Lorg/telegram/ui/Components/URLSpanMono;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2955
    check-cast p2, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/URLSpanMono;->copyToClipboard()V

    .line 2956
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2957
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "TextCopied"

    sget p3, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2959
    :cond_1
    instance-of v0, p2, Lorg/telegram/ui/Components/URLSpanUserMention;

    if-eqz v0, :cond_3

    .line 2960
    check-cast p2, Lorg/telegram/ui/Components/URLSpanUserMention;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 2962
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2200(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2964
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2300(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v3, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    return-void

    .line 2967
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2400(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    neg-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2969
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2500(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v3, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    return-void

    .line 2972
    :cond_3
    instance-of v0, p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 2973
    check-cast p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 2974
    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2975
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2600(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2, p1, p3, v1}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    return-void

    .line 2976
    :cond_4
    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 2977
    new-instance p2, Lorg/telegram/ui/DialogsActivity;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 2978
    invoke-virtual {p2, p1}, Lorg/telegram/ui/DialogsActivity;->setSearchString(Ljava/lang/String;)V

    .line 2979
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 2982
    :cond_5
    move-object v0, p2

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_6

    .line 2984
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 2985
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2986
    const-string p2, "Open"

    sget p3, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Copy"

    sget v3, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {p3, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object p2, v3, v1

    aput-object p3, v3, v2

    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;Ljava/lang/String;)V

    invoke-virtual {p1, v3, p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2999
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 3001
    :cond_6
    instance-of p3, p2, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz p3, :cond_7

    .line 3002
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    check-cast p2, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    return-void

    .line 3004
    :cond_7
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz p3, :cond_c

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p2, :cond_c

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz p2, :cond_c

    .line 3005
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 3006
    iget-object p3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 3007
    invoke-static {p2, v1}, Lorg/telegram/messenger/browser/Browser;->isTelegraphUrl(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "t.me/iv"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_8
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 3008
    :cond_9
    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object p2

    if-eqz p2, :cond_b

    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tryReopenTab(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object p2

    if-eqz p2, :cond_b

    :cond_a
    :goto_0
    return-void

    .line 3011
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createArticleViewer(Z)Lorg/telegram/ui/ArticleViewer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 3015
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2879
    iget-wide p3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1900(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p1, p3, v0

    if-eqz p1, :cond_0

    .line 2880
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->openProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    :cond_0
    return-void
.end method

.method public synthetic didPressUserStatus(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressUserStatus(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V

    return-void
.end method

.method public didPressViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 0

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

.method public synthetic doNotShowLoadingReply(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$doNotShowLoadingReply(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1
.end method

.method public synthetic forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

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

    .line 3023
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetprovider(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

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

    .line 2848
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2852
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2853
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;J)Z

    move-result p1

    return p1

    :cond_1
    return v0

    .line 2849
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result p1

    .line 2850
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
