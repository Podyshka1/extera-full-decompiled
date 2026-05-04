.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda103;
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
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$RXViluCU8clvhNv1i5vw0Y-3Q-w(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result p1

    return p1
.end method
