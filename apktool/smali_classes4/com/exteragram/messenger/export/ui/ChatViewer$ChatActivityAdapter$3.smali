.class Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;


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
.method constructor <init>(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;)V
    .locals 0

    .line 2551
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 2554
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 2555
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2556
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v0, 0x280

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2558
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 2559
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v2, v2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v2}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetprovider(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void

    .line 2561
    :cond_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

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

.method public didLongPress(Lorg/telegram/ui/Cells/ChatActionCell;FF)Z
    .locals 0

    .line 2567
    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p2, p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$mcreateMenu(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/view/View;)Z

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

    .line 2588
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 2593
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$mgetDialogId(Lcom/exteragram/messenger/export/ui/ChatViewer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getTopicId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$getTopicId(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic needOpenInviteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$needOpenInviteLink(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public needOpenUserProfile(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2574
    const-string v1, "chat_id"

    neg-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2575
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2700(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p2, p2, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2576
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 2578
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object v0, v0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v0}, Lcom/exteragram/messenger/export/ui/ChatViewer;->access$2800(Lcom/exteragram/messenger/export/ui/ChatViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    .line 2579
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2580
    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2581
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 2582
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$3;->this$1:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;

    iget-object p1, p1, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

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
