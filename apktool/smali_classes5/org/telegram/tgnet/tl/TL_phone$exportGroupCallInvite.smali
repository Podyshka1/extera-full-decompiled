.class public Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "exportGroupCallInvite"
.end annotation


# static fields
.field public static final constructor:I = -0x19559b81


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public can_self_unmute:Z

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 929
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 937
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x19559b81

    .line 941
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 942
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->can_self_unmute:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->flags:I

    .line 943
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 944
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
