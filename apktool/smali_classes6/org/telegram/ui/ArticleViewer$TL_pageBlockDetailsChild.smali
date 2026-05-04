.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TL_pageBlockDetailsChild"
.end annotation


# instance fields
.field private block:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private parent:Lorg/telegram/tgnet/TLRPC$PageBlock;


# direct methods
.method static bridge synthetic -$$Nest$fgetblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->parent:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputblock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->parent:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>()V

    return-void
.end method
