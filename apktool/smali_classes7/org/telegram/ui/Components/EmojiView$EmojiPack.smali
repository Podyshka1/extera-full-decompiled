.class public Lorg/telegram/ui/Components/EmojiView$EmojiPack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiPack"
.end annotation


# instance fields
.field public documents:Ljava/util/ArrayList;

.field public expanded:Z

.field public featured:Z

.field public forGroup:Z

.field public free:Z

.field public index:I

.field public installed:Z

.field public needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field public resId:I

.field public set:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public thumbDocumentId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    return-void
.end method
