.class public Lorg/telegram/tgnet/tl/TL_account$getBirthdays;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getBirthdays"
.end annotation


# static fields
.field public static final constructor:I = -0x2512579c


# instance fields
.field public birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3177
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 3185
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$contactBirthdays;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$contactBirthdays;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x2512579c

    .line 3190
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
