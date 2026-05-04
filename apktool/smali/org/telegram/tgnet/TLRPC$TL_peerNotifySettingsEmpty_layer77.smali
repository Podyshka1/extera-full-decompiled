.class public Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty_layer77;
.super Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerNotifySettingsEmpty_layer77"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9031
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x70a68512

    .line 9035
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
