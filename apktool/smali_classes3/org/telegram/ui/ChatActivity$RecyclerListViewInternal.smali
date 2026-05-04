.class abstract Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerListViewInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 0

    .line 43641
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 43642
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public updateClip([I)V
    .locals 3

    .line 43647
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 43648
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method
