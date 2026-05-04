.class public abstract Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "updates_ChannelDifference"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;

.field public dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

.field public flags:I

.field public isFinal:Z

.field public messages:Ljava/util/ArrayList;

.field public new_messages:Ljava/util/ArrayList;

.field public other_updates:Ljava/util/ArrayList;

.field public pts:I

.field public timeout:I

.field public users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38329
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 38334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    .line 38335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    .line 38336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    .line 38337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    .line 38339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->messages:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    .locals 2

    const v0, -0x5b433902

    if-eq p1, v0, :cond_2

    const v0, 0x2064674e

    if-eq p1, v0, :cond_1

    const v0, 0x3e11affb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 38345
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;-><init>()V

    goto :goto_0

    .line 38348
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;-><init>()V

    goto :goto_0

    .line 38351
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;-><init>()V

    .line 38354
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    return-object p0
.end method
