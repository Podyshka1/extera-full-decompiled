.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;
.super Lorg/telegram/ui/ChatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private shownToast:Z

.field final synthetic this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

.field final synthetic val$boughtGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

.field final synthetic val$dialogId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->val$boughtGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iput-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->val$dialogId:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 815
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->shownToast:Z

    return-void
.end method


# virtual methods
.method public onBecomeFullyVisible()V
    .locals 8

    .line 818
    invoke-super {p0}, Lorg/telegram/ui/ChatActivity;->onBecomeFullyVisible()V

    .line 819
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->shownToast:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 820
    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->shownToast:Z

    .line 822
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->val$boughtGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 823
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToText:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;->val$dialogId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 824
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 825
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 826
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    if-eqz v1, :cond_0

    .line 827
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_0
    return-void
.end method
