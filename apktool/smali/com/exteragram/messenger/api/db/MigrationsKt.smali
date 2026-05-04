.class public final Lcom/exteragram/messenger/api/db/MigrationsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIGRATION_1_2:Landroidx/room/migration/Migration;

.field private static final MIGRATION_2_3:Landroidx/room/migration/Migration;

.field private static final MIGRATION_3_4:Landroidx/room/migration/Migration;

.field private static final MIGRATION_4_5:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/exteragram/messenger/api/db/MigrationsKt$MIGRATION_1_2$1;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/db/MigrationsKt$MIGRATION_1_2$1;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/api/db/MigrationsKt;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    .line 22
    new-instance v0, Lcom/exteragram/messenger/api/db/MigrationsKt$MIGRATION_2_3$1;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/db/MigrationsKt$MIGRATION_2_3$1;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/api/db/MigrationsKt;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    .line 28
    new-instance v0, Lcom/exteragram/messenger/api/db/MigrationsKt$MIGRATION_3_4$1;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/db/MigrationsKt$MIGRATION_3_4$1;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/api/db/MigrationsKt;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    .line 34
    new-instance v0, Lcom/exteragram/messenger/api/db/MigrationsKt$MIGRATION_4_5$1;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/db/MigrationsKt$MIGRATION_4_5$1;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/api/db/MigrationsKt;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    return-void
.end method

.method public static final getMIGRATION_1_2()Landroidx/room/migration/Migration;
    .locals 1

    .line 17
    sget-object v0, Lcom/exteragram/messenger/api/db/MigrationsKt;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final getMIGRATION_2_3()Landroidx/room/migration/Migration;
    .locals 1

    .line 22
    sget-object v0, Lcom/exteragram/messenger/api/db/MigrationsKt;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final getMIGRATION_3_4()Landroidx/room/migration/Migration;
    .locals 1

    .line 28
    sget-object v0, Lcom/exteragram/messenger/api/db/MigrationsKt;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final getMIGRATION_4_5()Landroidx/room/migration/Migration;
    .locals 1

    .line 34
    sget-object v0, Lcom/exteragram/messenger/api/db/MigrationsKt;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    return-object v0
.end method
