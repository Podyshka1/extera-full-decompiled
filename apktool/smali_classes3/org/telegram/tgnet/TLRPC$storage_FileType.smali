.class public abstract Lorg/telegram/tgnet/TLRPC$storage_FileType;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "storage_FileType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46526
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$storage_FileType;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 46550
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMp3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMp3;-><init>()V

    goto :goto_0

    .line 46556
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMov;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMov;-><init>()V

    goto :goto_0

    .line 46559
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_filePartial;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_filePartial;-><init>()V

    goto :goto_0

    .line 46538
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileWebp;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileWebp;-><init>()V

    goto :goto_0

    .line 46541
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_filePng;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_filePng;-><init>()V

    goto :goto_0

    .line 46553
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileJpeg;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileJpeg;-><init>()V

    goto :goto_0

    .line 46544
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileGif;-><init>()V

    goto :goto_0

    .line 46535
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMp4;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMp4;-><init>()V

    goto :goto_0

    .line 46547
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_filePdf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_filePdf;-><init>()V

    goto :goto_0

    .line 46532
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileUnknown;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileUnknown;-><init>()V

    .line 46562
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$storage_FileType;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$storage_FileType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5569c4fb -> :sswitch_9
        -0x51e1af73 -> :sswitch_8
        -0x4c315f1c -> :sswitch_7
        -0x351e5521 -> :sswitch_6
        0x7efe0e -> :sswitch_5
        0xa4f63c0 -> :sswitch_4
        0x1081464c -> :sswitch_3
        0x40bc6f52 -> :sswitch_2
        0x4b09ebbc -> :sswitch_1
        0x528a0677 -> :sswitch_0
    .end sparse-switch
.end method
