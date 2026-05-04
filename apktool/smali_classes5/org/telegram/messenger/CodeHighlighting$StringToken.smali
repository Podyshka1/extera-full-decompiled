.class Lorg/telegram/messenger/CodeHighlighting$StringToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CodeHighlighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringToken"
.end annotation


# instance fields
.field final group:I

.field final inside:Lorg/telegram/messenger/CodeHighlighting$LinkedList;

.field final insideLength:I

.field final string:Ljava/lang/String;

.field final token:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->token:Z

    .line 538
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->group:I

    .line 539
    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->string:Ljava/lang/String;

    const/4 p1, 0x0

    .line 540
    iput-object p1, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->inside:Lorg/telegram/messenger/CodeHighlighting$LinkedList;

    const/4 p1, 0x0

    .line 541
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->insideLength:I

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/CodeHighlighting$LinkedList;I)V
    .locals 1

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->token:Z

    .line 545
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->group:I

    const/4 p1, 0x0

    .line 546
    iput-object p1, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->string:Ljava/lang/String;

    .line 547
    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->inside:Lorg/telegram/messenger/CodeHighlighting$LinkedList;

    .line 548
    iput p3, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->insideLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->token:Z

    const/4 v1, -0x1

    .line 552
    iput v1, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->group:I

    .line 553
    iput-object p1, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->string:Ljava/lang/String;

    const/4 p1, 0x0

    .line 554
    iput-object p1, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->inside:Lorg/telegram/messenger/CodeHighlighting$LinkedList;

    .line 555
    iput v0, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->insideLength:I

    return-void
.end method


# virtual methods
.method public length()I
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->string:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 562
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/CodeHighlighting$StringToken;->insideLength:I

    return v0
.end method
