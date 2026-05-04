.class abstract Lorg/telegram/ui/Stories/SelfStoryViewsPage$RecyclerListViewInner;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerListViewInner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1680
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$RecyclerListViewInner;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    .line 1681
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public updateClip([I)V
    .locals 2

    .line 1686
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$RecyclerListViewInner;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->-$$Nest$fgetTOP_PADDING(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 1687
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    aput v1, p1, v0

    return-void
.end method
