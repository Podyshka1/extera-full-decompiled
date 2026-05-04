.class public final Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/api/db/ExteraDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion$Callback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/exteragram/messenger/api/db/ExteraDatabase;
    .locals 8

    .line 44
    invoke-static {}, Lcom/exteragram/messenger/api/db/ExteraDatabase;->access$getINSTANCE$cp()Lcom/exteragram/messenger/api/db/ExteraDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    .line 46
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-class v1, Lcom/exteragram/messenger/api/db/ExteraDatabase;

    .line 48
    const-string v2, "extera-database"

    .line 45
    invoke-static {v0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration(Z)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 50
    new-instance v2, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion$Callback;

    invoke-direct {v2}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion$Callback;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/exteragram/messenger/api/db/MigrationsKt;->getMIGRATION_1_2()Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-static {}, Lcom/exteragram/messenger/api/db/MigrationsKt;->getMIGRATION_2_3()Landroidx/room/migration/Migration;

    move-result-object v3

    invoke-static {}, Lcom/exteragram/messenger/api/db/MigrationsKt;->getMIGRATION_3_4()Landroidx/room/migration/Migration;

    move-result-object v4

    invoke-static {}, Lcom/exteragram/messenger/api/db/MigrationsKt;->getMIGRATION_4_5()Landroidx/room/migration/Migration;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Landroidx/room/migration/Migration;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-virtual {v0, v6}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/api/db/ExteraDatabase;

    .line 53
    invoke-static {v0}, Lcom/exteragram/messenger/api/db/ExteraDatabase;->access$setINSTANCE$cp(Lcom/exteragram/messenger/api/db/ExteraDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    return-object v0
.end method
