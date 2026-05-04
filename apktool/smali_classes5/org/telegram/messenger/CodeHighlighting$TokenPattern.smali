.class Lorg/telegram/messenger/CodeHighlighting$TokenPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CodeHighlighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenPattern"
.end annotation


# instance fields
.field public greedy:Z

.field public group:I

.field public insideLanguage:Ljava/lang/String;

.field public insideTokenPatterns:[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;

.field public lookbehind:Z

.field public final pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/CodeHighlighting$CachedPattern;)V
    .locals 0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;

    .line 712
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->group:I

    return-void
.end method

.method public varargs constructor <init>(ILorg/telegram/messenger/CodeHighlighting$CachedPattern;[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;)V
    .locals 0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->group:I

    .line 727
    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;

    .line 728
    iput-object p3, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->insideTokenPatterns:[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/CodeHighlighting$CachedPattern;Ljava/lang/String;)V
    .locals 1

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 704
    iput v0, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->group:I

    .line 721
    iput-object p1, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;

    .line 722
    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->insideLanguage:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lorg/telegram/messenger/CodeHighlighting$CachedPattern;[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;)V
    .locals 1

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 704
    iput v0, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->group:I

    .line 716
    iput-object p1, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;

    .line 717
    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->insideTokenPatterns:[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;

    return-void
.end method
