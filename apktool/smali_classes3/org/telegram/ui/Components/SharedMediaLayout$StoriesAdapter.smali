.class public Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
.super Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoriesAdapter"
.end annotation


# instance fields
.field private final albumId:I

.field public applyingReorder:Z

.field private id:I

.field private inAlbumStoriesReorder:Z

.field private final isArchive:Z

.field public lastPinnedIds:Ljava/util/ArrayList;

.field private poller:Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;

.field public storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field private supportingAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private final uploadingStories:Ljava/util/ArrayList;


# direct methods
.method static bridge synthetic -$$Nest$fgetpoller(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;)Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->poller:Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;IZ)V
    .locals 7

    .line 9868
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    .line 9869
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    .line 9856
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    .line 10174
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    .line 9870
    iput-boolean p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    .line 9871
    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->albumId:I

    .line 9872
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p2

    .line 9873
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesHashtag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 9874
    iget-object p3, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez p3, :cond_1

    .line 9875
    new-instance p3, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesHashtagUsername()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesHashtagUsername()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesHashtag()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, v1, p4}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p3, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 9877
    :cond_1
    iget-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto/16 :goto_3

    .line 9878
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesArea()Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9879
    iget-object p3, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez p3, :cond_3

    .line 9880
    new-instance p3, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesArea()Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;-><init>(ILorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    iput-object p3, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 9882
    :cond_3
    iget-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto/16 :goto_3

    :cond_4
    if-eqz p4, :cond_5

    .line 9883
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    if-nez p4, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9884
    :cond_6
    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto :goto_3

    .line 9887
    :cond_7
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    .line 9888
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 9889
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_1

    :cond_8
    move p2, v2

    :goto_1
    if-lez p3, :cond_9

    .line 9892
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v2, p3}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JII)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto :goto_3

    .line 9894
    :cond_9
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p3

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    if-eqz p2, :cond_a

    const/4 v1, 0x4

    goto :goto_2

    :cond_a
    if-eqz p4, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    invoke-virtual {p3, v3, v4, v1}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JI)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 9897
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz p2, :cond_c

    .line 9898
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->link()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->id:I

    .line 9899
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$1;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v5, p2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Lorg/telegram/ui/Stories/StoriesController;JILorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->poller:Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;

    goto :goto_4

    :cond_c
    move-object v1, p0

    .line 9930
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->checkColumns()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 9865
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;IZ)V

    return-void
.end method

