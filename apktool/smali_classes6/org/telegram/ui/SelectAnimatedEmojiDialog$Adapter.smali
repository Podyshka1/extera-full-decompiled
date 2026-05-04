.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method public static synthetic $r8$lambda$iKgG0GifNzUutumoXhSIUKNG1t0(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Lorg/telegram/ui/Components/EmojiView$EmojiPack;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->lambda$onBindViewHolder$0(Lorg/telegram/ui/Components/EmojiView$EmojiPack;ILandroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 2516
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/telegram/ui/Components/EmojiView$EmojiPack;ILandroid/view/View;)V
    .locals 6

    .line 2783
    iget-boolean p3, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    if-nez p3, :cond_1

    .line 2784
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2786
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetbaseFragment(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void

    :cond_1
    const/4 p3, 0x0

    move v0, p3

    .line 2792
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 2793
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v1, :cond_2

    .line 2794
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2795
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 2796
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToExpand(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 2797
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object p2, v2

    move-object v1, p2

    :goto_1
    if-eqz p2, :cond_4

    .line 2804
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expand(ILandroid/view/View;)V

    .line 2807
    :cond_4
    iget-object p2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v2, p2, p3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->installSet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V

    .line 2808
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetinstalledEmojiSets(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mupdateRows(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZ)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2947
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettotalCount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 2952
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrowHashCodes(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 2595
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    return p1

    .line 2597
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentReactionsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentReactionsEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettopReactionsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettopReactionsEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ge p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 2599
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgiftsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/4 v1, 0x3

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgiftsEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ge p1, v0, :cond_5

    return v1

    .line 2601
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToExpand(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_6

    const/4 p1, 0x4

    return p1

    .line 2603
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_7

    const/4 p1, 0x5

    return p1

    .line 2605
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x6

    return p1

    .line 2607
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToSection(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentReactionsSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgiftsSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpopularSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettopicEmojiHeaderRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_9

    goto :goto_0

    .line 2610
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetdefaultTopicIconRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_a

    const/16 p1, 0x8

    return p1

    :cond_a
    return v1

    :cond_b
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 2531
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2619
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2621
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2622
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2623
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    return-void

    .line 2626
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2627
    :cond_1
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleX(F)V

    .line 2628
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    const/4 v5, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v3, v5, :cond_3

    .line 2631
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 2632
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgethintExpireDate(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 2633
    sget v2, Lorg/telegram/messenger/R$string;->EmojiStatusExpireHint:I

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgethintExpireDate(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatStatusExpireDateTime(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v8

    const-string v3, "EmojiStatusExpireHint"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const/4 v9, 0x7

    const/4 v10, 0x5

    const/4 v11, 0x0

    if-nez v3, :cond_d

    .line 2636
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    .line 2637
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettopicEmojiHeaderRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2638
    sget v2, Lorg/telegram/messenger/R$string;->SelectTopicIconHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 2639
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2642
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentReactionsSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 2643
    sget v2, Lorg/telegram/messenger/R$string;->RecentlyUsed:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 2644
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2647
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 2648
    sget v2, Lorg/telegram/messenger/R$string;->StickerEffects:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 2649
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2652
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2653
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpopularSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 2654
    sget v2, Lorg/telegram/messenger/R$string;->PopularReactions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    return-void

    .line 2657
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgiftsSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 2658
    sget v2, Lorg/telegram/messenger/R$string;->EmojiPackCollectibles:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    return-void

    .line 2662
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToSection(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_c

    .line 2664
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpacks(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 2665
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v3, :cond_9

    .line 2666
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v3, v4, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 2667
    iput-object v11, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 2670
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v10, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v9, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v5, :cond_b

    .line 2671
    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    move v7, v8

    :goto_0
    move v8, v7

    .line 2673
    :cond_b
    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    return-void

    .line 2675
    :cond_c
    invoke-virtual {v1, v11, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    return-void

    :cond_d
    const/16 v12, 0xd

    const/4 v13, 0x4

    if-ne v3, v7, :cond_18

    .line 2678
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2679
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2681
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentReactionsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-lt v2, v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentReactionsEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 2682
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentReactionsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2683
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentReactions(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    goto :goto_1

    .line 2684
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-lt v2, v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersEndRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 2685
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickersStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2686
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    goto :goto_1

    .line 2688
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettopReactionsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2689
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettopReactions(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2692
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v12, :cond_10

    .line 2693
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 2694
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isFirstReactions:Z

    .line 2695
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2696
    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2697
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    return-void

    .line 2701
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createImageReceiver(Landroid/view/View;)V

    .line 2702
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isFirstReactions:Z

    .line 2703
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2704
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    .line 2705
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 2706
    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    if-nez v3, :cond_13

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 2707
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 2708
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v3, :cond_12

    .line 2710
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v19

    const/16 v5, 0x2008

    .line 2711
    invoke-static {v5}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_11

    .line 2712
    iget-object v14, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    const-string v22, "tgs"

    const/16 v24, 0x0

    const-string v16, "60_60_firstframe"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v23, v2

    invoke-virtual/range {v14 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_11
    move-object/from16 v23, v2

    .line 2714
    iget-object v14, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    const-string v24, "tgs"

    const/16 v26, 0x0

    const-string v16, "60_60_pcache"

    const-string v18, "30_30_firstframe"

    move-object/from16 v21, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v25, v23

    const-wide/16 v22, 0x0

    invoke-virtual/range {v14 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    move-object/from16 v2, v25

    .line 2716
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)V

    goto :goto_3

    .line 2718
    :cond_12
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2719
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2721
    :goto_3
    iput-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2722
    iput-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2723
    invoke-virtual {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2724
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v3, :cond_15

    .line 2725
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2726
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto :goto_4

    .line 2729
    :cond_13
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 2730
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v3, v4, v5, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2731
    iput-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2732
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2733
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2734
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_14

    .line 2737
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mgetCacheType(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    .line 2738
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2740
    :cond_14
    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2743
    :cond_15
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_16

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    if-eqz v3, :cond_16

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->premium:Z

    if-eqz v3, :cond_16

    .line 2744
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createPremiumLockView()V

    .line 2745
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2746
    invoke-virtual {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setEmojicon(Ljava/lang/String;)V

    return-void

    .line 2748
    :cond_16
    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->sticker:Z

    if-eqz v3, :cond_17

    .line 2749
    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setEmojicon(Ljava/lang/String;)V

    goto :goto_5

    .line 2751
    :cond_17
    invoke-virtual {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setEmojicon(Ljava/lang/String;)V

    .line 2753
    :goto_5
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v1, :cond_21

    .line 2754
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_18
    const/16 v4, 0x28

    const/4 v14, -0x1

    if-ne v3, v13, :cond_1d

    .line 2758
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 2759
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToExpand(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_19

    .line 2760
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpacks(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpacks(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_6

    :cond_19
    move-object v3, v11

    .line 2761
    :goto_6
    const-string v5, "+"

    if-ne v2, v14, :cond_1a

    .line 2762
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fputrecentExpandButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)V

    .line 2764
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecent(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetincludeEmpty(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1a
    if-eqz v3, :cond_1c

    .line 2766
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentExpandButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    move-result-object v2

    if-ne v2, v1, :cond_1b

    .line 2767
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fputrecentExpandButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)V

    .line 2770
    :cond_1b
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2772
    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentExpandButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    move-result-object v2

    if-ne v2, v1, :cond_21

    .line 2773
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fputrecentExpandButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)V

    return-void

    :cond_1d
    if-ne v3, v10, :cond_1f

    .line 2777
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;

    .line 2778
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_21

    .line 2779
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpacks(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 2780
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpacks(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz v3, :cond_21

    .line 2782
    iget-object v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-boolean v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v5, :cond_1e

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_7

    :cond_1e
    move v7, v8

    :goto_7
    iget-boolean v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v3, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Lorg/telegram/ui/Components/EmojiView$EmojiPack;I)V

    invoke-virtual {v1, v4, v7, v5, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->set(Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)V

    return-void

    :cond_1f
    if-ne v3, v9, :cond_20

    goto :goto_8

    :cond_20
    const/16 v9, 0x9

    if-ne v3, v9, :cond_22

    :cond_21
    :goto_8
    return-void

    .line 2818
    :cond_22
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2819
    iput-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 2820
    iput-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->particlesColor:Ljava/lang/Integer;

    .line 2821
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    .line 2822
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2823
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v3, v9, v10, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 2827
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v13, :cond_23

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-nez v3, :cond_24

    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v5, :cond_25

    .line 2828
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_b

    .line 2829
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v13, :cond_28

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_26

    goto :goto_a

    .line 2832
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecent(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_27

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentExpanded(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_9

    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecent(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetincludeEmpty(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v4

    add-int/2addr v4, v3

    :goto_9
    move v3, v4

    goto :goto_b

    .line 2830
    :cond_28
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecent(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2835
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetincludeEmpty(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v14, :cond_29

    move v4, v7

    goto :goto_c

    :cond_29
    move v4, v8

    :goto_c
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v6

    if-eq v6, v14, :cond_2a

    move v6, v7

    goto :goto_d

    :cond_2a
    move v6, v8

    :goto_d
    add-int/2addr v4, v6

    if-ne v2, v4, :cond_2b

    .line 2836
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2837
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    const/high16 v3, 0x40a00000    # 5.0f

    .line 2838
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 2839
    iput-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2840
    iput-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2841
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2842
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_52

    .line 2843
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_2a

    .line 2845
    :cond_2b
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-ne v4, v12, :cond_30

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v14, :cond_2c

    move v4, v7

    goto :goto_e

    :cond_2c
    move v4, v8

    :goto_e
    sub-int v4, v2, v4

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v6

    if-eq v6, v14, :cond_2d

    move v6, v7

    goto :goto_f

    :cond_2d
    move v6, v8

    :goto_f
    sub-int/2addr v4, v6

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstandardEmojis(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_30

    .line 2846
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v14, :cond_2e

    move v3, v7

    goto :goto_10

    :cond_2e
    move v3, v8

    :goto_10
    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v14, :cond_2f

    goto :goto_11

    :cond_2f
    move v7, v8

    :goto_11
    sub-int/2addr v2, v7

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetincludeEmpty(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    sub-int/2addr v2, v3

    .line 2847
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetstandardEmojis(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2848
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 2849
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isFirstReactions:Z

    .line 2850
    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2851
    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2852
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2853
    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    return-void

    .line 2855
    :cond_30
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v14, :cond_31

    move v4, v7

    goto :goto_12

    :cond_31
    move v4, v8

    :goto_12
    sub-int v4, v2, v4

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v6

    if-eq v6, v14, :cond_32

    move v6, v7

    goto :goto_13

    :cond_32
    move v6, v8

    :goto_13
    sub-int/2addr v4, v6

    if-ge v4, v3, :cond_3a

    .line 2856
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v14, :cond_33

    move v3, v7

    goto :goto_14

    :cond_33
    move v3, v8

    :goto_14
    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v14, :cond_34

    move v3, v7

    goto :goto_15

    :cond_34
    move v3, v8

    :goto_15
    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetincludeEmpty(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    sub-int/2addr v2, v3

    .line 2857
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v13, :cond_35

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2858
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2859
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V

    move v2, v8

    goto/16 :goto_2a

    .line 2860
    :cond_35
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v5, :cond_37

    .line 2861
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecentStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2862
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V

    if-eqz v2, :cond_36

    .line 2863
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto/16 :goto_19

    :cond_36
    move v7, v8

    goto/16 :goto_19

    .line 2865
    :cond_37
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrecent(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v2, :cond_38

    move-object v3, v11

    goto :goto_16

    .line 2866
    :cond_38
    iget-object v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_16
    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_39

    .line 2867
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_17

    :cond_39
    move v7, v8

    .line 2868
    :goto_17
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2869
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_3d

    .line 2870
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_19

    .line 2873
    :cond_3a
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgiftsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    sub-int v4, v2, v4

    if-ltz v4, :cond_3e

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgiftsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    sub-int v4, v2, v4

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 2874
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgiftsStartRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2875
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 2876
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 2877
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v4, v3, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    iput-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2878
    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2879
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 2880
    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v3, :cond_3b

    .line 2882
    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    const/high16 v4, -0x70000000

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->particlesColor:Ljava/lang/Integer;

    .line 2884
    :cond_3b
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v3, :cond_3c

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_18

    :cond_3c
    move v7, v8

    .line 2885
    :goto_18
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2886
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_3d

    .line 2887
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :cond_3d
    :goto_19
    move v2, v7

    goto/16 :goto_2a

    .line 2889
    :cond_3e
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetdefaultStatuses(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4a

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v14, :cond_3f

    move v4, v7

    goto :goto_1a

    :cond_3f
    move v4, v8

    :goto_1a
    sub-int v4, v2, v4

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    if-eq v5, v14, :cond_40

    move v5, v7

    goto :goto_1b

    :cond_40
    move v5, v8

    :goto_1b
    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    sub-int/2addr v4, v7

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    move v5, v8

    goto :goto_1c

    :cond_41
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v7

    :goto_1c
    sub-int/2addr v4, v5

    if-ltz v4, :cond_4a

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v14, :cond_42

    move v4, v7

    goto :goto_1d

    :cond_42
    move v4, v8

    :goto_1d
    sub-int v4, v2, v4

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    if-eq v5, v14, :cond_43

    move v5, v7

    goto :goto_1e

    :cond_43
    move v5, v8

    :goto_1e
    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    sub-int/2addr v4, v7

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_44

    move v5, v8

    goto :goto_1f

    :cond_44
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v7

    :goto_1f
    sub-int/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetdefaultStatuses(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4a

    .line 2890
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsearchRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v14, :cond_45

    move v4, v7

    goto :goto_20

    :cond_45
    move v4, v8

    :goto_20
    sub-int/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlongtapHintRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v14, :cond_46

    move v4, v7

    goto :goto_21

    :cond_46
    move v4, v8

    :goto_21
    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    sub-int/2addr v2, v7

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v8

    goto :goto_22

    :cond_47
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgifts(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v7

    :goto_22
    sub-int/2addr v2, v3

    .line 2891
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetdefaultStatuses(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v2, :cond_48

    move-object v3, v11

    goto :goto_23

    .line 2892
    :cond_48
    iget-object v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_23
    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_49

    .line 2893
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_24

    :cond_49
    move v7, v8

    .line 2894
    :goto_24
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2895
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_3d

    .line 2896
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_19

    :cond_4a
    move v3, v8

    .line 2899
    :goto_25
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToSection(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 2900
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToSection(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2901
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpositionToSection(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-ltz v5, :cond_4b

    .line 2902
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpacks(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_26

    :cond_4b
    move-object v5, v11

    :goto_26
    if-nez v5, :cond_4c

    goto :goto_29

    .line 2906
    :cond_4c
    iget-boolean v6, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v6, :cond_4d

    iget-object v6, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_27

    :cond_4d
    iget-object v6, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v9, 0x18

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_27
    sub-int v4, v2, v4

    sub-int/2addr v4, v7

    if-ltz v4, :cond_50

    if-ge v4, v6, :cond_50

    .line 2909
    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_50

    .line 2911
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2912
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V

    goto :goto_28

    .line 2914
    :cond_4e
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2915
    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v5, :cond_4f

    .line 2916
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2918
    :cond_4f
    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v5, v4, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    iput-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2920
    :goto_28
    iput-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_50
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2924
    :cond_51
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_36

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto/16 :goto_19

    .line 2927
    :cond_52
    :goto_2a
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v3, :cond_55

    .line 2928
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v3, :cond_54

    .line 2930
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_53

    .line 2931
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mgetCacheType(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v5, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    goto :goto_2b

    .line 2933
    :cond_53
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mgetCacheType(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    .line 2935
    :goto_2b
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2937
    :cond_54
    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    .line 2939
    :cond_55
    invoke-virtual {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2941
    :goto_2c
    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p1, 0x6

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 2545
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p2, v1, v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 2547
    new-instance p2, Landroid/widget/ImageView;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_2
    const/16 v1, 0x8

    const/4 v2, 0x3

    if-eq p2, v2, :cond_b

    if-eq p2, v0, :cond_b

    if-ne p2, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 2559
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_4

    :cond_4
    const/4 v1, 0x5

    if-ne p2, v1, :cond_5

    .line 2561
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_5
    if-ne p2, p1, :cond_9

    .line 2563
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$1;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Landroid/content/Context;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 2569
    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2570
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 2571
    sget p1, Lorg/telegram/messenger/R$string;->SelectTopicIconHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2572
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    goto :goto_1

    .line 2575
    :cond_7
    sget p1, Lorg/telegram/messenger/R$string;->ReactionsLongtapHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2573
    :cond_8
    :goto_1
    sget p1, Lorg/telegram/messenger/R$string;->EmojiLongtapHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/16 p1, 0x11

    .line 2577
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2578
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_9
    const/4 p1, 0x7

    if-ne p2, p1, :cond_a

    .line 2581
    new-instance p2, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x34

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    .line 2582
    const-string p1, "searchbox"

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 2584
    :cond_a
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto :goto_4

    .line 2549
    :cond_b
    :goto_3
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    if-ne p2, v1, :cond_c

    .line 2551
    iput-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2552
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 2553
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetforumIconDrawable(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 2554
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fputforumIconImage(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    const/high16 p2, 0x41000000    # 8.0f

    .line 2555
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    move-object p2, p1

    .line 2586
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$menterAnimationInProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 2587
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2588
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2590
    :cond_d
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
