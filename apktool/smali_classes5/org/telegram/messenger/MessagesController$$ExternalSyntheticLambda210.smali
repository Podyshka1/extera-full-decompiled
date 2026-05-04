.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda210;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda210;->f$0:Lorg/telegram/messenger/MessagesController;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda210;->f$0:Lorg/telegram/messenger/MessagesController;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$RiAkwMVl7N9zDvAPwd3DhDLZXjs(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;)I

    move-result p1

    return p1
.end method
