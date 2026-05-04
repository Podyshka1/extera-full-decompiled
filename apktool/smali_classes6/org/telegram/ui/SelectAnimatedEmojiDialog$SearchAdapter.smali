.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field private count:I

.field emojiHeaderRow:I

.field emojiStartRow:I

.field private rowHashCodes:Ljava/util/ArrayList;

.field setsStartRow:I

.field stickersHeaderRow:I

.field stickersStartRow:I

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 2179
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, -0x1

    .line 2189
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiHeaderRow:I

    .line 2190
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersHeaderRow:I

    const/4 p1, 0x1

    .line 2426
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 2427
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2431
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 8

    .line 2232
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiHeaderRow:I

    const/4 v1, 0x6

    if-eq p1, v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersHeaderRow:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 2235
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v2, 0xe

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    .line 2236
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    if-lt p1, v0, :cond_2

    sub-int v0, p1, v0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    return v3

    .line 2240
    :cond_1
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    if-le p1, v0, :cond_2

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 p1, 0x5

    return p1

    .line 2244
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    return v2

    .line 2247
    :cond_3
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiStartRow:I

    if-le p1, v0, :cond_5

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 2248
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiStartRow:I

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    :cond_4
    return v2

    .line 2252
    :cond_5
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->setsStartRow:I

    sub-int v4, p1, v0

    if-ltz v4, :cond_7

    sub-int v0, p1, v0

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 2253
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->setsStartRow:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    return v3

    :cond_8
    :goto_0
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 2195
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isSticker(I)Z
    .locals 4

    .line 2223
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 2224
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return v3

    :cond_0
    return v2

    .line 2226
    :cond_1
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    if-le p1, v0, :cond_2

    sub-int/2addr p1, v0

    sub-int/2addr p1, v3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2263
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/16 v6, 0xe

    const/4 v7, 0x0

    if-ne v3, v4, :cond_4

    .line 2264
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    .line 2265
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->setsStartRow:I

    sub-int v4, v2, v3

    if-ltz v4, :cond_0

    sub-int v3, v2, v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2266
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->setsStartRow:I

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2267
    instance-of v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    if-eqz v3, :cond_3

    .line 2268
    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlastQuery(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2270
    :cond_0
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiHeaderRow:I

    if-ne v2, v3, :cond_1

    .line 2271
    sget v2, Lorg/telegram/messenger/R$string;->Emoji:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2273
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 2274
    sget v2, Lorg/telegram/messenger/R$string;->StickerEffects:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2276
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStickers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 2279
    :cond_3
    :goto_0
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2280
    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x5

    const v8, 0x3e4ccccd    # 0.2f

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v3, v4, :cond_5

    .line 2281
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v9

    .line 2282
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2283
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2284
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createImageReceiver(Landroid/view/View;)V

    .line 2285
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v2, v3, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v16

    .line 2286
    iget-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const-string v19, "tgs"

    const/16 v21, 0x0

    const-string v13, "100_100_firstframe"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v20, v2

    invoke-virtual/range {v11 .. v21}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2287
    iput-boolean v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2288
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2289
    iput-object v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return-void

    .line 2290
    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 2291
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2292
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2294
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    if-ltz v2, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 2295
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    goto :goto_1

    .line 2296
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    if-lt v2, v3, :cond_1c

    sub-int v3, v2, v3

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_1c

    .line 2297
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    sub-int/2addr v2, v11

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2302
    :goto_1
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v3, :cond_7

    .line 2303
    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v11, 0x7

    .line 2304
    invoke-virtual {v3, v11}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 2305
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 2307
    :cond_7
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2308
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2309
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isFirstReactions:Z

    .line 2310
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    .line 2311
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 2312
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    .line 2313
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    const/16 v11, 0xd

    if-ne v3, v11, :cond_8

    .line 2314
    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 2315
    :cond_8
    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    if-nez v3, :cond_c

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 2316
    iput-boolean v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 2317
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v9, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v3, :cond_a

    .line 2319
    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v9, v11, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v16

    const/16 v8, 0x2008

    .line 2320
    invoke-static {v8}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2321
    iget-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const-string v19, "tgs"

    const/16 v21, 0x0

    const-string v13, "60_60_firstframe"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v20, v2

    invoke-virtual/range {v11 .. v21}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_9
    move-object/from16 v20, v2

    .line 2323
    iget-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    const-string v21, "tgs"

    const/16 v23, 0x0

    const-string v13, "60_60_pcache"

    const-string v15, "30_30_firstframe"

    move-object/from16 v18, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v22, v20

    const-wide/16 v19, 0x0

    invoke-virtual/range {v11 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    move-object/from16 v2, v22

    .line 2325
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v11, v12}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)V

    goto :goto_3

    .line 2327
    :cond_a
    iget-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2328
    iget-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2330
    :goto_3
    iput-object v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2331
    iput-object v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2332
    invoke-virtual {v1, v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2333
    iget-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v8, :cond_b

    .line 2334
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2335
    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_b
    if-nez v3, :cond_e

    .line 2337
    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    if-eqz v3, :cond_e

    .line 2338
    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 2341
    :cond_c
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 2342
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v8, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v3, v8, v9, v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2343
    iput-object v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2344
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2345
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2346
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v3, :cond_d

    .line 2349
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mgetCacheType(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    iget-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-static {v3, v5, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    .line 2350
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v5

    iget-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2352
    :cond_d
    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2355
    :cond_e
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v6, :cond_f

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->premium:Z

    if-eqz v3, :cond_f

    .line 2356
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createPremiumLockView()V

    .line 2357
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2358
    invoke-virtual {v1, v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setEmojicon(Ljava/lang/String;)V

    return-void

    .line 2360
    :cond_f
    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->sticker:Z

    if-eqz v3, :cond_10

    .line 2361
    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setEmojicon(Ljava/lang/String;)V

    goto :goto_5

    .line 2363
    :cond_10
    invoke-virtual {v1, v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setEmojicon(Ljava/lang/String;)V

    .line 2365
    :goto_5
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v1, :cond_1c

    .line 2366
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2369
    :cond_11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1c

    .line 2370
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2371
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    .line 2372
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2373
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v5, v8, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 2375
    invoke-virtual {v1, v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2378
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_15

    if-ltz v2, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 2379
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2380
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2381
    iget-wide v11, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-nez v3, :cond_12

    .line 2382
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 2383
    iput-boolean v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isFirstReactions:Z

    .line 2384
    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2385
    invoke-virtual {v1, v3, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    return-void

    .line 2388
    :cond_12
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2390
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    if-ne v5, v6, :cond_13

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_13

    iget-boolean v5, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    if-eqz v5, :cond_13

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->premium:Z

    if-eqz v2, :cond_13

    .line 2391
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createPremiumLockView()V

    .line 2392
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 2394
    :cond_13
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v2, :cond_14

    .line 2395
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    :goto_6
    move-object v2, v10

    goto :goto_7

    .line 2398
    :cond_15
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_16

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->setsStartRow:I

    sub-int v4, v2, v3

    if-ltz v4, :cond_16

    sub-int v3, v2, v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_16

    .line 2399
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->setsStartRow:I

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2400
    instance-of v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    if-eqz v3, :cond_17

    :cond_16
    move-object v2, v10

    move-object v3, v2

    goto :goto_7

    :cond_17
    move-object v3, v10

    :goto_7
    if-nez v3, :cond_19

    if-eqz v2, :cond_18

    goto :goto_8

    :cond_18
    move v2, v7

    goto :goto_a

    :cond_19
    :goto_8
    if-eqz v2, :cond_1a

    .line 2406
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v3, v2, v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2407
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2408
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_9

    .line 2410
    :cond_1a
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2411
    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2412
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2415
    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v3, :cond_1b

    .line 2417
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mgetCacheType(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    .line 2418
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2420
    :cond_1b
    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2422
    :goto_a
    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_1c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 2203
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p2, v0, v1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x7

    if-ne p2, p1, :cond_2

    .line 2205
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter$1;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;Landroid/content/Context;)V

    .line 2211
    const-string p1, "searchbox"

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 2213
    :cond_2
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    .line 2215
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$menterAnimationInProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 2216
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2217
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2219
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public updateRows(Z)V
    .locals 10

    const/16 p1, -0x1d1d

    .line 2465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    .line 2461
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2435
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetisAttached(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    .line 2438
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, -0x1

    .line 2440
    iput v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->setsStartRow:I

    .line 2441
    iput v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    const/4 v2, 0x0

    .line 2442
    iput v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 2443
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2445
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 2446
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2447
    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiHeaderRow:I

    .line 2448
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    :cond_1
    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiStartRow:I

    move v4, v2

    .line 2452
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 2453
    iget v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 2454
    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    const/16 v7, -0x10f6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v8, v9, v5

    invoke-static {v9}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2458
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    const/16 v6, 0xe

    if-ne v4, v6, :cond_3

    .line 2459
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2460
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersHeaderRow:I

    .line 2461
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2462
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    move v1, v2

    .line 2463
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2464
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 2465
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchResultStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v4, v6, v5

    invoke-static {v6}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2468
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2469
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2470
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersHeaderRow:I

    .line 2471
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2474
    :cond_4
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    move v1, v2

    .line 2475
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2476
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 2477
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSearchResult(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v4, v6, v5

    invoke-static {v6}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2481
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2482
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->setsStartRow:I

    .line 2483
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 2509
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2512
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    if-nez v0, :cond_7

    move v2, v5

    :cond_7
    invoke-virtual {p1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->switchSearchEmptyView(Z)V

    return-void
.end method
