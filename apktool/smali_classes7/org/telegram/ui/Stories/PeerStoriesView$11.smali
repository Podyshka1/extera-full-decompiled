.class Lorg/telegram/ui/Stories/PeerStoriesView$11;
.super Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 2364
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$11;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 1

    .line 2367
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$11;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsInSelectionMode(Z)V

    return-void
.end method
