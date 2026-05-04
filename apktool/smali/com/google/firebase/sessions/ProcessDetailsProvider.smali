.class public final Lcom/google/firebase/sessions/ProcessDetailsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/ProcessDetailsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/ProcessDetailsProvider;

    invoke-direct {v0}, Lcom/google/firebase/sessions/ProcessDetailsProvider;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/ProcessDetailsProvider;->INSTANCE:Lcom/google/firebase/sessions/ProcessDetailsProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getProcessName()Ljava/lang/String;
    .locals 2

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-le v0, v1, :cond_0

    .line 66
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "myProcessName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 70
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 76
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 81
    :cond_2
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public final getAppProcessDetails(Landroid/content/Context;)Ljava/util/List;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 32
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Landroid/app/ActivityManager;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 35
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 36
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 39
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, v0, :cond_3

    .line 865
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 90
    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 42
    new-instance v5, Lcom/google/firebase/sessions/ProcessDetails;

    .line 43
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "processName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 45
    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 46
    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 42
    invoke-direct {v5, v6, v7, v8, v4}, Lcom/google/firebase/sessions/ProcessDetails;-><init>(Ljava/lang/String;IIZ)V

    .line 90
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public final getMyProcessDetails(Landroid/content/Context;)Lcom/google/firebase/sessions/ProcessDetails;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/ProcessDetailsProvider;->getAppProcessDetails(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/firebase/sessions/ProcessDetails;

    invoke-virtual {v2}, Lcom/google/firebase/sessions/ProcessDetails;->getPid()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/google/firebase/sessions/ProcessDetails;

    if-nez v1, :cond_2

    .line 60
    new-instance p1, Lcom/google/firebase/sessions/ProcessDetails;

    invoke-direct {p0}, Lcom/google/firebase/sessions/ProcessDetailsProvider;->getProcessName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2, v2}, Lcom/google/firebase/sessions/ProcessDetails;-><init>(Ljava/lang/String;IIZ)V

    return-object p1

    :cond_2
    return-object v1
.end method
