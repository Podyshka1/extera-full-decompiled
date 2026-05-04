.class public abstract Lorg/telegram/tgnet/TLRPC$Page;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Page"
.end annotation


# instance fields
.field public blocks:Ljava/util/ArrayList;

.field public documents:Ljava/util/ArrayList;

.field public flags:I

.field public part:Z

.field public photos:Ljava/util/ArrayList;

.field public rtl:Z

.field public url:Ljava/lang/String;

.field public v2:Z

.field public views:I

.field public web:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18296
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    .line 18303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    .line 18304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Page;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 18322
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageFull_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageFull_layer82;-><init>()V

    goto :goto_0

    .line 18325
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page_layer88;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page_layer88;-><init>()V

    goto :goto_0

    .line 18319
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageFull_layer67;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageFull_layer67;-><init>()V

    goto :goto_0

    .line 18328
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page_layer110;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page_layer110;-><init>()V

    goto :goto_0

    .line 18331
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page;-><init>()V

    goto :goto_0

    .line 18316
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer82;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer82;-><init>()V

    goto :goto_0

    .line 18313
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer67;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer67;-><init>()V

    .line 18334
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$Page;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Page;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x721193bc -> :sswitch_6
        -0x71c06142 -> :sswitch_5
        -0x679a80f3 -> :sswitch_4
        -0x5176e414 -> :sswitch_3
        -0x285e6297 -> :sswitch_2
        -0xe665f58 -> :sswitch_1
        0x556ec7aa -> :sswitch_0
    .end sparse-switch
.end method
