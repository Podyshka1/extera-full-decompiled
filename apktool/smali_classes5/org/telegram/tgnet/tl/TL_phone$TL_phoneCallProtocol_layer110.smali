.class public Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol_layer110;
.super Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallProtocol_layer110"
.end annotation


# static fields
.field public static final constructor:I = -0x5d44ca35


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1156
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 1160
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1161
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_p2p:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 1162
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_reflector:Z

    .line 1163
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->min_layer:I

    .line 1164
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->max_layer:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x5d44ca35

    .line 1168
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1169
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_p2p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->flags:I

    .line 1170
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_reflector:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->flags:I

    .line 1171
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1172
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->min_layer:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1173
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->max_layer:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
