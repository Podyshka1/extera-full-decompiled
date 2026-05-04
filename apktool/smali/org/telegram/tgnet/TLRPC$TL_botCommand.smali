.class public Lorg/telegram/tgnet/TLRPC$TL_botCommand;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botCommand"
.end annotation


# instance fields
.field public command:Ljava/lang/String;

.field public description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21625
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_botCommand;
    .locals 2

    const v0, -0x3d853739

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 21632
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botCommand;-><init>()V

    .line 21633
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 21637
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    .line 21638
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3d853739

    .line 21642
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 21643
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 21644
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
