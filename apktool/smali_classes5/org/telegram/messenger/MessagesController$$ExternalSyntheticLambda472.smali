.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda472;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$ErrorDelegate;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda472;->f$0:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda472;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda472;->f$0:Landroidx/core/util/Consumer;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda472;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$kuw647Tr0KYapbUjosyneNJcIK0(Landroidx/core/util/Consumer;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    return p1
.end method
