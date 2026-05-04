.class public Lorg/telegram/tgnet/TLRPC$TL_inputNotifyUsers;
.super Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputNotifyUsers"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21696
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x193b4417

    .line 21700
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
