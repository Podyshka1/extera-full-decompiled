.class Landroidx/recyclerview/widget/ChatListItemAnimator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ChatListItemAnimator;->runAlphaEnterTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 222
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$2;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 225
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 226
    iget-object v4, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$2;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$2;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
