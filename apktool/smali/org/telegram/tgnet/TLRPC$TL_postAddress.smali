.class public Lorg/telegram/tgnet/TLRPC$TL_postAddress;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_postAddress"
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field public country_iso2:Ljava/lang/String;

.field public post_code:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public street_line1:Ljava/lang/String;

.field public street_line2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41401
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_postAddress;
    .locals 2

    const v0, 0x1e8caaeb

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 41412
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    .line 41413
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 41417
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    .line 41418
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    .line 41419
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    .line 41420
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    .line 41421
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 41422
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x1e8caaeb

    .line 41426
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41427
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41428
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41429
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41430
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41431
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41432
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
