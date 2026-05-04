.class Lorg/telegram/ui/Components/EmojiView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public static synthetic $r8$lambda$FASxy65HSvWQQGmCpolK7_To_PM(Lorg/telegram/ui/Components/EmojiView$2;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$2;->lambda$setAsBadge$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GHIiFHwD4O_zzTOmI6fCgNPDviU(Lorg/telegram/ui/Components/EmojiView$2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$2;->lambda$deleteSticker$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M0gYwTNMDKDnJDsdhG-Aie1ML80(Lorg/telegram/ui/Components/EmojiView$2;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$2;->lambda$setAsBadge$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XOaIIa6e_OzUiot-B25jsQkrWgQ(Lorg/telegram/ui/Components/EmojiView$2;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$2;->lambda$setAsEmojiStatus$0(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZxixVt06ojrEsxy_2mVvPamzssE(Lorg/telegram/ui/Components/EmojiView$2;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$2;->lambda$setAsBadge$4(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDiqQ2MVFaoNsqhNd3lY-slN8h4(Lorg/telegram/ui/Components/EmojiView$2;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$2;->lambda$setAsBadge$5(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qcbUbV86ovQUUUtKBpNQftjzlKA(Lorg/telegram/ui/Components/EmojiView$2;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$2;->lambda$deleteSticker$6(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yZJ5zPS5FnWYTCqUFId8FaG15Ak(Lorg/telegram/ui/Components/EmojiView$2;Lcom/exteragram/messenger/api/dto/BadgeDTO;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$2;->lambda$setAsBadge$3(Lcom/exteragram/messenger/api/dto/BadgeDTO;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$deleteSticker$6(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 755
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->putStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->replaceStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteSticker$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 754
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView$2;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setAsBadge$1(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 596
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 597
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 600
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$setAsBadge$2(Ljava/lang/String;)V
    .locals 1

    .line 595
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EmojiView$2;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setAsBadge$3(Lcom/exteragram/messenger/api/dto/BadgeDTO;)V
    .locals 2

    .line 594
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$2;)V

    invoke-virtual {v0, p1, v1}, Lcom/exteragram/messenger/badges/BadgesController;->updateBadge(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setAsBadge$4(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 607
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 615
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->SetAsBadgeStatusInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 617
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->SetAsBadgeStatusInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 608
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 611
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$setAsBadge$5(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 606
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView$2;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setAsEmojiStatus$0(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    return-void
.end method


# virtual methods
.method public addCaptionToGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V
    .locals 9

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 728
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelectedForAddCaption(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V

    return-void
.end method

.method public synthetic addToFavoriteSelected(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$addToFavoriteSelected(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public can()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetshouldDrawBackground(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public canAddCaption(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 1

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->canAddCaptionToGif(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public synthetic canDeleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canDeleteSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public canEditSticker()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSchedule()Z
    .locals 1

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->canSchedule()Z

    move-result v0

    return v0
.end method

.method public synthetic canSendSticker()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canSendSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public canSetAsStatus(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;
    .locals 4

    .line 655
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 658
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 662
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 663
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public copyEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4

    .line 625
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 626
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 627
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    .line 629
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->EmojiCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method

.method public deleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 752
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_removeStickerFromSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickers_removeStickerFromSet;-><init>()V

    .line 753
    const-string v1, ""

    invoke-static {p1, v1}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSetItem(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_removeStickerFromSet;->sticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 754
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$2;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public editSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    const/4 v0, 0x0

    .line 682
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 683
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 684
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 689
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/telegram/ui/Components/StickersAlert;->editSticker(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public getDialogId()J
    .locals 2

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getDialogId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuery(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 745
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetlastSearchImageString(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    .line 747
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->-$$Nest$fgetlastSearchEmojiString(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public gifAddedOrDeleted()V
    .locals 1

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mupdateRecentGifs(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isInScheduleMode()Z

    move-result v0

    return v0
.end method

.method public synthetic isPhotoEditor()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isPhotoEditor(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isReplacedSticker()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isReplacedSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isSettingIntroSticker()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isSettingIntroSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isStickerEditor()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isStickerEditor(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public needCopy(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic needMenu()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needMenu(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needOpen()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needOpen(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needRemove()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needRemove(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public needRemoveFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 640
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animated_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public needSend(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 669
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->canSendMessage()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetallowEmojisForNonPremium(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public synthetic newStickerPackSelected(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$newStickerPackSelected(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 708
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V

    return-void
.end method

.method public synthetic remove(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$remove(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    return-void
.end method

.method public removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animated_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->removeRecentEmoji(Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 648
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public resetTouch()V
    .locals 1

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->clearAllTouches()V

    :cond_0
    return-void
.end method

.method public sendEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/ChatActivity;->sendAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    :cond_0
    return-void
.end method

.method public sendGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V
    .locals 13

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V

    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    move-object v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v5 .. v12}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V

    :cond_1
    return-void
.end method

.method public synthetic sendSticker(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$sendSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZII)V
    .locals 9

    .line 531
    iget-object p6, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p6}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v8}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZII)V

    return-void
.end method

.method public setAsBadge(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 592
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {v0}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge()Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v1

    .line 593
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$2;Lcom/exteragram/messenger/api/dto/BadgeDTO;)V

    .line 605
    new-instance v3, Lcom/exteragram/messenger/api/dto/BadgeDTO;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v3, v4, v5, v1}, Lcom/exteragram/messenger/api/dto/BadgeDTO;-><init>(JLjava/lang/String;)V

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$2;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3, v1}, Lcom/exteragram/messenger/badges/BadgesController;->updateBadge(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 552
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    goto :goto_0

    .line 554
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    .line 555
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    if-eqz p2, :cond_1

    .line 557
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    .line 558
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    :cond_1
    move-object p2, v1

    .line 562
    :goto_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_2

    .line 563
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 564
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    .line 566
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Components/EmojiView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$2;Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    if-nez p1, :cond_4

    .line 568
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 569
    iget-object v1, p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->RemoveStatusInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v1, p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    iget-object v1, p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 572
    iget-object v1, p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 573
    iget-object v1, p1, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 574
    new-instance v1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 575
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 576
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 577
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    const/16 v0, 0x5dc

    if-eqz p2, :cond_3

    .line 578
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 580
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 583
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$2;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    .line 584
    :goto_2
    sget v1, Lorg/telegram/messenger/R$string;->SetAsEmojiStatusInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public synthetic setIntroSticker(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$setIntroSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic stickerSetSelected(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$stickerSetSelected(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/lang/String;)V

    return-void
.end method
