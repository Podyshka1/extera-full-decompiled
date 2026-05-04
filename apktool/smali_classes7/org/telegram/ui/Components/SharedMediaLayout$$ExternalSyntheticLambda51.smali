.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda51;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda51;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda51;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda51;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->$r8$lambda$1fhItECanQowdpyFEQRC0TjFKXI(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method
