.class Lorg/telegram/ui/Business/ChatbotsActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/ChatbotsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/ChatbotsActivity;


# direct methods
.method public static synthetic $r8$lambda$UzqSUs-KJBsediXvn2cvzHRtOBI(Lorg/telegram/ui/Business/ChatbotsActivity$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity$5;->lambda$onDataSetChanged$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity$5;->this$0:Lorg/telegram/ui/Business/ChatbotsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDataSetChanged$0()V
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity$5;->this$0:Lorg/telegram/ui/Business/ChatbotsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/ChatbotsActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/Business/ChatbotsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity$5;->this$0:Lorg/telegram/ui/Business/ChatbotsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/ChatbotsActivity;->-$$Nest$mupdateSearchLoading(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    return-void
.end method


# virtual methods
.method public synthetic canApplySearchResults(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate$-CC;->$default$canApplySearchResults(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;I)Z

    move-result p1

    return p1
.end method

.method public synthetic getExcludeCallParticipants()Landroidx/collection/LongSparseArray;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate$-CC;->$default$getExcludeCallParticipants(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExcludeUsers()Landroidx/collection/LongSparseArray;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate$-CC;->$default$getExcludeUsers(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public onDataSetChanged(I)V
    .locals 0

    .line 209
    new-instance p1, Lorg/telegram/ui/Business/ChatbotsActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity$5;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate$-CC;->$default$onSetHashtags(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method
