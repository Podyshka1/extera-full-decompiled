.class final enum Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransactionOperation"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum BEGIN_DEFERRED:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum BEGIN_EXCLUSIVE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum BEGIN_IMMEDIATE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum END:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

.field public static final enum ROLLBACK:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;


# direct methods
.method private static final synthetic $values()[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    sget-object v1, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->END:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->ROLLBACK:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_EXCLUSIVE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_IMMEDIATE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_DEFERRED:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 170
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const-string v1, "END"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->END:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 171
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const-string v1, "ROLLBACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->ROLLBACK:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 172
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const-string v1, "BEGIN_EXCLUSIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_EXCLUSIVE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 173
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const-string v1, "BEGIN_IMMEDIATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_IMMEDIATE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 174
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    const-string v1, "BEGIN_DEFERRED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_DEFERRED:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    invoke-static {}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->$values()[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    move-result-object v0

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->$VALUES:[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    .locals 1

    const-class v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    return-object p0
.end method

.method public static values()[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    .locals 1

    sget-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->$VALUES:[Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    return-object v0
.end method
