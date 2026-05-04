.class public abstract Lorg/telegram/tgnet/TLRPC$PageListItem;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PageListItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53452
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PageListItem;
    .locals 2

    const v0, -0x46d04933

    if-eq p1, v0, :cond_1

    const v0, 0x25e073fc    # 3.89364E-16f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 53458
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;-><init>()V

    goto :goto_0

    .line 53461
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;-><init>()V

    .line 53464
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$PageListItem;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PageListItem;

    return-object p0
.end method
