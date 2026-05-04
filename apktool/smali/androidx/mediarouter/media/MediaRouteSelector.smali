.class public final Landroidx/mediarouter/media/MediaRouteSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouteSelector$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field mControlCategories:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Landroidx/mediarouter/media/MediaRouteSelector;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    sput-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    .line 60
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 210
    new-instance v1, Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-direct {v1, p0, v0}, Landroidx/mediarouter/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public contains(Landroidx/mediarouter/media/MediaRouteSelector;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 143
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 144
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method ensureControlCategories()V
    .locals 2

    .line 75
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    const-string v1, "controlCategories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 168
    instance-of v0, p1, Landroidx/mediarouter/media/MediaRouteSelector;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Landroidx/mediarouter/media/MediaRouteSelector;

    .line 170
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 171
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 172
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getControlCategories()Ljava/util/List;
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 180
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 152
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 160
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public matchesControlFilters(Ljava/util/List;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 114
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 117
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    if-nez v1, :cond_3

    goto :goto_0

    .line 121
    :cond_3
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouteSelector{ controlCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
