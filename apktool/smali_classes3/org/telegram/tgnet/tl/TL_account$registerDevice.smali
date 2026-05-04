.class public Lorg/telegram/tgnet/tl/TL_account$registerDevice;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "registerDevice"
.end annotation


# static fields
.field public static final constructor:I = -0x1379fe86


# instance fields
.field public app_sandbox:Z

.field public flags:I

.field public no_muted:Z

.field public other_uids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public secret:[B

.field public token:Ljava/lang/String;

.field public token_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 740
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->other_uids:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 752
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x1379fe86

    .line 756
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 757
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->no_muted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->flags:I

    .line 758
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 759
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->token_type:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 760
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->token:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 761
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->app_sandbox:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 762
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->secret:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 763
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$registerDevice;->other_uids:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
