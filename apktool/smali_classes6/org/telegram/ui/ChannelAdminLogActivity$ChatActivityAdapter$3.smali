.class Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;


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
.method public static synthetic $r8$lambda$KFUidg5wJMEORoeKSNIEoqr9UEE(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;[ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->lambda$needOpenInviteLink$1(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;[ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iAWY9uUdcb63Tl7wSWObbtHydwM(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;[ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->lambda$needOpenInviteLink$2(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;[ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mAoA0w-n3p64I9j01S9HRaeUV38(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->lambda$needOpenInviteLink$0([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)V
    .locals 0

    .line 3182
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$needOpenInviteLink$0([ZLandroid/content/DialogInterface;)V
    .locals 1

    .line 3238
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputlinviteLoading(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    const/4 p2, 0x1

    .line 3239
    aput-boolean p2, p1, v0

    return-void
.end method

.method private synthetic lambda$needOpenInviteLink$1(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;[ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 3

    .line 3258
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputlinviteLoading(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 3259
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetinvitesCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3260
    aget-boolean p1, p3, v1

    if-eqz p1, :cond_1

    return-void

    .line 3263
    :cond_1
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-eqz p2, :cond_2

    .line 3265
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetusersMap(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mshowInviteLinkBottomSheet(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;Ljava/util/HashMap;)V

    return-void

    .line 3267
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    const-string p3, "LinkHashExpired"

    sget p4, Lorg/telegram/messenger/R$string;->LinkHashExpired:I

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$needOpenInviteLink$2(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;[ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-nez p5, :cond_2

    .line 3246
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;

    const/4 p5, 0x0

    .line 3247
    :goto_0
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$messages_ExportedChatInvite;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 3248
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$messages_ExportedChatInvite;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 3249
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetusersMap(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3250
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputusersMap(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/HashMap;)V

    .line 3252
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetusersMap(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v3, p4

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    goto :goto_1

    .line 3257
    :goto_2
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;[ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic canDrawOutboundsContent()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$canDrawOutboundsContent(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic didClickButton(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didClickButton(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;)V

    return-void
.end method

.method public didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 10

    .line 3185
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 3186
    iget p1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    .line 3187
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance v0, Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->getDialogId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ChannelColorActivity;-><init>(J)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelColorActivity;->setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ChannelColorActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 3190
    :cond_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3191
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v0, 0x280

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3193
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 3194
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetprovider(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void

    .line 3196
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

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

.method public didLongPress(Lorg/telegram/ui/Cells/ChatActionCell;FF)Z
    .locals 0

    .line 3202
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public synthetic didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic didOpenPremiumGiftChannel(Lorg/telegram/ui/Cells/ChatActionCell;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didOpenPremiumGiftChannel(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic didPressReaction(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didPressReaction(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    return-void
.end method

.method public didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .locals 0

    return-void
.end method

.method public synthetic didPressTaskLink(Lorg/telegram/ui/Cells/ChatActionCell;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didPressTaskLink(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;II)V

    return-void
.end method

.method public synthetic forceUpdate(Lorg/telegram/ui/Cells/ChatActionCell;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$forceUpdate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Z)V

    return-void
.end method

.method public getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 3282
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 3287
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    return-wide v0
.end method

.method public synthetic getTopicId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$getTopicId(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public needOpenInviteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 5

    .line 3224
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetlinviteLoading(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3227
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetinvitesCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetinvitesCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3229
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvite;-><init>()V

    .line 3230
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3231
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvite;->link:Ljava/lang/String;

    .line 3233
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fputlinviteLoading(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 3235
    new-array v1, v2, [Z

    .line 3236
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 3237
    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;[Z)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-wide/16 v3, 0x12c

    .line 3241
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 3243
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;[ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 3271
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3000(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void

    .line 3272
    :cond_2
    instance-of p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;

    if-eqz p1, :cond_3

    .line 3273
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetusersMap(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mshowInviteLinkBottomSheet(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;Ljava/util/HashMap;)V

    return-void

    .line 3275
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->linkbroken:I

    const-string v1, "LinkHashExpired"

    sget v2, Lorg/telegram/messenger/R$string;->LinkHashExpired:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public needOpenUserProfile(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 3208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3209
    const-string v1, "chat_id"

    neg-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3210
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2800(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3211
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 3213
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2900(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 3214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3215
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3216
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1, v0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$maddCanBanUser(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/os/Bundle;J)V

    .line 3217
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 3218
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 3219
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public synthetic needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    return-void
.end method

.method public synthetic onTopicClick(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$onTopicClick(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;)V

    return-void
.end method
