.class public abstract Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TopPeerCategory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28358
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 28367
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPhoneCalls;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPhoneCalls;-><init>()V

    goto :goto_0

    .line 28364
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryChannels;-><init>()V

    goto :goto_0

    .line 28373
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;-><init>()V

    goto :goto_0

    .line 28385
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;-><init>()V

    goto :goto_0

    .line 28388
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsApp;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsApp;-><init>()V

    goto :goto_0

    .line 28379
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryForwardChats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryForwardChats;-><init>()V

    goto :goto_0

    .line 28370
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryGroups;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryGroups;-><init>()V

    goto :goto_0

    .line 28382
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsPM;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsPM;-><init>()V

    goto :goto_0

    .line 28376
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryForwardUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryForwardUsers;-><init>()V

    .line 28391
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57bf9357 -> :sswitch_8
        -0x5499e4a5 -> :sswitch_7
        -0x42e85eb6 -> :sswitch_6
        -0x4113f10 -> :sswitch_5
        -0x2618414 -> :sswitch_4
        0x637b7ed -> :sswitch_3
        0x148677e2 -> :sswitch_2
        0x161d9628 -> :sswitch_1
        0x1e76a78c -> :sswitch_0
    .end sparse-switch
.end method
