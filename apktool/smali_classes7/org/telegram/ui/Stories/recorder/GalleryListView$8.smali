.class Lorg/telegram/ui/Stories/recorder/GalleryListView$8;
.super Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V
    .locals 1

    .line 350
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/ui/Stories/recorder/GalleryListView-IA;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 5

    .line 361
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v1, Lorg/telegram/messenger/R$string;->SearchImagesType:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoResultFoundFor:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;->query:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLoadingUpdate(Z)V
    .locals 2

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSearchProgress(Z)V

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void
.end method
