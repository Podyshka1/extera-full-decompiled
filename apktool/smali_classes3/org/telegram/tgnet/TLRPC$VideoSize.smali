.class public abstract Lorg/telegram/tgnet/TLRPC$VideoSize;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoSize"
.end annotation


# instance fields
.field public background_colors:Ljava/util/ArrayList;

.field public flags:I

.field public h:I

.field public location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field public size:I

.field public type:Ljava/lang/String;

.field public video_start_ts:D

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19367
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 19376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(JJLorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$VideoSize;
    .locals 2

    sparse-switch p5, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 19386
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer115;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer115;-><init>()V

    goto :goto_0

    .line 19395
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;-><init>()V

    goto :goto_0

    .line 19398
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;-><init>()V

    goto :goto_0

    .line 19389
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;-><init>()V

    goto :goto_0

    .line 19392
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoSize;-><init>()V

    .line 19401
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$VideoSize;

    invoke-static {v1, v0, p4, p5, p6}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz p4, :cond_3

    .line 19402
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez p5, :cond_3

    .line 19403
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    const-wide/16 p5, 0x0

    cmp-long v0, p0, p5

    if-nez v0, :cond_0

    cmp-long p5, p2, p5

    if-eqz p5, :cond_2

    .line 19404
    :cond_0
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 p6, 0x0

    if-eqz v0, :cond_1

    neg-long p0, p0

    .line 19406
    iput-wide p0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 19407
    iget-object p0, p4, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-virtual {p0, p6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    iput p0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    return-object p4

    :cond_1
    neg-long p0, p2

    .line 19409
    iput-wide p0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 19410
    iget-object p0, p4, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-virtual {p0, p6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit16 p0, p0, 0x3e8

    iput p0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    return-object p4

    .line 19413
    :cond_2
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object p0, p4, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_3
    return-object p4

    :sswitch_data_0
    .sparse-switch
        -0x21cc4f6c -> :sswitch_4
        -0x17ce3aaa -> :sswitch_3
        -0x7a3bec4 -> :sswitch_2
        0xda082fe -> :sswitch_1
        0x435bb987 -> :sswitch_0
    .end sparse-switch
.end method
