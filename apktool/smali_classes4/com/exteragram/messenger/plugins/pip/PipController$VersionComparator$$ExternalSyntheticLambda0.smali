.class public final synthetic Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/text/MatchResult;

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;->$r8$lambda$nqT8w7vbkkYQNQkxx0djR18NPuo(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
