.class public Lorg/telegram/ui/Stories/StoriesController$StoriesList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoriesList"
.end annotation


# static fields
.field private static lastLoadTime:Ljava/util/HashMap;


# instance fields
.field public final albumId:I

.field private final cachedObjects:Ljava/util/Set;

.field public final currentAccount:I

.field private final destroyRunnable:Ljava/lang/Runnable;

.field public final dialogId:J

.field public done:Z

.field private error:Z

.field public final groupedByDay:Ljava/util/HashMap;

.field private invalidateAfterPreload:Z

.field private final links:Ljava/util/ArrayList;

.field private final loadedObjects:Ljava/util/Set;

.field private loading:Z

.field private maxLinkId:I

.field public final messageObjects:Ljava/util/ArrayList;

.field private final messageObjectsMap:Ljava/util/HashMap;

.field private final notify:Ljava/lang/Runnable;

.field public final pinnedIds:Ljava/util/ArrayList;

.field protected preloading:Z

.field private reqId:I

.field private saving:Z

.field public final seenStories:Ljava/util/HashSet;

.field private showPhotos:Z

.field private showVideos:Z

.field private final tempArr:Ljava/util/ArrayList;

.field protected toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field private totalCount:I

.field public final type:I


# direct methods
.method public static synthetic $r8$lambda$1_q_sMZouFpxHKDFCxK9ssrUrvE(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4067
    new-instance p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda15;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ER-DSccnQVwIBZwM8k6ng6uq9Ek(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$saveCache$8(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I2mzpsXgJt70KibSxQrcG7HZlLs()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$Ls00n55VlySGDxnygMGgDPx8abg(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$invalidateCache$6(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MvWIKKn6MmN4SaFju2OUq1KcgL0(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ZILjava/util/List;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$10(ZILjava/util/List;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RUgScZo5Ys-TZe5WJNOnDjHnHxQ(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TKnqxEKEgk38EzGfL8VHVl_SqZc(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$saveCache$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$WvBQkQDroJM9z3yymNmJZVsqNjY(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$new$1(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XY5tuYON9BOj8BqKbdORqc0JrIg(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$akEYkEYKJUaXEY8atyQeA-HHM98(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$preloadCache$2(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_6_nSJdlQ_z6z8lNqLJ8iFk8qQ(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$invalidateCache$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$djkXNozxsI7NcmZ8S6qYljgpwEI(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$11(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJ3kJ5LzpL6UzbdwoosGHx6lf3E()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$ox89gapFu5P2nL8JM7RhsolrZjQ(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$p509TyV4xK3Z7-Fg5n4CU4UIas8(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    .line 3521
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic $r8$lambda$pz9_-XhZakPvbeoowVNsqmPzqUQ(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4121
    new-instance p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda14;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rjB-3kREfFvzIQ048CwBedVRyZU(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$preloadCache$3(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPVWlmQxR7Fe-aHAIEf-7YfYwlM(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetnotify(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    return-object p0
.end method

.method private constructor <init>(IJIILorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 3328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3199
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    .line 3200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    .line 3229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    .line 3230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    .line 3232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    .line 3233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    .line 3237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 3239
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    .line 3240
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    .line 3260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    .line 3262
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 3319
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    .line 3718
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    .line 3329
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    .line 3330
    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    .line 3331
    iput p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    .line 3332
    iput p5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    .line 3333
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p6}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    if-nez p4, :cond_0

    if-lez p5, :cond_0

    .line 3340
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    .line 3341
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    goto :goto_0

    .line 3343
    :cond_0
    new-instance p1, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    .line 3344
    new-instance p1, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    .line 3347
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloadCache()V

    return-void
.end method

.method synthetic constructor <init>(IJIILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;-><init>(IJIILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static day(Lorg/telegram/messenger/MessageObject;)J
    .locals 6

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3510
    :cond_0
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v0, p0

    .line 3511
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 3512
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    .line 3513
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 3514
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 3515
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v2, v0

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    int-to-long v0, v1

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    int-to-long v0, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private filter(Lorg/telegram/messenger/MessageObject;ZZ)Z
    .locals 1

    if-eqz p1, :cond_3

    .line 3315
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$invalidateCache$5()V
    .locals 1

    .line 3571
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    .line 3572
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    return-void
.end method

.method private synthetic lambda$invalidateCache$6(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 7

    .line 3564
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 3565
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM profile_stories WHERE dialog_id = %d AND type = %d"

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3567
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    .line 3570
    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$10(ZILjava/util/List;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 3724
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZILjava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$load$11(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V
    .locals 6

    const/4 v0, -0x1

    .line 3768
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    .line 3769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoriesList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} loaded {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$smstoryItemMessageIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3771
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3772
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->pinned_to_top:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3774
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3775
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3776
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->users:Ljava/util/ArrayList;

    iget-object v4, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 3777
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    .line 3779
    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->count:I

    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    move p2, v3

    .line 3780
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 3781
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3783
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-lt p1, p2, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez p1, :cond_4

    .line 3785
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-gtz p1, :cond_6

    if-ne p3, v0, :cond_2

    .line 3786
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->firstLoadedId()I

    move-result p3

    .line 3787
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadedId()I

    move-result p1

    .line 3788
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3789
    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3790
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3791
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-lt v1, p3, :cond_3

    if-gt v1, p1, :cond_3

    .line 3792
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 3793
    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    goto :goto_2

    .line 3798
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3799
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3800
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 3801
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 3802
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 3803
    invoke-direct {p0, p3, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    goto :goto_3

    .line 3807
    :cond_6
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 3809
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-eqz p1, :cond_8

    .line 3810
    sget-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    if-nez p1, :cond_7

    .line 3811
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    .line 3813
    :cond_7
    sget-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v5

    const/4 p2, 0x2

    aput-object v0, v2, p2

    const/4 p2, 0x3

    aput-object v1, v2, p2

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3815
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->resetCanLoad()V

    .line 3818
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    return-void
.end method

.method private synthetic lambda$load$12()V
    .locals 5

    const/4 v0, 0x0

    .line 3822
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    const/4 v1, 0x1

    .line 3823
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    .line 3825
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 3760
    instance-of p3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    if-eqz p3, :cond_1

    .line 3761
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 3762
    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    const/4 v0, 0x0

    .line 3763
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3764
    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 3765
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3767
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 3821
    :cond_1
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 3263
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 3333
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$preloadCache$2(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 3

    .line 3438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} preloadCache {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$smstoryItemMessageIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3440
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3441
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 3443
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    .line 3444
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3445
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p4, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3446
    iget-boolean p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 3447
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    .line 3448
    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 3449
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateCache()V

    return-void

    .line 3453
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    invoke-virtual {p3, p5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3454
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    move p3, p2

    .line 3455
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p3, p5, :cond_1

    .line 3456
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, p5, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3458
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 3460
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    if-eqz p1, :cond_2

    .line 3461
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 3465
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p0, p4, p2

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$preloadCache$3(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3359
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3360
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 3361
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3362
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3363
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3364
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3365
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 3367
    :try_start_0
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    .line 3368
    iget-wide v10, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    iget v12, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    iget v13, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v2, v10, v11, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->createLoadStoriesCursor(JII)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v9

    .line 3370
    :goto_0
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    .line 3372
    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_a

    const/4 v12, 0x1

    .line 3374
    invoke-virtual {v11, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    invoke-static {v11, v13, v12}, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v13

    .line 3375
    iget-wide v14, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    iput-wide v14, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 3376
    iget v14, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v14, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    .line 3377
    new-instance v14, Lorg/telegram/messenger/MessageObject;

    iget v15, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-direct {v14, v15, v13}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 3378
    iget-object v15, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    :goto_1
    if-ge v10, v12, :cond_2

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v17

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    move/from16 v17, v10

    .line 3379
    instance-of v10, v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v10, :cond_0

    .line 3380
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 3381
    :cond_0
    instance-of v10, v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v10, :cond_1

    .line 3382
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_2
    move-object/from16 v1, p0

    move/from16 v10, v17

    goto :goto_1

    .line 3385
    :cond_2
    iget-object v1, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    const-wide/16 v17, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_4

    move-object v12, v11

    .line 3386
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    cmp-long v1, v10, v17

    if-ltz v1, :cond_3

    .line 3388
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    neg-long v10, v10

    .line 3390
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v12, v11

    :goto_3
    const/4 v1, 0x0

    .line 3393
    :goto_4
    iget-object v10, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 3394
    iget-object v10, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    if-eqz v10, :cond_5

    .line 3395
    iget-object v10, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    iget-wide v10, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;->channel_id:J

    .line 3396
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3399
    :cond_6
    iget-object v1, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_7

    .line 3400
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    cmp-long v1, v10, v17

    if-ltz v1, :cond_8

    .line 3402
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    neg-long v10, v10

    .line 3404
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3407
    :goto_6
    invoke-virtual {v14, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 3408
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3409
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v1, 0x1

    .line 3411
    invoke-virtual {v9, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    if-ne v10, v1, :cond_9

    .line 3412
    iget v1, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v1, 0x2

    .line 3414
    invoke-virtual {v9, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    if-lez v1, :cond_a

    .line 3416
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v16, 0x1

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    iget v10, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 3420
    :cond_b
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3422
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3423
    invoke-virtual {v2, v0, v7}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/HashSet;Ljava/util/ArrayList;)V

    .line 3425
    :cond_c
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3426
    const-string v0, ","

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v8}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3432
    :cond_d
    :goto_7
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_9

    .line 3429
    :goto_8
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_e

    goto :goto_7

    .line 3437
    :cond_e
    :goto_9
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda16;

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    if-eqz v9, :cond_f

    .line 3432
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3435
    :cond_f
    throw v0
.end method

.method private synthetic lambda$saveCache$7()V
    .locals 1

    const/4 v0, 0x0

    .line 3644
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    return-void
.end method

.method private synthetic lambda$saveCache$8(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 12

    .line 3593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} saveCache {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$smstoryItemMessageIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3595
    :try_start_0
    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    .line 3597
    const-string v2, "REPLACE INTO profile_stories VALUES(?, ?, ?, ?, ?, ?)"

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3599
    :try_start_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "DELETE FROM profile_stories_albums_links WHERE dialog_id = %d AND album_id = %d"

    iget-wide v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3600
    const-string v3, "REPLACE INTO profile_stories_albums_links VALUES(?, ?, ?, ?)"

    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 3602
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 3603
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 3604
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3609
    :cond_0
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3610
    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3612
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3613
    iget-wide v10, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v2, v5, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3614
    iget v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v2, v7, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x3

    .line 3615
    invoke-virtual {v2, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3616
    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3617
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    iget v10, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v10, 0x5

    invoke-virtual {v2, v10, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3618
    iget v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, v5

    const/4 v10, 0x6

    invoke-virtual {v2, v10, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3619
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3620
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3622
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3623
    iget-wide v10, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v5, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3624
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    invoke-virtual {v0, v7, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3625
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3626
    invoke-virtual {v0, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3627
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p3, v0

    move-object v0, v2

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 3634
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_2
    if-eqz v0, :cond_4

    .line 3638
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p3, v0

    .line 3631
    :goto_2
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_3

    .line 3634
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    if-eqz p3, :cond_4

    .line 3638
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3643
    :cond_4
    :goto_3
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_5

    .line 3634
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_5
    if-eqz p3, :cond_6

    .line 3638
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3641
    :cond_6
    throw p1
.end method

.method private pushObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3474
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 3475
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3477
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->day(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v0

    .line 3478
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/TreeSet;

    if-nez p2, :cond_2

    .line 3480
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    .line 3482
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeObject(IZ)Z
    .locals 3

    .line 3486
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_0

    .line 3488
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3490
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3491
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 3493
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->day(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v0

    .line 3494
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_1

    .line 3496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3497
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3498
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static reorder(Ljava/util/Set;Ljava/util/List;)V
    .locals 3

    .line 4130
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4133
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4134
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4137
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4138
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4139
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4143
    :cond_3
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 4144
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private toMessageObject(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 3994
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    iput-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 3995
    iget p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    .line 3996
    new-instance p2, Lorg/telegram/messenger/MessageObject;

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-direct {p2, v0, p1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    const/4 p1, 0x0

    .line 3997
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    return-object p2
.end method


# virtual methods
.method protected canLoad()Z
    .locals 7

    .line 3662
    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3665
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v2, v5, v1

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 3666
    sget-object v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    return v1

    .line 3670
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    return v6
.end method

.method public equal(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p2, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    if-eq p1, p2, :cond_5

    .line 3985
    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-ne v2, v3, :cond_4

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    .line 3989
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v0
.end method

.method public fill(Ljava/util/ArrayList;ZZ)V
    .locals 7

    .line 3275
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3276
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-gtz v0, :cond_1

    .line 3277
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 3278
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 3279
    invoke-direct {p0, v3, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->filter(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3280
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3285
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    move v2, v1

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3286
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 3287
    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v6, :cond_3

    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-gtz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 3289
    :cond_3
    invoke-direct {p0, v5, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->filter(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3290
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-ge v4, v2, :cond_2

    move v2, v4

    goto :goto_1

    .line 3296
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez v0, :cond_a

    .line 3297
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3298
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-ge v3, v4, :cond_a

    .line 3299
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3300
    iget v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v5, :cond_8

    iget v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    if-eq v2, v1, :cond_9

    if-ge v4, v2, :cond_6

    .line 3303
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 3304
    invoke-direct {p0, v3, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->filter(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3305
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3310
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3311
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public fill(Z)V
    .locals 3

    .line 3267
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Ljava/util/ArrayList;ZZ)V

    if-eqz p1, :cond_0

    .line 3269
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3270
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public findMessageObject(I)Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 3975
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method public firstLoadedId()I
    .locals 6

    .line 3707
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 3709
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 3710
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3711
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3712
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    return v1
.end method

.method public getCount()I
    .locals 2

    .line 4018
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    if-eqz v0, :cond_1

    .line 4019
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-gez v0, :cond_0

    .line 4020
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 4022
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 4024
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getDays()Ljava/util/ArrayList;
    .locals 10

    .line 3520
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3521
    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3524
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-lez v4, :cond_1

    .line 3525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3526
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 3527
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3529
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    if-nez v2, :cond_2

    .line 3533
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3534
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3536
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :cond_3
    :goto_1
    if-ge v4, v2, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Long;

    .line 3537
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeSet;

    if-eqz v5, :cond_3

    .line 3539
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3540
    iget v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3541
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 3542
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3545
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3546
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public getLoadedCount()I
    .locals 1

    .line 4014
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected invalidateCache()V
    .locals 3

    .line 3554
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3555
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    return-void

    .line 3559
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->resetCanLoad()V

    .line 3561
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 3562
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isFull()Z
    .locals 1

    .line 4006
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 4002
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOnlyCache()Z
    .locals 1

    .line 3249
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->canLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPinned(I)Z
    .locals 1

    .line 4029
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 4030
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public lastLoadedId()I
    .locals 6

    .line 3695
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 3697
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3698
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 3699
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3700
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    return v1
.end method

.method public link()I
    .locals 3

    .line 3202
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    .line 3203
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3204
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3205
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return v0
.end method

.method public load(Ljava/util/List;)Z
    .locals 4

    .line 3685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3686
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3691
    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public load(ZI)Z
    .locals 1

    .line 3680
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public load(ZILjava/util/List;)Z
    .locals 2

    .line 3720
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->canLoad()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 3723
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-eqz v0, :cond_2

    .line 3724
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ZILjava/util/List;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    return v1

    .line 3730
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez p1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-lez v0, :cond_3

    .line 3731
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAlbumStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAlbumStories;-><init>()V

    .line 3732
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    iput p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAlbumStories;->album_id:I

    .line 3733
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAlbumStories;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3734
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAlbumStories;->offset:I

    .line 3735
    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAlbumStories;->limit:I

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 3738
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;-><init>()V

    .line 3739
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3740
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadedId()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;->offset_id:I

    .line 3741
    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;->limit:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 3744
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;-><init>()V

    .line 3745
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3746
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p3, -0x1

    goto :goto_0

    .line 3750
    :cond_5
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;-><init>()V

    .line 3751
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3752
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadedId()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;->offset_id:I

    .line 3753
    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;->limit:I

    .line 3756
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StoriesList "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} load"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 3758
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    .line 3759
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;I)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    return p2

    :cond_6
    :goto_1
    return v1
.end method

.method protected markAsRead(I)Z
    .locals 5

    .line 3650
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3651
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3652
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    .line 3653
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;-><init>()V

    .line 3654
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3655
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;->id:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3656
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3657
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesReadUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected preloadCache()V
    .locals 3

    .line 3351
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3355
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    .line 3356
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 3357
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public reload()V
    .locals 4

    .line 3833
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3834
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3835
    iput v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    .line 3837
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->resetCanLoad()V

    .line 3838
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3839
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3840
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3841
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3842
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateCache()V

    const/4 v2, 0x0

    .line 3843
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    .line 3844
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    const/16 v2, 0x32

    const/16 v3, 0xa

    .line 3845
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    return-void
.end method

.method protected resetCanLoad()V
    .locals 7

    .line 3674
    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3675
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected saveCache()V
    .locals 5

    .line 3580
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3583
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    .line 3585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3586
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3587
    invoke-virtual {p0, v1, v0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Ljava/util/ArrayList;ZZ)V

    .line 3589
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 3590
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v1, v0, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPhotos()Z
    .locals 1

    .line 3253
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    return v0
.end method

.method public showVideos()Z
    .locals 1

    .line 3257
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    return v0
.end method

.method public unlink(I)V
    .locals 2

    .line 3210
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3211
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3212
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3213
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public updateDeletedStories(Ljava/util/List;)V
    .locals 6

    .line 3849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} updateDeletedStories {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$smstoryItemIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3854
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_5

    .line 3855
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v2, :cond_1

    goto :goto_1

    .line 3859
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    iget v5, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    iget v5, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3862
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3863
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3864
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 3865
    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    :cond_3
    move v1, v3

    .line 3868
    :cond_4
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 3871
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 3872
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateFilters(ZZ)V
    .locals 0

    .line 3243
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    .line 3244
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    const/4 p1, 0x1

    .line 3245
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    return-void
.end method

.method public updateOrderInAlbum(Ljava/util/List;Z)V
    .locals 3

    .line 4076
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reorder(Ljava/util/Set;Ljava/util/List;)V

    .line 4077
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reorder(Ljava/util/Set;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 4078
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    if-eqz p2, :cond_0

    .line 4081
    new-instance p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;-><init>()V

    .line 4082
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4083
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    iput v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->album_id:I

    .line 4084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateAlbum;->order:Ljava/util/ArrayList;

    .line 4085
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    return-void
.end method

.method public updatePinned(Ljava/util/ArrayList;Z)Z
    .locals 6

    .line 4034
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4035
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    .line 4036
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    if-eqz p2, :cond_0

    .line 4037
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4038
    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 4039
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4040
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4043
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storiesPinnedToTopCountMax:I

    .line 4044
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    if-eqz p1, :cond_4

    return v2

    .line 4050
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq p2, v1, :cond_5

    move p2, v2

    goto :goto_3

    :cond_5
    move p2, v3

    :goto_3
    if-nez p2, :cond_7

    .line 4052
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 4053
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v1, v4, :cond_6

    move p2, v2

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz p2, :cond_8

    .line 4061
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4062
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4063
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 4064
    new-instance p2, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;-><init>()V

    .line 4065
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;->id:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4066
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4067
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    return p1
.end method

.method public updatePinnedOrder(Ljava/util/ArrayList;Z)V
    .locals 4

    .line 4090
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-lez v0, :cond_0

    .line 4091
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateOrderInAlbum(Ljava/util/List;Z)V

    return-void

    .line 4095
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4097
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storiesPinnedToTopCountMax:I

    .line 4098
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 4100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4103
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    .line 4105
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 4106
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4113
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4114
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4115
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    if-eqz p2, :cond_5

    .line 4118
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;-><init>()V

    .line 4119
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;->id:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4120
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4121
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    return-void
.end method

.method public updateStories(Ljava/util/List;Z)V
    .locals 9

    .line 3898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} updateStories {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->-$$Nest$smstoryItemIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 3903
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3904
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_f

    .line 3905
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v4, :cond_1

    goto/16 :goto_7

    .line 3909
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/Set;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/Set;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v5

    .line 3910
    :goto_2
    iget v7, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-eq v7, v5, :cond_5

    iget-boolean v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move v7, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v7, v5

    .line 3911
    :goto_4
    iget v8, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-lez v8, :cond_7

    .line 3912
    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_5

    :cond_6
    move v7, v1

    .line 3915
    :cond_7
    :goto_5
    instance-of v8, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v8, :cond_8

    move v7, v1

    :cond_8
    const/4 v8, 0x0

    if-eq v6, v7, :cond_c

    const/4 v3, -0x1

    if-nez v7, :cond_9

    .line 3921
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StoriesList remove story "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3922
    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    .line 3923
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-eq v4, v3, :cond_b

    add-int/lit8 v4, v4, -0x1

    .line 3924
    iput v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    goto :goto_6

    .line 3927
    :cond_9
    iget-boolean v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-eqz v6, :cond_a

    .line 3928
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StoriesList put story "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3929
    invoke-direct {p0, v4, v8}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 3930
    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3931
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-eq v4, v3, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 3932
    iput v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    goto :goto_6

    .line 3934
    :cond_a
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    if-nez v3, :cond_b

    .line 3935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StoriesList cannot put story "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> reload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reload()V

    :cond_b
    :goto_6
    move v3, v5

    goto :goto_7

    :cond_c
    if-eqz v6, :cond_e

    if-eqz v7, :cond_e

    .line 3940
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_d

    if-nez p2, :cond_d

    .line 3941
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {p0, v6, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->equal(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 3942
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StoriesList update story "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3943
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v8}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3948
    :cond_f
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->albumId:I

    if-lez p1, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 3949
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateOrderInAlbum(Ljava/util/List;Z)V

    :cond_10
    if-eqz v3, :cond_11

    .line 3952
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 3953
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_11
    :goto_8
    return-void
.end method

.method public updateStoryItemsAlbums(ILjava/util/List;Z)V
    .locals 3

    .line 3960
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 3961
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_0

    .line 3962
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3965
    :cond_1
    invoke-static {v1, p1, p3}, Lorg/telegram/ui/Stories/StoriesController;->addOrRemoveStoryItemAlbum(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 3969
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 3970
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_3
    return-void
.end method

.method public updateStoryViews(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3881
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3882
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 3883
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_1

    .line 3884
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 3886
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    .line 3887
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_2

    .line 3888
    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 3893
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_4
    :goto_2
    return-void
.end method
