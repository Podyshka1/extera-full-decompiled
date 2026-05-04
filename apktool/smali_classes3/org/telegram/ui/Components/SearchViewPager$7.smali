.class Lorg/telegram/ui/Components/SearchViewPager$7;
.super Lorg/telegram/ui/Components/DialogsChannelsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchViewPager;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchViewPager;

.field final synthetic val$fragment:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iput-object p7, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected hideKeyboard()V
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public update(Z)V
    .locals 3

    .line 415
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingMessages:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingChannels:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMyChannels:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannels:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchRecommendedChannels:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 418
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoChannelsTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoChannelsMessage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 422
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$7;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
