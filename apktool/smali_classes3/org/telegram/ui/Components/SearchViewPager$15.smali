.class Lorg/telegram/ui/Components/SearchViewPager$15;
.super Lorg/telegram/ui/Components/HashtagsSearchAdapter;
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


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$15;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected scrollToTop(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$15;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 577
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$15;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgethashtagSearchLayoutManager(Lorg/telegram/ui/Components/SearchViewPager;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 568
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$15;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$15;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$15;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
