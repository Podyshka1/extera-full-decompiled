.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TL_pageBlockListItem"
.end annotation


# instance fields
.field private blockItem:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private index:I

.field private num:Ljava/lang/String;

.field private numLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private parent:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

.field private textItem:Lorg/telegram/tgnet/TLRPC$RichText;


# direct methods
.method static bridge synthetic -$$Nest$fgetblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->blockItem:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->index:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->num:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->numLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->parent:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->textItem:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputblockItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->blockItem:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputindex(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->index:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnum(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->num:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnumLayout(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$DrawingText;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->numLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputparent(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->parent:Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtextItem(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$RichText;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->textItem:Lorg/telegram/tgnet/TLRPC$RichText;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 438
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    const v0, 0x7fffffff

    .line 444
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->index:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;-><init>()V

    return-void
.end method
