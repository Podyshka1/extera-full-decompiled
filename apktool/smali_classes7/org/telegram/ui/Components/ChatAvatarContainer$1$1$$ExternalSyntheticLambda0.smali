.class public final synthetic Lorg/telegram/ui/Components/ChatAvatarContainer$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;

    return-void
.end method


# virtual methods
.method public final findView(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;->$r8$lambda$E2s2UmrNRv50CyunegdIgyBNRCI(Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z

    move-result p1

    return p1
.end method

.method public synthetic loadNext(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider$-CC;->$default$loadNext(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public synthetic preLayout(JILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider$-CC;->$default$preLayout(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;JILjava/lang/Runnable;)V

    return-void
.end method
