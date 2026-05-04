.class public Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsPreloader"
.end annotation


# instance fields
.field private final MAX_NETWORK_REQUEST_COUNT:I

.field private final MAX_REQUEST_COUNT:I

.field private final NETWORK_REQUESTS_RESET_TIME:I

.field clearNetworkRequestCount:Ljava/lang/Runnable;

.field currentRequestCount:I

.field dialogsReadyMap:Ljava/util/HashSet;

.field loadingDialogs:Ljava/util/HashSet;

.field networkRequestCount:I

.field preloadDialogsPool:Ljava/util/ArrayList;

.field preloadedErrorMap:Ljava/util/HashSet;

.field resumed:Z


# direct methods
.method public static synthetic $r8$lambda$yJNgDXFZ51z8jDqR1RPe7SsuI40(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 1233
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->MAX_REQUEST_COUNT:I

    const/4 v0, 0x6

    .line 1234
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->MAX_NETWORK_REQUEST_COUNT:I

    const v0, 0xea60

    .line 1235
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->NETWORK_REQUESTS_RESET_TIME:I

    .line 1237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->dialogsReadyMap:Ljava/util/HashSet;

    .line 1238
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadedErrorMap:Ljava/util/HashSet;

    .line 1240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->loadingDialogs:Ljava/util/HashSet;

    .line 1241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadDialogsPool:Ljava/util/ArrayList;

    .line 1247
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->clearNetworkRequestCount:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 1248
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->networkRequestCount:I

    .line 1249
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->start()V

    return-void
.end method

.method private preloadIsAvilable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private start()V
    .locals 5

    .line 1261
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadIsAvilable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->resumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadDialogsPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->currentRequestCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->networkRequestCount:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1264
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadDialogsPool:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1265
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->currentRequestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->currentRequestCount:I

    .line 1266
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->loadingDialogs:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1267
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;

    invoke-direct {v4, p0, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;J)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .line 1253
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->isReady(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadedErrorMap:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->loadingDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadDialogsPool:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1256
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadDialogsPool:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->dialogsReadyMap:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadedErrorMap:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->loadingDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadDialogsPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1325
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->currentRequestCount:I

    .line 1326
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->networkRequestCount:I

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->clearNetworkRequestCount:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1328
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->updateList()V

    return-void
.end method

.method public isReady(J)Z
    .locals 1

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->dialogsReadyMap:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1337
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->resumed:Z

    return-void
.end method

.method public remove(J)V
    .locals 1

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadDialogsPool:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 1332
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->resumed:Z

    .line 1333
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->start()V

    return-void
.end method

.method public updateList()V
    .locals 0

    return-void
.end method
