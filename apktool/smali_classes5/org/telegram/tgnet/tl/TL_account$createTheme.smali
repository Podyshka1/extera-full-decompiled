.class public Lorg/telegram/tgnet/tl/TL_account$createTheme;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "createTheme"
.end annotation


# static fields
.field public static final constructor:I = -0x7bcd3de1


# instance fields
.field public document:Lorg/telegram/tgnet/TLRPC$InputDocument;

.field public flags:I

.field public settings:Lorg/telegram/tgnet/TLRPC$TL_inputThemeSettings;

.field public slug:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1641
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1651
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Theme;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x7bcd3de1

    .line 1655
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1656
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$createTheme;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1657
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$createTheme;->slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$createTheme;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1659
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$createTheme;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$createTheme;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1662
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$createTheme;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 1663
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$createTheme;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputThemeSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputThemeSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
