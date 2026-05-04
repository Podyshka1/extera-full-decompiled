.class public abstract synthetic Landroidx/sqlite/SQLiteStatement$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getBoolean(Landroidx/sqlite/SQLiteStatement;I)Z
    .locals 2

    .line 151
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
