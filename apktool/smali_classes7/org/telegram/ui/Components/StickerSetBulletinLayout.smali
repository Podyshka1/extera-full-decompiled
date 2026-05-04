.class public Lorg/telegram/ui/Components/StickerSetBulletinLayout;
.super Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$57QwHCV-IjZ3fyt7ykEQYpLyG_I(Landroid/content/Context;)V
    .locals 2

    .line 211
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 212
    instance-of v0, p0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    .line 213
    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$H3iEL8c72YVk4MXdEAWXkJoksi0(Landroid/content/Context;)V
    .locals 2

    .line 195
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 196
    instance-of v0, p0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    .line 197
    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;IILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v1, p6

    .line 58
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 62
    instance-of v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v2, 0x0

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 63
    move-object v3, v6

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 64
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 65
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 67
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    move-object v10, v3

    goto :goto_2

    .line 71
    :cond_1
    instance-of v3, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v3, :cond_3

    .line 72
    move-object v3, v6

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 73
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 74
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_2

    move-object v3, v5

    goto :goto_0

    .line 76
    :cond_2
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_3
    if-nez p5, :cond_5

    if-eqz v6, :cond_5

    .line 82
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v3, :cond_4

    goto :goto_1

    .line 83
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type of the given setObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    move-object/from16 v10, p5

    move-object v4, v2

    :goto_2
    const/4 v11, 0x1

    if-nez v4, :cond_6

    if-eqz v10, :cond_6

    .line 89
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    invoke-virtual {v3, v5, v11}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 91
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    :cond_6
    move-object v12, v4

    if-eqz v10, :cond_f

    const/16 v3, 0x5a

    if-nez v12, :cond_7

    goto :goto_3

    .line 97
    :cond_7
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_8

    move-object v2, v10

    .line 103
    :cond_8
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_9

    .line 104
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 105
    invoke-static {v1, v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    :goto_4
    move-object v2, v1

    goto :goto_6

    .line 107
    :cond_9
    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 109
    instance-of v3, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v3, :cond_a

    .line 110
    move-object v1, v6

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    .line 112
    move-object v1, v6

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    goto :goto_5

    :cond_b
    move v1, v9

    .line 114
    :goto_5
    invoke-static {v2, v10, v1}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    goto :goto_4

    :goto_6
    if-eqz v4, :cond_d

    .line 117
    invoke-static {v10, v11}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 118
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    move-object v4, v2

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "50_50"

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_7

    :cond_d
    if-eqz v2, :cond_e

    .line 119
    iget v1, v2, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v1, v11, :cond_e

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "tgs"

    const/4 v5, 0x0

    const-string v3, "50_50"

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_7

    .line 122
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "webp"

    const/4 v5, 0x0

    const-string v3, "50_50"

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_7

    .line 125
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "webp"

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 128
    :goto_7
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_10
    const/16 v1, 0x8

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_9

    .line 207
    :pswitch_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    .line 208
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v1, :cond_11

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteGifs:I

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->savedGifsLimitDefault:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget v1, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteGifsSubtitle:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitPremium:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickerSetBulletinLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/StickerSetBulletinLayout$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 218
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteGifs:I

    if-eqz v1, :cond_12

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->savedGifsLimitPremium:I

    goto :goto_8

    :cond_12
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->savedGifsLimitDefault:I

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteGifsSubtitlePremium:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 192
    :pswitch_1
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    const-string v2, "LimitReachedFavoriteStickers"

    if-nez v1, :cond_13

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteStickers:I

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitDefault:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v4, v5, v9

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget v1, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteStickersSubtitle:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "LimitReachedFavoriteStickersSubtitle"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickerSetBulletinLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/StickerSetBulletinLayout$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 202
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteStickers:I

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteStickersSubtitlePremium:I

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "LimitReachedFavoriteStickersSubtitlePremium"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 188
    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AddedToFavorites:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 184
    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->RemovedFromFavorites:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 223
    :pswitch_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->RemovedFromRecent:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    if-eqz v12, :cond_1c

    .line 135
    iget-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_14

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->AddMasksInstalled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->AddMasksInstalledInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "AddMasksInstalledInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 138
    :cond_14
    iget-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_16

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->AddEmojiInstalled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-le v8, v11, :cond_15

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const-string v1, "AddEmojiMultipleInstalledInfo"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v8, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 143
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->AddEmojiInstalledInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "AddEmojiInstalledInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 146
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->AddStickersInstalled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->AddStickersInstalledInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "AddStickersInstalledInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_6
    if-eqz v12, :cond_1c

    .line 171
    iget-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_17

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->MasksArchived:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->MasksArchivedInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "MasksArchivedInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 174
    :cond_17
    iget-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_18

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EmojiArchived:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EmojiArchivedInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "EmojiArchivedInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 178
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StickersArchived:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StickersArchivedInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "StickersArchivedInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_7
    if-eqz v12, :cond_1c

    .line 153
    iget-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_19

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->MasksRemoved:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->MasksRemovedInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "MasksRemovedInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 156
    :cond_19
    iget-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_1b

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EmojiRemoved:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-le v8, v11, :cond_1a

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const-string v1, "EmojiRemovedMultipleInfo"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v8, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 161
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EmojiRemovedInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "EmojiRemovedInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 164
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StickersRemoved:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StickersRemovedInfo:I

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "StickersRemovedInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 54
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;IILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method
