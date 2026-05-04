.class public Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "changeAuthorizationSettings"
.end annotation


# static fields
.field public static final constructor:I = 0x40f48462


# instance fields
.field public call_requests_disabled:Z

.field public confirmed:Z

.field public encrypted_requests_disabled:Z

.field public flags:I

.field public hash:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 964
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 974
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x40f48462

    .line 978
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 979
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->confirmed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->flags:I

    .line 980
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 981
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 982
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 983
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->encrypted_requests_disabled:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 985
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 986
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$changeAuthorizationSettings;->call_requests_disabled:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_2
    return-void
.end method
