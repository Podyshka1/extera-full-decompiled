.class public Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_connectedBot"
.end annotation


# static fields
.field public static final constructor:I = -0x329b9c94


# instance fields
.field public bot_id:J

.field public flags:I

.field public recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

.field public rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2937
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;
    .locals 2

    const v0, -0x329b9c94    # -2.3948256E8f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2946
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;-><init>()V

    .line 2947
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2952
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->flags:I

    .line 2953
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    .line 2954
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    .line 2955
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x329b9c94    # -2.3948256E8f

    .line 2960
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2961
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2962
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2963
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2964
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
