.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda78;
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
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$9C4G9xNQcUqyE3c43l39wEDH19E(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I

    move-result p1

    return p1
.end method
