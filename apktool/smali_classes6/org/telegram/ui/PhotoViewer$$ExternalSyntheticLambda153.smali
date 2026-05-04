.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda153;
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
    check-cast p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$3JhCLvg-iEE-iS0uAw6s7u2AjWg(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)I

    move-result p1

    return p1
.end method
