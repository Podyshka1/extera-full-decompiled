.class public final synthetic Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->$r8$lambda$tnXS1oq_hzjIXrjoEE0ckmvFqPc(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
