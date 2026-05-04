.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final synthetic f$1:Ljava/util/HashSet;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$3:Lorg/telegram/ui/Components/ItemOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;->f$1:Ljava/util/HashSet;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;->f$2:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;->f$3:Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;->f$1:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;->f$2:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda44;->f$3:Lorg/telegram/ui/Components/ItemOptions;

    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->$r8$lambda$fEWanRo-6_20kzV0by0vKXeBZ3w(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V

    return-void
.end method
