.class public final synthetic Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController$PeerColor;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController$PeerColor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/MessagesController$PeerColor;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/IntUnaryOperator$-CC;->$default$andThen(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsInt(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->$r8$lambda$rYcWplV9U3FuwTumgwTtKILkB34(Lorg/telegram/messenger/MessagesController$PeerColor;I)I

    move-result p1

    return p1
.end method

.method public synthetic compose(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/IntUnaryOperator$-CC;->$default$compose(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;

    move-result-object p1

    return-object p1
.end method
