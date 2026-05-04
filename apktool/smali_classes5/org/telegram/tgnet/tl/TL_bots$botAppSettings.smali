.class public Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_bots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "botAppSettings"
.end annotation


# static fields
.field public static final constructor:I = -0x3664e6b0


# instance fields
.field public background_color:I

.field public background_dark_color:I

.field public flags:I

.field public header_color:I

.field public header_dark_color:I

.field public placeholder_path:[B

.field public placeholder_svg_path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 861
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;
    .locals 2

    const v0, -0x3664e6b0    # -1270570.0f

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 873
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;-><init>()V

    .line 874
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 879
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 881
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->placeholder_path:[B

    .line 882
    invoke-static {v0}, Lorg/telegram/messenger/SvgHelper;->decompress([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SvgHelper;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->placeholder_svg_path:Landroid/graphics/Path;

    .line 884
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 885
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_color:I

    .line 887
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 888
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_dark_color:I

    .line 890
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 891
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->header_color:I

    .line 893
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 894
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->header_dark_color:I

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3664e6b0    # -1270570.0f

    .line 900
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 901
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 902
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->placeholder_path:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 905
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 906
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 908
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 909
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_dark_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 911
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 912
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->header_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 914
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 915
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->header_dark_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
