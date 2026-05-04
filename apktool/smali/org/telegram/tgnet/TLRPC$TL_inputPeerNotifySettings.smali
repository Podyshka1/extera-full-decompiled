.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputPeerNotifySettings"
.end annotation


# instance fields
.field public flags:I

.field public mute_until:I

.field public show_previews:Z

.field public silent:Z

.field public sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

.field public stories_hide_sender:Z

.field public stories_muted:Z

.field public stories_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18005
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 18023
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 18025
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    .line 18027
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 18028
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    .line 18030
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 18031
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 18033
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 18034
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 18036
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 18037
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_muted:Z

    .line 18039
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 18040
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_hide_sender:Z

    .line 18042
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 18043
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    :cond_6
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3534951e    # -6665585.0f

    .line 18048
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18049
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18050
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 18051
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 18053
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 18054
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 18056
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 18057
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18059
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 18060
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 18062
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 18063
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_muted:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 18065
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 18066
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_hide_sender:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 18068
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 18069
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_6
    return-void
.end method
