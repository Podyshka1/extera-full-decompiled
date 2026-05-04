.class public Lorg/telegram/ui/PeerColorActivity$GiftCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeerColorActivity$GiftCell$Factory;
    }
.end annotation


# instance fields
.field public backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

.field public final card:Landroid/widget/FrameLayout;

.field public final cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

.field public id:J

.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private lastDocumentId:J

.field public pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

.field private final ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 3502
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3504
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->card:Landroid/widget/FrameLayout;

    .line 3505
    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, v2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, -0x1

    const/16 v1, 0x77

    .line 3506
    invoke-static {p3, p3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p3, 0x3ccccccd    # 0.025f

    const/high16 v1, 0x3fa00000    # 1.25f

    .line 3507
    invoke-static {v0, p3, v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 3509
    new-instance p3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v6, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    const/16 v1, 0x50

    const/high16 v2, 0x42a00000    # 80.0f

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    .line 3510
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 3513
    new-instance p2, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 3514
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3516
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    return-void
.end method

.method private setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 10

    if-nez p1, :cond_0

    .line 3573
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    const/4 p1, 0x0

    .line 3574
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 p1, 0x0

    .line 3575
    iput-wide p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->lastDocumentId:J

    return-void

    .line 3579
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne v0, p1, :cond_1

    return-void

    .line 3580
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3581
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->lastDocumentId:J

    .line 3583
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 3584
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    .line 3586
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 3587
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 3588
    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const-string v7, "100_100"

    .line 3586
    const-string v5, "100_100"

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getGiftId()J
    .locals 2

    .line 3554
    iget-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->id:J

    return-wide v0
.end method

.method public set(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 4

    .line 3535
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->id:J

    .line 3536
    rem-int/lit8 p1, p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/high16 p1, 0x40800000    # 4.0f

    if-eqz v1, :cond_1

    .line 3537
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    invoke-virtual {p0, v2, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 3539
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {p1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 3541
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 3542
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 3544
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 3545
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    .line 3547
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    if-eqz p1, :cond_3

    .line 3548
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 3549
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v2, p2

    const/16 p2, 0x2c

    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x9

    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(ILjava/lang/CharSequence;Z)V

    :cond_3
    return-void
.end method

.method public set(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V
    .locals 3

    .line 3521
    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->id:J

    .line 3522
    rem-int/lit8 p1, p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/high16 p1, 0x40800000    # 4.0f

    if-eqz v1, :cond_1

    .line 3523
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    invoke-virtual {p0, v2, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 3525
    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 3527
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 3528
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 3530
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 3531
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 1

    .line 3558
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setSelected(ZZ)V

    if-eqz p1, :cond_0

    const p1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p2, :cond_1

    .line 3561
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 3563
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3564
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 3565
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
