.class public Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultReported;
.super Lorg/telegram/tgnet/TLRPC$channels_SponsoredMessageReportResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_sponsoredMessageReportResultReported"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38621
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$channels_SponsoredMessageReportResult;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x528677b7

    .line 38625
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