.method private checkColumns()V
    .locals 5

    .line 9953
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 9956
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetstoriesColumnsCountSet(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetallowStoriesSingleColumn(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v0

    if-le v0, v1, :cond_6

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9957
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ge v0, v2, :cond_4

    .line 9958
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v2

    aput v2, v0, v1

    .line 9959
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9960
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mswitchToCurrentSelectedMode(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 9962
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v1

    if-ne v2, v1, :cond_3

    move v3, v1

    :cond_3
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputallowStoriesSingleColumn(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    goto :goto_0

    .line 9963
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetallowStoriesSingleColumn(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9964
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputallowStoriesSingleColumn(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 9965
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v2, 0x2

    sget v4, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    .line 9966
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9967
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mswitchToCurrentSelectedMode(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 9970
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputstoriesColumnsCountSet(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public canReorder(I)Z
    .locals 6

    .line 10160
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 10161
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1

    return v1

    .line 10162
    :cond_1
    instance-of v2, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 10163
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10164
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    if-ltz p1, :cond_6

    .line 10166
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    goto :goto_0

    .line 10167
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 10168
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-lez v1, :cond_5

    return v3

    .line 10171
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isPinned(I)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public columnsCount()I
    .locals 2

    .line 10012
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 10013
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 10014
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getTabTypeByStoriesAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 10015
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 10017
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetanimateToColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 9940
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    .line 9941
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->unlink(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 9852
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 3

    .line 10028
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10031
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isOnlyCache()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0x13

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 2

    .line 10140
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 10143
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->getTopOffset()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    .line 10144
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 10147
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    .line 10148
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez p1, :cond_2

    goto :goto_0

    .line 10151
    :cond_2
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    int-to-long v0, p1

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getPositionForIndex(I)I
    .locals 1

    .line 10041
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    if-eqz v0, :cond_0

    .line 10042
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->getTopOffset()I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method public bridge synthetic getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    .line 9852
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V

    return-void
.end method

.method public bridge synthetic getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F
    .locals 0

    .line 9852
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result p1

    return p1
.end method

.method public getTopOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTotalItemsCount()I
    .locals 1

    .line 10036
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public load(Z)V
    .locals 3

    .line 10124
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_0

    return-void

    .line 10128
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->columnsCount()I

    move-result v0

    .line 10129
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, v0

    mul-int/2addr v1, v0

    const/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10130
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 9997
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isBot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9998
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9999
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10001
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10004
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10005
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->supportingAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_1

    .line 10006
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    .line 10008
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->checkColumns()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 10073
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 10076
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_c

    .line 10078
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 10079
    :cond_1
    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v0, 0x1

    .line 10080
    iput-boolean v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    const/4 v1, 0x0

    if-ltz p2, :cond_3

    .line 10081
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 10082
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 10083
    iput-boolean v1, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    .line 10084
    iget-object v2, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sharedMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_2

    .line 10085
    new-instance v2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;-><init>()V

    .line 10086
    iget-wide v3, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    iput v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 10087
    iget-object v3, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    .line 10088
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$2;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v4, v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-direct {v3, p0, v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iput-object v3, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sharedMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 10094
    iput-object p2, v3, Lorg/telegram/messenger/MessageObject;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 10096
    :cond_2
    iget-object p2, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sharedMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->columnsCount()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;I)V

    .line 10097
    iput-boolean v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    .line 10098
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setReorder(Z)V

    .line 10099
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    return-void

    .line 10102
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p2, v2

    if-ltz p2, :cond_b

    .line 10103
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_4

    goto/16 :goto_6

    .line 10109
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_5

    .line 10110
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isPinned(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    iput-boolean v2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    .line 10111
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->isBot()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    :goto_1
    move v2, v0

    :goto_2
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setReorder(Z)V

    .line 10112
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchingStories()Z

    move-result v2

    iput-boolean v2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isSearchingHashtag:Z

    .line 10113
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->columnsCount()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;I)V

    .line 10114
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v3, :cond_a

    if-eqz p2, :cond_a

    .line 10115
    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v0

    :goto_3
    aget-object v2, v2, v3

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_9

    move p2, v0

    goto :goto_4

    :cond_9
    move p2, v1

    :goto_4
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto :goto_5

    .line 10117
    :cond_a
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    .line 10119
    :goto_5
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->inAlbumStoriesReorder:Z

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setReordering(ZZ)V

    return-void

    .line 10104
    :cond_b
    :goto_6
    iput-boolean v1, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    const/4 p2, 0x0

    .line 10105
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->columnsCount()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;I)V

    .line 10106
    iput-boolean v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    :cond_c
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 10054
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 10055
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    .line 10056
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    :cond_0
    return-object p1
.end method

.method public onFastScrollSingleTap()V
    .locals 3

    .line 10156
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->showMediaCalendar(IZ)V

    return-void
.end method

.method public bridge synthetic onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 9852
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public bridge synthetic onStartFastScroll()V
    .locals 0

    .line 9852
    invoke-super {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->onStartFastScroll()V

    return-void
.end method

.method public reorderDone()V
    .locals 7

    .line 10213
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10214
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1

    goto :goto_0

    .line 10215
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->applyingReorder:Z

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 10218
    :cond_2
    instance-of v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->albumId:I

    if-lez v1, :cond_3

    goto :goto_1

    .line 10224
    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    goto :goto_3

    .line 10219
    :cond_4
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 10220
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 10221
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10227
    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_6

    move v1, v4

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-nez v1, :cond_8

    move v3, v2

    .line 10229
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 10230
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_7

    move v1, v4

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-eqz v1, :cond_9

    .line 10238
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updatePinnedOrder(Ljava/util/ArrayList;Z)V

    .line 10241
    :cond_9
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->applyingReorder:Z

    return-void
.end method

.method public setInAlbumStoriesReorder(Z)V
    .locals 1

    .line 10065
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->inAlbumStoriesReorder:Z

    if-eq v0, p1, :cond_0

    .line 10066
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->inAlbumStoriesReorder:Z

    :cond_0
    return-void
.end method

.method public swapElements(II)Z
    .locals 5

    .line 10178
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 10179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-ltz p1, :cond_8

    .line 10180
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ltz p2, :cond_8

    .line 10181
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    goto/16 :goto_3

    .line 10184
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    instance-of v0, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->albumId:I

    if-lez v0, :cond_4

    goto :goto_0

    .line 10190
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 10185
    :cond_5
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 10186
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 10187
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10193
    :cond_6
    :goto_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->applyingReorder:Z

    const/4 v3, 0x1

    if-nez v2, :cond_7

    .line 10194
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10195
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10196
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->applyingReorder:Z

    .line 10199
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 10200
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 10202
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10203
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p2, v4, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 10205
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updatePinnedOrder(Ljava/util/ArrayList;Z)V

    .line 10207
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return v3

    :cond_8
    :goto_3
    return v1
.end method
