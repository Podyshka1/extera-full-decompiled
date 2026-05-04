.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field final synthetic val$currentAccount:I

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->val$currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public applyReorder(Ljava/util/ArrayList;)V
    .locals 7

    .line 1158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1163
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->reorder(Ljava/util/ArrayList;)V

    .line 1165
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1168
    iget-boolean v0, p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 1170
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget p1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->indexOf(I)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    .line 1171
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgettabsView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    .line 1174
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetsendCollectionsOrder(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1175
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetsendCollectionsOrder(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bindView(Landroid/view/View;II)V
    .locals 1

    .line 1105
    check-cast p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1110
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p2

    const/4 p3, 0x0

    goto :goto_0

    .line 1113
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    sub-int/2addr p2, v0

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getListByIndex(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p2

    move p3, v0

    .line 1115
    :goto_0
    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->bind(ZLorg/telegram/ui/Stars/StarsController$GiftsList;)V

    .line 1116
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetvisibleHeight(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setVisibleHeight(I)V

    .line 1117
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object p2, p2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setHasTabs(Z)V

    return-void
.end method

.method public canReorder(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public createView(I)Landroid/view/View;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1094
    :cond_0
    new-instance p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->val$currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    .line 1100
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    return p1
.end method

.method public getItemTitle(I)Ljava/lang/CharSequence;
    .locals 5

    if-nez p1, :cond_0

    .line 1130
    sget p1, Lorg/telegram/messenger/R$string;->Gift2CollectionAll:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1133
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1137
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_2

    .line 1139
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 1140
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1141
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v4, "e "

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1142
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-direct {v4, p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    const/16 p1, 0x21

    const/4 v2, 0x0

    .line 1143
    invoke-virtual {v3, v4, v2, v1, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1144
    invoke-virtual {v0, v2, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
