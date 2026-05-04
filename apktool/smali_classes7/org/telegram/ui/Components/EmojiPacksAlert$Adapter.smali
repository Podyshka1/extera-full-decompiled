.class Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private final VIEW_TYPE_EMOJI:I

.field private final VIEW_TYPE_HEADER:I

.field private final VIEW_TYPE_PADDING:I

.field private final VIEW_TYPE_SEPARATOR:I

.field private final VIEW_TYPE_TEXT:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, 0x0

    .line 1323
    iput p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->VIEW_TYPE_PADDING:I

    const/4 p1, 0x1

    .line 1324
    iput p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->VIEW_TYPE_EMOJI:I

    const/4 p1, 0x2

    .line 1325
    iput p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->VIEW_TYPE_HEADER:I

    const/4 p1, 0x3

    .line 1326
    iput p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->VIEW_TYPE_TEXT:I

    const/4 p1, 0x4

    .line 1327
    iput p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->VIEW_TYPE_SEPARATOR:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert;Lorg/telegram/ui/Components/EmojiPacksAlert-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;-><init>(Lorg/telegram/ui/Components/EmojiPacksAlert;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    .line 1497
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2500(Lorg/telegram/ui/Components/EmojiPacksAlert;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2600(Lorg/telegram/ui/Components/EmojiPacksAlert;)I

    move-result v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->stickerSets:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fputhasDescription(Lorg/telegram/ui/Components/EmojiPacksAlert;Z)V

    .line 1498
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgethasDescription(Lorg/telegram/ui/Components/EmojiPacksAlert;)Z

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->getItemsCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v1, v1

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 1435
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgethasDescription(Lorg/telegram/ui/Components/EmojiPacksAlert;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v1, v3, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 v1, p1, -0x2

    :cond_2
    move p1, v0

    .line 1442
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    const/4 v2, 0x2

    if-ne v1, p1, :cond_3

    return v2

    .line 1446
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1447
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v5, v5

    if-le v5, v3, :cond_4

    .line 1448
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetgridLayoutManager(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    mul-int/2addr v5, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_4
    add-int/2addr v4, v3

    add-int/2addr p1, v4

    if-ne v1, p1, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method public getSetEndPosition(I)I
    .locals 6

    .line 1479
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgethasDescription(Lorg/telegram/ui/Components/EmojiPacksAlert;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    .line 1482
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 1483
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1484
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v5, v5

    if-le v5, v2, :cond_1

    .line 1485
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetgridLayoutManager(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    mul-int/2addr v5, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_1
    if-ne v3, p1, :cond_2

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public getSetHeaderPosition(I)I
    .locals 6

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgethasDescription(Lorg/telegram/ui/Components/EmojiPacksAlert;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    .line 1464
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    if-ne v3, p1, :cond_1

    goto :goto_2

    .line 1468
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1469
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v5, v5

    if-le v5, v2, :cond_2

    .line 1470
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetgridLayoutManager(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    mul-int/2addr v5, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    add-int/2addr v4, v1

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1331
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    add-int/lit8 v0, p2, -0x1

    .line 1355
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_c

    if-eq v1, v3, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto/16 :goto_8

    .line 1357
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    const/high16 p2, 0x41500000    # 13.0f

    .line 1358
    invoke-virtual {p1, v5, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1359
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelTrendingDescription:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2400(Lorg/telegram/ui/Components/EmojiPacksAlert;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1360
    sget p2, Lorg/telegram/messenger/R$string;->PremiumPreviewEmojiPack:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000    # 14.0f

    .line 1361
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v0, v4, v1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    .line 1398
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgethasDescription(Lorg/telegram/ui/Components/EmojiPacksAlert;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v0, p2, -0x2

    :cond_2
    move p2, v4

    move v1, p2

    .line 1402
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v6, v6

    if-ge p2, v6, :cond_5

    .line 1403
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1404
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v7, v7

    if-le v7, v5, :cond_3

    .line 1405
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetgridLayoutManager(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v7

    mul-int/2addr v7, v3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_3
    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr v6, v3

    add-int/2addr v1, v6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1412
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->stickerSets:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_7
    :goto_2
    if-eqz v2, :cond_9

    .line 1414
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    move v0, v4

    .line 1415
    :goto_3
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1416
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v5, v4

    .line 1422
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge p2, v0, :cond_16

    .line 1423
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    if-eqz v2, :cond_b

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_b
    :goto_5
    invoke-virtual {p1, v2, v4, v5}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->set(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;IZ)V

    return-void

    .line 1364
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgethasDescription(Lorg/telegram/ui/Components/EmojiPacksAlert;)Z

    move-result v1

    if-eqz v1, :cond_d

    add-int/lit8 v0, p2, -0x2

    .line 1367
    :cond_d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    move p2, v4

    .line 1369
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v4, v1, :cond_10

    .line 1370
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1371
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v6, v6

    if-le v6, v5, :cond_e

    .line 1372
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetgridLayoutManager(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v6

    mul-int/2addr v6, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_e
    if-le v0, p2, :cond_f

    add-int v6, p2, v1

    if-gt v0, v6, :cond_f

    .line 1375
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    aget-object v1, v1, v4

    sub-int/2addr v0, p2

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/EmojiView$CustomEmoji;

    goto :goto_7

    :cond_f
    add-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    move-object p2, v2

    .line 1380
    :goto_7
    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v0, :cond_11

    if-nez p2, :cond_13

    :cond_11
    if-nez p2, :cond_12

    if-nez v0, :cond_13

    :cond_12
    if-eqz p2, :cond_16

    iget-wide v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    iget-wide v3, p2, Lorg/telegram/ui/Components/EmojiView$CustomEmoji;->documentId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_16

    :cond_13
    if-nez p2, :cond_14

    .line 1382
    iput-object v2, p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return-void

    .line 1384
    :cond_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 1385
    iget-object v1, p2, Lorg/telegram/ui/Components/EmojiView$CustomEmoji;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 1386
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    .line 1387
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 1388
    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView$CustomEmoji;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1390
    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    iput-object p2, p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return-void

    .line 1392
    :cond_15
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v3, p2, Lorg/telegram/ui/Components/EmojiView$CustomEmoji;->documentId:J

    invoke-direct {v0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iput-object v0, p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    :cond_16
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-nez p2, :cond_0

    .line 1339
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetpaddingView(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1341
    new-instance p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1343
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->-$$Nest$fgetcustomEmojiPacks(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPacksLoader;->data:[Ljava/util/ArrayList;

    array-length v2, v2

    if-gt v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p2, v0, v1, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;-><init>(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/content/Context;Z)V

    move-object p1, p2

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    .line 1345
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    if-ne p2, p1, :cond_5

    .line 1347
    new-instance p1, Lorg/telegram/ui/Components/EmojiPacksAlert$SeparatorView;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/EmojiPacksAlert$SeparatorView;-><init>(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 1349
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
