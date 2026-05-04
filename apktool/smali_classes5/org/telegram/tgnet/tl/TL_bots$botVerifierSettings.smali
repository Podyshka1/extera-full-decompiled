.class public Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_bots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "botVerifierSettings"
.end annotation


# static fields
.field public static final constructor:I = -0x4f3299e9


# instance fields
.field public can_modify_custom_description:Z

.field public company:Ljava/lang/String;

.field public custom_description:Ljava/lang/String;

.field public flags:I

.field public icon:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 999
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;
    .locals 2

    const v0, -0x4f3299e9

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1009
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;-><init>()V

    .line 1010
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 1015
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1016
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->can_modify_custom_description:Z

    .line 1017
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->icon:J

    .line 1018
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->company:Ljava/lang/String;

    .line 1019
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1020
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->custom_description:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4f3299e9

    .line 1026
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1027
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->can_modify_custom_description:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->flags:I

    .line 1028
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1029
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->icon:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 1030
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->company:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1031
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->custom_description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
