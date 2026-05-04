.class Lorg/telegram/ui/Components/EmojiView$10;
.super Lorg/telegram/ui/Components/EmojiTabsStrip;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;Z)V
    .locals 0

    .line 1868
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    move-object p1, p0

    invoke-direct/range {p1 .. p10}, Lorg/telegram/ui/Components/EmojiTabsStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method protected allowEmojisForNonPremium()Z
    .locals 1

    .line 1876
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetallowEmojisForNonPremium(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    return v0
.end method

.method protected doIncludeFeatured()Z
    .locals 6

    .line 1892
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfeaturedEmojiSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfeaturedEmojiSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "emoji_featured_hidden"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfeaturedEmojiSets(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1948
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimatedEmojiTextColorFilter(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    return-object v0
.end method

.method protected isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z
    .locals 3

    .line 1871
    iget-boolean v0, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onTabClick(I)Z
    .locals 8

    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSmoothScrolling(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1900
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1901
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->search(Ljava/lang/String;)V

    .line 1903
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1904
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetcategoriesListView(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :cond_2
    if-nez p1, :cond_3

    .line 1909
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetneedEmojiSearch(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 1914
    sget-object v3, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetsectionToPosition(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 1915
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetsectionToPosition(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_7

    .line 1919
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1920
    sget-object v4, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr p1, v4

    if-eqz v3, :cond_7

    if-ltz p1, :cond_7

    .line 1921
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_7

    move v0, v1

    .line 1923
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojipacksProcessed(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1924
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojipacksProcessed(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    .line 1929
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetsectionToPosition(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object p1

    sget-object v3, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 p1, -0x3ef00000    # -9.0f

    .line 1931
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_3

    :cond_7
    move p1, v1

    :goto_3
    if-eqz v0, :cond_8

    .line 1938
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 1939
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mupdateEmojiTabsPosition(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 1940
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mscrollEmojisToPosition(Lorg/telegram/ui/Components/EmojiView;II)V

    .line 1941
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckEmojiTabY(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 1881
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1882
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTabsShadow(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTabsShadow(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1886
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
