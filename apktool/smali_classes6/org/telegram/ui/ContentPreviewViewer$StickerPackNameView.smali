.class Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContentPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerPackNameView"
.end annotation


# instance fields
.field private cover:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 2175
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2176
    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2177
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 2178
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p1, 0x10

    .line 2179
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const/4 p1, -0x1

    .line 2180
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 2181
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/16 v1, 0x18

    const/16 v2, 0x18

    const/16 v3, 0x11

    const/16 v4, 0x11

    const/4 v5, 0x0

    .line 2182
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0xc

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v4, 0x0

    .line 2183
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bind(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 12

    .line 2191
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->cover:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 2192
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->NewStickerPack:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2194
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    return-void

    .line 2197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2198
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3

    .line 2199
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 2200
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v4, v4, v3}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IFFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 2203
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "webp"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 2205
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "webp"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 2208
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    const-string v3, "webp"

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 2211
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method

.method public getCover()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .locals 1

    .line 2187
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->cover:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    return-object v0
.end method
