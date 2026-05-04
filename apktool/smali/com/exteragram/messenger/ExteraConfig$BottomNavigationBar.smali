.class public abstract Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/ExteraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BottomNavigationBar"
.end annotation


# static fields
.field private static mode:I


# direct methods
.method public static floating()Z
    .locals 2

    .line 214
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMode()I
    .locals 2

    .line 194
    sget v0, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->mode:I

    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 195
    sput v0, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->mode:I

    .line 197
    :cond_1
    sget v0, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->mode:I

    return v0
.end method

.method public static hidden()Z
    .locals 2

    .line 206
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setMode(I)V
    .locals 0

    .line 201
    sput p0, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->mode:I

    .line 202
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->getMode()I

    return-void
.end method

.method public static visible()Z
    .locals 2

    .line 210
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
