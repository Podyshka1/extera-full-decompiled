.class public Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowDataLossOnRecovery:Z

.field private callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field private final context:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field private useNoBackupDirectory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public allowDataLossOnRecovery(Z)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0

    .line 338
    iput-boolean p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->allowDataLossOnRecovery:Z

    return-object p0
.end method

.method public build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    .locals 6

    .line 284
    iget-object v3, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    if-eqz v3, :cond_2

    .line 286
    iget-boolean v0, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->useNoBackupDirectory:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    :goto_0
    new-instance v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    .line 291
    iget-object v1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->context:Landroid/content/Context;

    .line 292
    iget-object v2, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    .line 294
    iget-boolean v4, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->useNoBackupDirectory:Z

    .line 295
    iget-boolean v5, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->allowDataLossOnRecovery:Z

    .line 290
    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    return-object v0

    .line 285
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0

    .line 307
    iput-object p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public noBackupDirectory(Z)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0

    .line 325
    iput-boolean p1, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->useNoBackupDirectory:Z

    return-object p0
.end method
