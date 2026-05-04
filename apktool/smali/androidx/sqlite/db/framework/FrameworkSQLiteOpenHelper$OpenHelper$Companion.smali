.class public final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWrappedDb(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .locals 2

    const-string/jumbo v0, "refHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sqLiteDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;->getDb()Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->isDelegate$sqlite_framework(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 319
    :cond_1
    :goto_0
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    invoke-direct {v0, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;->setDb(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    return-object v0
.end method
