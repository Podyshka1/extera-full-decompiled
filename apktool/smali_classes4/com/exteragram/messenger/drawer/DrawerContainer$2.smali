.class Lcom/exteragram/messenger/drawer/DrawerContainer$2;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/drawer/DrawerContainer;->showStatusSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

.field final synthetic val$account:I

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/drawer/DrawerContainer;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$2;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    iput p10, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$2;->val$account:I

    iput-object p11, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$2;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method


# virtual methods
.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 2

    if-eqz p4, :cond_0

    .line 293
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;-><init>()V

    .line 294
    iget-wide p2, p4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->collectible_id:J

    if-eqz p5, :cond_2

    .line 296
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->flags:I

    .line 297
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->until:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 301
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    goto :goto_0

    .line 303
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    .line 304
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    if-eqz p5, :cond_2

    .line 306
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    .line 307
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    .line 312
    :cond_2
    :goto_0
    iget p2, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$2;->val$account:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1, p1, p4}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(JLorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    .line 313
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$2;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    invoke-static {p1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->-$$Nest$fgetheaderView(Lcom/exteragram/messenger/drawer/DrawerContainer;)Lcom/exteragram/messenger/drawer/DrawerHeaderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/drawer/DrawerHeaderView;->updateUserInfo()V

    .line 315
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$2;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_3

    .line 316
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$2;->this$0:Lcom/exteragram/messenger/drawer/DrawerContainer;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/exteragram/messenger/drawer/DrawerContainer;->-$$Nest$fputselectAnimatedEmojiDialog(Lcom/exteragram/messenger/drawer/DrawerContainer;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 317
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerContainer$2;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_3
    return-void
.end method
