.class Lcom/sun/jna/Native$7;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/sun/jna/Memory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2369
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/sun/jna/Memory;
    .locals 3

    .line 2372
    new-instance v0, Lcom/sun/jna/Memory;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 2373
    invoke-virtual {v0}, Lcom/sun/jna/Memory;->clear()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 2369
    invoke-virtual {p0}, Lcom/sun/jna/Native$7;->initialValue()Lcom/sun/jna/Memory;

    move-result-object v0

    return-object v0
.end method
