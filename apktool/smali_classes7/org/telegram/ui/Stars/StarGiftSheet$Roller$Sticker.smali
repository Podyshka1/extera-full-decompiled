.class public Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;
.super Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$Roller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sticker"
.end annotation


# instance fields
.field public final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public final mine:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V
    .locals 1

    .line 3728
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;-><init>()V

    .line 3729
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->name:Ljava/lang/String;

    .line 3730
    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->getRarityPermille()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->rarity_permille:I

    const/4 v0, 0x1

    .line 3732
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->mine:Z

    .line 3733
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 3734
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 p2, 0xa0

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V
    .locals 1

    .line 3737
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;-><init>()V

    .line 3738
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->name:Ljava/lang/String;

    .line 3739
    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->getRarityPermille()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->rarity_permille:I

    const/4 p2, 0x0

    .line 3741
    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->mine:Z

    .line 3742
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    .line 3747
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->mine:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    .line 3751
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->mine:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .line 3756
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
