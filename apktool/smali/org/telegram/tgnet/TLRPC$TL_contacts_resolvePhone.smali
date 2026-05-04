.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvePhone;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_resolvePhone"
.end annotation


# instance fields
.field public phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55682
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55688
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x7506bcbc

    .line 55692
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55693
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvePhone;->phone:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
