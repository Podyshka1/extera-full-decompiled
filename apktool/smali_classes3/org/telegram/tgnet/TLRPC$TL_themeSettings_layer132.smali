.class public Lorg/telegram/tgnet/TLRPC$TL_themeSettings_layer132;
.super Lorg/telegram/tgnet/TLRPC$ThemeSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_themeSettings_layer132"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7097
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ThemeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 7101
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7102
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors_animated:Z

    .line 7103
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BaseTheme;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BaseTheme;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->base_theme:Lorg/telegram/tgnet/TLRPC$BaseTheme;

    .line 7104
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->accent_color:I

    .line 7105
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 7106
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    .line 7108
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 7109
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x724b1894

    .line 7114
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7115
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors_animated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->flags:I

    .line 7116
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7117
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->base_theme:Lorg/telegram/tgnet/TLRPC$BaseTheme;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 7118
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->accent_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7119
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 7120
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 7122
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 7123
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_2
    return-void
.end method
