.class public Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedMediaPreloader"
.end annotation


# instance fields
.field private checkedHasSavedMessages:Z

.field private delegates:Ljava/util/ArrayList;

.field private dialogId:J

.field public hasPreviews:Z

.field public hasSavedMessages:Z

.field private lastLoadMediaCount:[I

.field private lastMediaCount:[I

.field private mediaCount:[I

.field private mediaMergeCount:[I

.field private mediaWasLoaded:Z

.field private mergeDialogId:J

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

.field private topicId:J


# direct methods
.method public static synthetic $r8$lambda$ca2kxmK_vLdAuuNueHhG_TccQT8(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_dfmFpkBTIm0Mk4WbLSL9J29sA(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgettopicId(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    return-wide v0
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 763
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    .line 764
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    .line 765
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    .line 766
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    .line 799
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 800
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_0

    .line 801
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/ChatActivityInterface;

    .line 802
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 803
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getMergeDialogId()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    .line 804
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getTopicId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    .line 805
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 806
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/SavedMessagesController;->hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 816
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_2

    .line 817
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    .line 818
    iget-boolean v1, v0, Lorg/telegram/ui/ProfileActivity;->saved:Z

    if-eqz v1, :cond_1

    .line 819
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 820
    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 823
    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getTopicId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    .line 825
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 826
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/SavedMessagesController;->hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 837
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz v0, :cond_3

    .line 838
    check-cast p1, Lorg/telegram/ui/Components/MediaActivity;

    .line 839
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActivity;->getDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    goto :goto_0

    .line 840
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_4

    .line 841
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    :cond_4
    :goto_0
    const/4 p1, 0x6

    .line 860
    new-array p1, p1, [Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    const/4 p1, 0x0

    move v0, p1

    .line 861
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 862
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-direct {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;-><init>()V

    aput-object v2, v1, v0

    .line 863
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, -0x80000000

    goto :goto_2

    :cond_5
    const v2, 0x7fffffff

    :goto_2
    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setMaxId(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 865
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    .line 867
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_7

    return-void

    .line 868
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 869
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 870
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 871
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 872
    sget v0, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 873
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 874
    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 875
    sget v0, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 876
    sget v0, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 877
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 878
    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 879
    sget v0, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 2

    .line 807
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    const/4 v0, 0x1

    .line 808
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->checkedHasSavedMessages:Z

    if-eqz p1, :cond_0

    .line 810
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 811
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 2

    .line 827
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    const/4 v0, 0x1

    .line 828
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->checkedHasSavedMessages:Z

    if-eqz p1, :cond_0

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 831
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadMediaCounts()V
    .locals 7

    .line 1195
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1196
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JJI)V

    .line 1197
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 9

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1204
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    iget-wide v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_1

    neg-long v1, v1

    .line 1205
    iput-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    .line 1206
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    iget-wide v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JJI)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 926
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v1, v2, :cond_9

    .line 927
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 928
    aget-object v1, p3, v8

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 929
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v1, v1, v16

    if-nez v1, :cond_43

    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v9, v10, v1

    if-eqz v9, :cond_0

    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_43

    .line 930
    :cond_0
    aget-object v9, p3, v6

    check-cast v9, [I

    cmp-long v1, v10, v1

    if-nez v1, :cond_1

    .line 932
    iput-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    goto :goto_0

    .line 934
    :cond_1
    iput-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    :goto_0
    move v1, v7

    .line 936
    :goto_1
    array-length v2, v9

    if-ge v1, v2, :cond_8

    .line 937
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v2, v2, v1

    if-ltz v2, :cond_2

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v12, v12, v1

    if-ltz v12, :cond_2

    .line 938
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    add-int/2addr v2, v12

    aput v2, v13, v1

    goto :goto_2

    :cond_2
    if-ltz v2, :cond_3

    .line 940
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aput v2, v12, v1

    goto :goto_2

    .line 942
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v12, v12, v1

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v2, v1

    .line 944
    :goto_2
    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v2, v10, v12

    if-nez v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v2, v2, v1

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    aget v2, v2, v1

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v12, v12, v1

    if-eq v2, v12, :cond_7

    if-nez v1, :cond_5

    .line 947
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v7

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v2, v8, :cond_4

    move v15, v4

    goto :goto_3

    :cond_4
    if-ne v2, v6, :cond_5

    move v15, v3

    goto :goto_3

    :cond_5
    move v15, v1

    .line 953
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    aget v12, v12, v1

    if-ne v12, v5, :cond_6

    const/16 v12, 0x1e

    goto :goto_4

    :cond_6
    const/16 v12, 0x14

    :goto_4
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object/from16 v23, v9

    move-object v9, v2

    move-object/from16 v2, v23

    invoke-virtual/range {v9 .. v22}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIJIIILorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Ljava/lang/String;)V

    .line 954
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v12, v12, v1

    aput v12, v9, v1

    goto :goto_5

    :cond_7
    move-object v2, v9

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object v9, v2

    goto/16 :goto_1

    .line 957
    :cond_8
    iput-boolean v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaWasLoaded:Z

    .line 958
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6
    if-ge v7, v1, :cond_43

    .line 959
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 962
    :cond_9
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    const/4 v9, 0x4

    if-ne v1, v2, :cond_e

    .line 963
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 964
    aget-object v3, p3, v8

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 965
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v5, v1, v10

    if-eqz v5, :cond_a

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v5, v1, v10

    if-nez v5, :cond_43

    :cond_a
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v3, v10, v3

    if-nez v3, :cond_43

    .line 966
    aget-object v3, p3, v9

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 967
    aget-object v4, p3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 968
    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_b

    .line 969
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aput v4, v1, v3

    goto :goto_7

    .line 971
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aput v4, v1, v3

    .line 973
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v1, v1, v3

    if-ltz v1, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v2, v2, v3

    if-ltz v2, :cond_c

    .line 974
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    add-int/2addr v1, v2

    aput v1, v4, v3

    goto :goto_8

    :cond_c
    if-ltz v1, :cond_d

    .line 976
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aput v1, v2, v3

    goto :goto_8

    .line 978
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v2, v2, v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v3

    .line 980
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_9
    if-ge v7, v1, :cond_43

    .line 981
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 984
    :cond_e
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    const-wide/16 v10, 0x0

    if-ne v1, v2, :cond_1a

    .line 985
    aget-object v1, p3, v6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_20

    .line 989
    :cond_f
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    aget-object v3, p3, v7

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_43

    .line 990
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    .line 991
    aget-object v2, p3, v8

    check-cast v2, Ljava/util/ArrayList;

    .line 992
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    goto :goto_a

    :cond_10
    move v3, v5

    :goto_a
    move v4, v7

    .line 993
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_19

    .line 994
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 995
    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v14, v12, v10

    if-eqz v14, :cond_11

    iget-object v14, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3, v14, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_11

    goto/16 :goto_d

    .line 998
    :cond_11
    iget-object v12, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v12

    if-eqz v12, :cond_18

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v12

    if-eqz v12, :cond_12

    goto :goto_d

    .line 1001
    :cond_12
    iget-object v12, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v12}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v12

    if-ne v12, v5, :cond_13

    goto :goto_d

    :cond_13
    if-nez v12, :cond_14

    .line 1005
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v7

    iget v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v13, v6, :cond_14

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v13

    if-nez v13, :cond_14

    goto :goto_d

    :cond_14
    if-nez v12, :cond_15

    .line 1008
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v7

    iget v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v13, v8, :cond_15

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v13

    if-eqz v13, :cond_15

    goto :goto_d

    .line 1011
    :cond_15
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v12

    iget-boolean v14, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v14, :cond_16

    .line 1012
    invoke-virtual {v13, v9, v7, v8, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    .line 1014
    :cond_16
    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v9, v13, v10

    if-nez v9, :cond_17

    .line 1015
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v12

    iget v13, v9, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    add-int/2addr v13, v8

    iput v13, v9, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    :cond_17
    move v9, v7

    .line 1017
    :goto_c
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v12

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_18

    .line 1018
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v12

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v14, v13, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/2addr v14, v8

    iput v14, v13, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_18
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 1021
    :cond_19
    invoke-direct {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    return-void

    .line 1023
    :cond_1a
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne v1, v2, :cond_1c

    .line 1024
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Boolean;

    .line 1025
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_20

    .line 1028
    :cond_1b
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/Integer;

    .line 1029
    aget-object v2, p3, v8

    check-cast v2, Ljava/lang/Integer;

    .line 1030
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v4, v3

    if-ge v7, v4, :cond_43

    .line 1031
    aget-object v3, v3, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->replaceMid(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 1033
    :cond_1c
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    if-ne v1, v2, :cond_23

    .line 1034
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v5, 0x3

    .line 1035
    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1036
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v10

    if-ne v5, v10, :cond_43

    .line 1037
    aget-object v5, p3, v9

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1d

    if-eq v5, v4, :cond_1d

    if-eq v5, v3, :cond_1d

    if-eq v5, v8, :cond_1d

    if-eq v5, v6, :cond_1d

    if-eq v5, v9, :cond_1d

    .line 1039
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v5

    aget-object v10, p3, v8

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 1041
    :cond_1d
    aget-object v6, p3, v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1042
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    .line 1043
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_1e

    move v8, v7

    :cond_1e
    if-eqz v5, :cond_1f

    if-eq v5, v4, :cond_1f

    if-ne v5, v3, :cond_21

    .line 1045
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v7

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-eq v5, v1, :cond_20

    goto/16 :goto_20

    :cond_20
    move v5, v7

    .line 1050
    :cond_21
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1051
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v5

    const/4 v2, 0x5

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v8, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setEndReached(IZ)V

    :cond_22
    move v1, v7

    .line 1053
    :goto_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 1054
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1055
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2, v8, v7, v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1058
    :cond_23
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne v1, v2, :cond_34

    .line 1059
    aget-object v1, p3, v6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    goto/16 :goto_20

    .line 1063
    :cond_24
    aget-object v1, p3, v8

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1065
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1066
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    goto :goto_10

    :cond_25
    const/4 v3, 0x0

    .line 1070
    :goto_10
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_27

    cmp-long v4, v1, v10

    if-nez v4, :cond_26

    .line 1071
    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v4, v12, v10

    if-nez v4, :cond_28

    :cond_26
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28

    goto/16 :goto_20

    :cond_27
    cmp-long v1, v1, v10

    if-eqz v1, :cond_28

    goto/16 :goto_20

    .line 1080
    :cond_28
    aget-object v1, p3, v7

    check-cast v1, Ljava/util/ArrayList;

    .line 1081
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    .line 1082
    :cond_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v7

    move v4, v3

    :goto_11
    if-ge v3, v2, :cond_2f

    move v6, v7

    .line 1083
    :goto_12
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v12, v9

    if-ge v6, v12, :cond_2e

    .line 1084
    aget-object v9, v9, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9, v12, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->deleteMessage(II)Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    if-eqz v9, :cond_2d

    .line 1086
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    iget-wide v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v4, v12, v14

    if-nez v4, :cond_2b

    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v4, v12, v10

    if-eqz v4, :cond_2a

    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5, v4, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v12

    iget-wide v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v4, v12, v14

    if-nez v4, :cond_2b

    .line 1087
    :cond_2a
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v9, v4, v6

    if-lez v9, :cond_2c

    add-int/lit8 v9, v9, -0x1

    .line 1088
    aput v9, v4, v6

    goto :goto_13

    .line 1091
    :cond_2b
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v9, v4, v6

    if-lez v9, :cond_2c

    add-int/lit8 v9, v9, -0x1

    .line 1092
    aput v9, v4, v6

    :cond_2c
    :goto_13
    move v4, v8

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2f
    if-eqz v4, :cond_33

    move v1, v7

    .line 1100
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 1101
    aget v2, v2, v1

    if-ltz v2, :cond_30

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v3, v3, v1

    if-ltz v3, :cond_30

    .line 1102
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    add-int/2addr v2, v3

    aput v2, v4, v1

    goto :goto_15

    :cond_30
    if-ltz v2, :cond_31

    .line 1104
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aput v2, v3, v1

    goto :goto_15

    .line 1106
    :cond_31
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v3, v3, v1

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v1

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1109
    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_16
    if-ge v7, v1, :cond_33

    .line 1110
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 1113
    :cond_33
    invoke-direct {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    return-void

    .line 1114
    :cond_34
    sget v2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    if-ne v1, v2, :cond_3e

    .line 1115
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1116
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_35

    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v6, v1, v12

    if-eqz v6, :cond_35

    goto/16 :goto_20

    :cond_35
    cmp-long v1, v1, v3

    if-nez v1, :cond_36

    move v1, v7

    goto :goto_17

    :cond_36
    move v1, v8

    .line 1120
    :goto_17
    aget-object v2, p3, v8

    check-cast v2, Ljava/util/ArrayList;

    .line 1121
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    goto :goto_18

    :cond_37
    move v3, v5

    .line 1122
    :goto_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v7

    :goto_19
    if-ge v6, v4, :cond_43

    .line 1123
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1124
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    .line 1125
    iget-object v13, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3, v13, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v13

    .line 1126
    iget-object v15, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v15}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v15

    move/from16 v17, v7

    .line 1127
    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v18, v7, v10

    if-eqz v18, :cond_38

    cmp-long v7, v13, v7

    if-eqz v7, :cond_38

    goto :goto_1c

    :cond_38
    move/from16 v7, v17

    .line 1130
    :goto_1a
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v13, v8

    if-ge v7, v13, :cond_3d

    .line 1131
    aget-object v8, v8, v7

    iget-object v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_3c

    .line 1133
    iget-object v13, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v13}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v13

    if-eq v15, v5, :cond_3a

    if-eq v13, v15, :cond_39

    goto :goto_1b

    .line 1146
    :cond_39
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v7

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_3d

    .line 1148
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v7

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v13, v13, v1

    invoke-virtual {v13, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1149
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v12, v7

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 1135
    :cond_3a
    :goto_1b
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v7

    invoke-virtual {v8, v12, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->deleteMessage(II)Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_3b

    .line 1137
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v9, v8, v7

    if-lez v9, :cond_3d

    add-int/lit8 v9, v9, -0x1

    .line 1138
    aput v9, v8, v7

    goto :goto_1c

    .line 1141
    :cond_3b
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v9, v8, v7

    if-lez v9, :cond_3d

    add-int/lit8 v9, v9, -0x1

    .line 1142
    aput v9, v8, v7

    goto :goto_1c

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_3d
    :goto_1c
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v17

    const/4 v8, 0x1

    goto/16 :goto_19

    :cond_3e
    move/from16 v17, v7

    .line 1156
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne v1, v2, :cond_3f

    .line 1157
    aget-object v1, p3, v17

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1158
    iget-wide v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v4, v2, v10

    if-gez v4, :cond_43

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    neg-long v2, v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_43

    .line 1159
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void

    .line 1161
    :cond_3f
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne v1, v2, :cond_41

    .line 1162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v2, v17

    .line 1163
    :goto_1d
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v4, v3

    if-ge v2, v4, :cond_40

    .line 1164
    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1166
    :cond_40
    aget-object v2, p3, v17

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 1168
    sget-object v3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$1;

    move/from16 v5, p2

    invoke-direct {v4, v0, v1, v2, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1183
    :cond_41
    sget v2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    if-ne v1, v2, :cond_43

    .line 1184
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/SavedMessagesController;->containsDialog(J)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v8, 0x1

    goto :goto_1e

    :cond_42
    move/from16 v8, v17

    .line 1185
    :goto_1e
    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->checkedHasSavedMessages:Z

    if-eqz v1, :cond_43

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    if-eq v1, v8, :cond_43

    .line 1186
    iput-boolean v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    .line 1187
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v7, v17

    :goto_1f
    if-ge v7, v1, :cond_43

    .line 1188
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_43
    :goto_20
    return-void
.end method

.method public getLastMediaCount()[I
    .locals 1

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    return-object v0
.end method

.method public getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;
    .locals 1

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    return-object v0
.end method

.method public getTopicId()J
    .locals 2

    .line 779
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    return-wide v0
.end method

.method public hasSharedMedia()Z
    .locals 7

    .line 783
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    .line 785
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 786
    aget v3, v0, v2

    if-lez v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    if-eqz v0, :cond_3

    return v4

    .line 792
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController;->hasDialogs()Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    :cond_4
    return v1
.end method

.method public isMediaWasLoaded()Z
    .locals 1

    .line 1211
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaWasLoaded:Z

    return v0
.end method

.method public onDestroy(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 891
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->onDestroy(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public onDestroy(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 1

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 901
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 903
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 904
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 905
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 906
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 907
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 908
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 909
    sget p2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 910
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 911
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 912
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 913
    sget p2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public removeDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V
    .locals 1

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
