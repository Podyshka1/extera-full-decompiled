.class public Lorg/telegram/tgnet/tl/TL_account$updateTheme;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updateTheme"
.end annotation


# static fields
.field public static final constructor:I = 0x5cb367d5


# instance fields
.field public document:Lorg/telegram/tgnet/TLRPC$InputDocument;

.field public flags:I

.field public format:Ljava/lang/String;

.field public settings:Lorg/telegram/tgnet/TLRPC$TL_inputThemeSettings;

.field public slug:Ljava/lang/String;

.field public theme:Lorg/telegram/tgnet/TLRPC$InputTheme;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1668
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1680
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Theme;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x5cb367d5

    .line 1684
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1685
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1686
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->format:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1687
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->theme:Lorg/telegram/tgnet/TLRPC$InputTheme;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1688
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1691
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1694
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1695
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1697
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1698
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$updateTheme;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputThemeSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputThemeSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_3
    return-void
.end method
