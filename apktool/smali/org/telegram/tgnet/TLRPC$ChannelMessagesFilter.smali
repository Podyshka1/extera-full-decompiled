.class public abstract Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChannelMessagesFilter"
.end annotation


# instance fields
.field public ranges:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38441
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 38444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;->ranges:Ljava/util/ArrayList;

    return-void
.end method
