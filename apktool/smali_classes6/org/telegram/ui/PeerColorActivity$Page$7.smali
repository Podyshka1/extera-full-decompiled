.class Lorg/telegram/ui/PeerColorActivity$Page$7;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$Page;->showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PeerColorActivity$Page;

.field final synthetic val$cell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iput-object p11, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$cell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    iput-object p12, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object p1, p0

    invoke-direct/range {p1 .. p10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method


# virtual methods
.method protected getScrimDrawableTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p4, :cond_2

    .line 1046
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgettype(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result p2

    if-nez p2, :cond_1

    .line 1047
    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->peer_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-nez p3, :cond_0

    goto :goto_3

    .line 1048
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    invoke-static {p3, p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;)V

    .line 1049
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)V

    goto :goto_0

    .line 1051
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;)V

    .line 1052
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->emojiStatusCollectibleFromGift(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)V

    .line 1054
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedResaleGift(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    .line 1055
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    const/4 p3, -0x1

    invoke-static {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedColor(Lorg/telegram/ui/PeerColorActivity$Page;I)V

    goto :goto_2

    .line 1057
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    if-nez p2, :cond_3

    const-wide/16 p4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    :goto_1
    invoke-static {p3, p4, p5}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedEmoji(Lorg/telegram/ui/PeerColorActivity$Page;J)V

    .line 1058
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)V

    .line 1059
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;)V

    .line 1060
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedResaleGift(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    .line 1062
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$cell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    .line 1063
    invoke-virtual {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->update(Z)V

    .line 1065
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    .line 1066
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$mupdateMessages(Lorg/telegram/ui/PeerColorActivity$Page;)V

    .line 1067
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->updateButton(Z)V

    .line 1068
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    if-eqz p2, :cond_5

    .line 1069
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 1070
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_5
    :goto_3
    return-void
.end method
