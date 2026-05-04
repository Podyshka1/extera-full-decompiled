.class public Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_reportSponsoredMessage"
.end annotation


# instance fields
.field public option:[B

.field public random_id:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38629
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 38636
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$channels_SponsoredMessageReportResult;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$channels_SponsoredMessageReportResult;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x12cbf0c4

    .line 38640
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 38641
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->random_id:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 38642
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSponsoredMessage;->option:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
