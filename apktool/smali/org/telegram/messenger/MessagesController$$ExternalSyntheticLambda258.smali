.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda258;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$B_YMwDr-P4SKcNFIQ2Bb_FRDz2Y(Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/messenger/MessagesController$DialogFilter;)I

    move-result p1

    return p1
.end method
