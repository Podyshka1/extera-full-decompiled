.class Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData$1;
.super Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;Landroid/content/Context;IZLorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 11838
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;

    iput-object p5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData$1;->val$this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 2

    .line 11841
    invoke-super {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    .line 11842
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;->tabType:I

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetMediaPage(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11843
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetanimationSupportingListView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 11844
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;->adapterSupport:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz v0, :cond_3

    .line 11847
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    :cond_3
    return-void
.end method
