.class public Lorg/telegram/tgnet/TLRPC$TL_storage_filePartial;
.super Lorg/telegram/tgnet/TLRPC$storage_FileType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_storage_filePartial"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46638
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$storage_FileType;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x40bc6f52

    .line 46642
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
