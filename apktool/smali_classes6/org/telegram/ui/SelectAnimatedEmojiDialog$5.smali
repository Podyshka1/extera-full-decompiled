.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;
.super Lorg/telegram/ui/Components/EmojiTabsStrip;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;II)V
    .locals 0

    .line 668
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput p11, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->val$type:I

    move-object p1, p0

    invoke-direct/range {p1 .. p10}, Lorg/telegram/ui/Components/EmojiTabsStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method protected getEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpremiumStarColorFilter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method protected onTabClick(I)Z
    .locals 6

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsmoothScrolling(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 680
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->val$type:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_2

    .line 682
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fputshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    .line 683
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetcachedEmojiTabs(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)[Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 685
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowStickers(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_stickers:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_smiles:I

    :goto_0
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1, v3, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mupdateRows(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZZ)V

    .line 688
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return v3

    .line 694
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isGiftsVisible()Z

    move-result v0

    add-int/2addr v0, v3

    .line 695
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isGiftsVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne p1, v3, :cond_3

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetgiftsSectionRow(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    goto :goto_1

    .line 697
    :cond_3
    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->val$type:I

    if-ne v4, v2, :cond_5

    if-nez p1, :cond_5

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    if-lez p1, :cond_4

    .line 699
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsectionToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v2

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 700
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsectionToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 702
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->val$type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    const/4 v1, 0x7

    :cond_6
    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mscrollToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;II)V

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrolledByUserOnce:Z

    const/4 v0, 0x0

    .line 705
    invoke-virtual {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;)V

    .line 706
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :cond_7
    return v3
.end method

.method protected onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V
    .locals 1

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetshowAnimator(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 715
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 716
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
