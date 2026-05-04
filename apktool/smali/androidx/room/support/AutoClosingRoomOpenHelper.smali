.class public final Landroidx/room/support/AutoClosingRoomOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.implements Landroidx/room/DelegatingOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;,
        Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteStatement;,
        Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;
    }
.end annotation


# instance fields
.field private final autoCloser:Landroidx/room/support/AutoCloser;

.field private final autoClosingDb:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

.field private final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Landroidx/room/support/AutoCloser;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 38
    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->autoCloser:Landroidx/room/support/AutoCloser;

    .line 41
    new-instance p1, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-direct {p1, p2}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;-><init>(Landroidx/room/support/AutoCloser;)V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 44
    invoke-virtual {p0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/room/support/AutoCloser;->initOpenHelper(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->close()V

    return-void
.end method

.method public final getAutoCloser$room_runtime()Landroidx/room/support/AutoCloser;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->autoCloser:Landroidx/room/support/AutoCloser;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->pokeOpen()V

    .line 50
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
