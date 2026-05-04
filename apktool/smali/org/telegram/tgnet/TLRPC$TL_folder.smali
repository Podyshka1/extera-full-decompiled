.class public Lorg/telegram/tgnet/TLRPC$TL_folder;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_folder"
.end annotation


# instance fields
.field public autofill_new_broadcasts:Z

.field public autofill_new_correspondents:Z

.field public autofill_public_groups:Z

.field public flags:I

.field public id:I

.field public photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3238
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_folder;
    .locals 2

    const v0, -0xabb19b

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3250
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_folder;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_folder;-><init>()V

    .line 3251
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_folder;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_folder;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 3255
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3256
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->autofill_new_broadcasts:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3257
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->autofill_public_groups:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v2, v3

    .line 3258
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->autofill_new_correspondents:Z

    .line 3259
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->id:I

    .line 3260
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->title:Ljava/lang/String;

    .line 3261
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3262
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0xabb19b

    .line 3267
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3268
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->autofill_new_broadcasts:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->flags:I

    .line 3269
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->autofill_public_groups:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->flags:I

    .line 3270
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->autofill_new_correspondents:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->flags:I

    .line 3271
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3272
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3273
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3274
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3275
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_folder;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_3
    return-void
.end method
