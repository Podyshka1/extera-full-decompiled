.class Lorg/telegram/ui/Components/SearchViewPager$11;
.super Lorg/telegram/ui/Components/DialogsBotsAdapter;
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
.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$11;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iput-object p8, p0, Lorg/telegram/ui/Components/SearchViewPager$11;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/DialogsBotsAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public update(Z)V
    .locals 2

    .line 495
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$11;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingMessages:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingBots:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 497
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$11;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$11;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
