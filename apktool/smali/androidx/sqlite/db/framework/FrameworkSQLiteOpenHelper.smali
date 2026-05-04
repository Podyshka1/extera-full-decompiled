.class public final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;,
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;,
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;


# instance fields
.field private final allowDataLossOnRecovery:Z

.field private final callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field private final context:Landroid/content/Context;

.field private final lazyDelegate:Lkotlin/Lazy;

.field private final name:Ljava/lang/String;

.field private final useNoBackupDirectory:Z

.field private writeAheadLoggingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$bMXVQYZgPq9YSTqMFpOzwjrmmJ8(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate$lambda$0(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->Companion:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 38
    iput-boolean p4, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    .line 39
    iput-boolean p5, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 43
    new-instance p1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    return-object v0
.end method

.method private static final lazyDelegate$lambda$0(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 11

    .line 48
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/sqlite/db/SupportSQLiteCompat$Api21Impl;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    new-instance v4, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 53
    iget-object v5, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 55
    new-instance v7, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    invoke-direct {v7, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 56
    iget-object v8, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 57
    iget-boolean v9, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 52
    invoke-direct/range {v4 .. v9}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v5, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 62
    iget-object v6, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 63
    iget-object v7, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 64
    new-instance v8, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    invoke-direct {v8, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 65
    iget-object v9, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 66
    iget-boolean v10, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 61
    invoke-direct/range {v5 .. v10}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    move-object v4, v5

    .line 69
    :goto_0
    iget-boolean p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-object v4
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    :cond_0
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2

    .line 96
    invoke-direct {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getSupportDatabase(Z)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 92
    :cond_0
    iput-boolean p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    return-void
.end method
