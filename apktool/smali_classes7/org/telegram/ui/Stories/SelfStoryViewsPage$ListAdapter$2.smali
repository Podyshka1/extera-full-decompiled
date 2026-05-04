.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$2;
.super Lorg/telegram/ui/Cells/ReactedUserHolderView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
    .locals 0

    .line 796
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$2;->this$1:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Cells/ReactedUserHolderView;-><init>(IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    return-void
.end method


# virtual methods
.method public openStory(JLjava/lang/Runnable;)V
    .locals 2

    .line 799
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 803
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->createOverlayStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    .line 804
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady(Ljava/lang/Runnable;)V

    .line 805
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$2;->this$1:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v1

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void
.end method
