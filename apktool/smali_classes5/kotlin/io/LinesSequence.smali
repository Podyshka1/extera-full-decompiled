.class final Lkotlin/io/LinesSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/LinesSequence;->reader:Ljava/io/BufferedReader;

    return-void
.end method

.method public static final synthetic access$getReader$p(Lkotlin/io/LinesSequence;)Ljava/io/BufferedReader;
    .locals 0

    .line 77
    iget-object p0, p0, Lkotlin/io/LinesSequence;->reader:Ljava/io/BufferedReader;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 79
    new-instance v0, Lkotlin/io/LinesSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/io/LinesSequence$iterator$1;-><init>(Lkotlin/io/LinesSequence;)V

    return-object v0
.end method
