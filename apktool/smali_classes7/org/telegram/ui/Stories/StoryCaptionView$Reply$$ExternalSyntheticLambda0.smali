.class public final synthetic Lorg/telegram/ui/Stories/StoryCaptionView$Reply$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->$r8$lambda$E0jJ16Cbw2AL3I9zPVv0NnIwgK4(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method
