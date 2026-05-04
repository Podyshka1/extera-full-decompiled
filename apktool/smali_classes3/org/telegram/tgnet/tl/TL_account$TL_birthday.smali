.class public Lorg/telegram/tgnet/tl/TL_account$TL_birthday;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_birthday"
.end annotation


# static fields
.field public static final constructor:I = 0x6c8e1e06


# instance fields
.field public day:I

.field public flags:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3071
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_birthday;
    .locals 2

    const v0, 0x6c8e1e06

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3080
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;-><init>()V

    .line 3081
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 3086
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->flags:I

    .line 3087
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    .line 3088
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    .line 3089
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3090
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x6c8e1e06

    .line 3096
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3097
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3098
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3099
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3100
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3101
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
