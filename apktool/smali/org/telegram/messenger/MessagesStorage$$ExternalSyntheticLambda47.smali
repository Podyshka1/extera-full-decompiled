.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda47;
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
    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$6Xm9owQUO-flJ1wmGtG8vkJjZ50(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;)I

    move-result p1

    return p1
.end method
