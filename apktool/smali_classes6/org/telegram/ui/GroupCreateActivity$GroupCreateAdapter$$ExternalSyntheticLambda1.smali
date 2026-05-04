.class public final synthetic Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

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

.method public final onDataSetChanged(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {v0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->$r8$lambda$TSC6Gel0kDnRp5tYVozyIfmOTR0(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;I)V

    return-void
.end method

.method public synthetic onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate$-CC;->$default$onSetHashtags(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method
