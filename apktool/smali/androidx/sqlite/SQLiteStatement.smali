.class public interface abstract Landroidx/sqlite/SQLiteStatement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract bindBlob(I[B)V
.end method

.method public abstract bindLong(IJ)V
.end method

.method public abstract bindNull(I)V
.end method

.method public abstract bindText(ILjava/lang/String;)V
.end method

.method public abstract clearBindings()V
.end method

.method public abstract close()V
.end method

.method public abstract getBlob(I)[B
.end method

.method public abstract getBoolean(I)Z
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getColumnName(I)Ljava/lang/String;
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getText(I)Ljava/lang/String;
.end method

.method public abstract isNull(I)Z
.end method

.method public abstract reset()V
.end method

.method public abstract step()Z
.end method
