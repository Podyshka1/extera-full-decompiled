.class public Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_myBoost"
.end annotation


# static fields
.field public static constructor:I = -0x3bb7bea4


# instance fields
.field public cooldown_until_date:I

.field public date:I

.field public expires:I

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public slot:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1122
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;
    .locals 2

    .line 1133
    sget v0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->constructor:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;-><init>()V

    .line 1134
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 1138
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->flags:I

    .line 1139
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->slot:I

    .line 1140
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1143
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->date:I

    .line 1144
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->expires:I

    .line 1145
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1146
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    .line 1151
    sget v0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->constructor:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1152
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1153
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->slot:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1154
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1157
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1158
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->expires:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1159
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1160
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
