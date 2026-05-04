.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda70;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda70;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda70;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda70;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda70;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda70;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    check-cast p1, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$OXnNUtBdw1iCiHUzo87wGDc2lis(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$User;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
