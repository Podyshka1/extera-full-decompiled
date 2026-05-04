.class public Lorg/telegram/tgnet/tl/TL_account$installTheme;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "installTheme"
.end annotation


# static fields
.field public static final constructor:I = 0x7ae43737


# instance fields
.field public dark:Z

.field public flags:I

.field public format:Ljava/lang/String;

.field public theme:Lorg/telegram/tgnet/TLRPC$InputTheme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1720
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1729
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x7ae43737

    .line 1733
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1734
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$installTheme;->dark:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$installTheme;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$installTheme;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$installTheme;->flags:I

    .line 1735
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1736
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$installTheme;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1737
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$installTheme;->format:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1739
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$installTheme;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1740
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$installTheme;->theme:Lorg/telegram/tgnet/TLRPC$InputTheme;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_2
    return-void
.end method
