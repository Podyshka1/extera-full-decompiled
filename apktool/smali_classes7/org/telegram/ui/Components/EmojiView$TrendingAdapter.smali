.class Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingAdapter"
.end annotation


# instance fields
.field private emoji:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method static bridge synthetic -$$Nest$fgetemoji(Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 6414
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 6415
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 6535
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfeaturedEmojiSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfeaturedStickerSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 6448
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/BackupImageView;

    .line 6449
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfeaturedEmojiSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfeaturedStickerSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 6450
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6453
    instance-of p1, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6454
    move-object p1, v5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    goto :goto_1

    .line 6455
    :cond_1
    instance-of p1, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz p1, :cond_3

    .line 6456
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p2

    goto :goto_1

    .line 6460
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    goto :goto_1

    .line 6463
    :cond_3
    iget-object p1, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    .line 6467
    :goto_1
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_7

    .line 6469
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 6470
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_6

    move v2, v1

    .line 6471
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 6472
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_5

    .line 6473
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move-object v2, p2

    :goto_3
    if-nez v2, :cond_8

    .line 6479
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_4

    :cond_7
    move-object v2, p2

    :cond_8
    :goto_4
    if-nez v2, :cond_9

    goto/16 :goto_b

    .line 6486
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    if-eqz p1, :cond_b

    .line 6487
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object p2

    :cond_a
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6490
    :cond_b
    iget-object p1, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const/16 p2, 0x5a

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 6491
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v4

    if-eqz v4, :cond_c

    const/16 v1, 0x200

    .line 6493
    invoke-virtual {v4, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_c
    if-eqz p1, :cond_d

    .line 6495
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    move-object p1, v2

    .line 6500
    :cond_e
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_f

    .line 6501
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 6502
    invoke-static {p1, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    :goto_5
    move-object v3, p1

    goto :goto_6

    .line 6503
    :cond_f
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz p2, :cond_17

    .line 6504
    check-cast p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 6505
    iget-object p2, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    .line 6506
    invoke-static {p1, v2, p2}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    goto :goto_5

    :goto_6
    if-nez v3, :cond_10

    goto :goto_b

    .line 6514
    :cond_10
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_11

    const/16 p1, 0x4004

    goto :goto_7

    :cond_11
    move p1, p2

    :goto_7
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_12

    const-string p1, "30_30_firstframe"

    goto :goto_8

    :cond_12
    const-string p1, "30_30"

    :goto_8
    if-eqz v1, :cond_13

    .line 6515
    invoke-static {v2, p2}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    :cond_13
    move-object v2, p1

    move-object v1, v3

    move-object v3, v4

    goto :goto_a

    :cond_14
    :goto_9
    if-eqz v4, :cond_15

    .line 6517
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    move-object v3, v4

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    return-void

    :cond_15
    move-object p2, v2

    move-object v2, p1

    .line 6519
    invoke-static {p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 6521
    :goto_a
    iget p1, v1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne p1, p2, :cond_16

    move-object v4, v3

    .line 6522
    const-string v3, "tgs"

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    :cond_16
    const/4 v2, 0x0

    move-object v4, v3

    .line 6524
    const-string v3, "webp"

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_17
    :goto_b
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 6425
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;Landroid/content/Context;)V

    const/high16 p2, 0x41c00000    # 24.0f

    .line 6439
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    const/4 p2, 0x1

    .line 6440
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 6441
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 6442
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42080000    # 34.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6443
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
