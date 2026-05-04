.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda125;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda125;->f$0:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda125;->f$0:Lorg/telegram/ui/ChatActivity;

    check-cast p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$FslMk4epHXI0EyrO20QkeVStYmU(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method
