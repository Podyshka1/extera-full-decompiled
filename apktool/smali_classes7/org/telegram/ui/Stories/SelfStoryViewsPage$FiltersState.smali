.class public Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiltersState"
.end annotation


# instance fields
.field contactsOnly:Z

.field searchQuery:Ljava/lang/String;

.field sortByReactions:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1649
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1667
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1668
    :cond_1
    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    .line 1669
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    .line 1670
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    iget-boolean v4, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-ne v3, p1, :cond_5

    if-eqz v2, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1675
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public set(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;)V
    .locals 1

    .line 1659
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    .line 1660
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    .line 1661
    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    return-void
.end method
