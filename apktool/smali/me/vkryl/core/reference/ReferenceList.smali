.class public final Lme/vkryl/core/reference/ReferenceList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lme/vkryl/core/reference/ReferenceCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/vkryl/core/reference/ReferenceList$FullnessListener;,
        Lme/vkryl/core/reference/ReferenceList$Itr;
    }
.end annotation


# instance fields
.field private final cacheIterator:Z

.field private final fullnessListener:Lme/vkryl/core/reference/ReferenceList$FullnessListener;

.field private isFull:Z

.field private isLocked:Z

.field private final items:Ljava/util/List;

.field private final itemsToAdd:Ljava/util/List;

.field private final itemsToRemove:Ljava/util/List;

.field private itr:Lme/vkryl/core/reference/ReferenceList$Itr;

.field next:Lme/vkryl/core/reference/ReferenceList;

.field private final semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static bridge synthetic -$$Nest$fgetcacheIterator(Lme/vkryl/core/reference/ReferenceList;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lme/vkryl/core/reference/ReferenceList;->cacheIterator:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitems(Lme/vkryl/core/reference/ReferenceList;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemsToRemove(Lme/vkryl/core/reference/ReferenceList;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToRemove:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsemaphore(Lme/vkryl/core/reference/ReferenceList;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 0
    iget-object p0, p0, Lme/vkryl/core/reference/ReferenceList;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munlock(Lme/vkryl/core/reference/ReferenceList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lme/vkryl/core/reference/ReferenceList;->unlock()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, v2, v0, v1}, Lme/vkryl/core/reference/ReferenceList;-><init>(ZZLme/vkryl/core/reference/ReferenceList$FullnessListener;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, v0, v1}, Lme/vkryl/core/reference/ReferenceList;-><init>(ZZLme/vkryl/core/reference/ReferenceList$FullnessListener;)V

    return-void
.end method

.method public constructor <init>(ZZLme/vkryl/core/reference/ReferenceList$FullnessListener;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToRemove:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToAdd:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lme/vkryl/core/reference/ReferenceList;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 83
    iput-boolean p2, p0, Lme/vkryl/core/reference/ReferenceList;->cacheIterator:Z

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    .line 85
    iput-object p3, p0, Lme/vkryl/core/reference/ReferenceList;->fullnessListener:Lme/vkryl/core/reference/ReferenceList$FullnessListener;

    return-void
.end method

.method private checkFull()V
    .locals 2

    .line 89
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->fullnessListener:Lme/vkryl/core/reference/ReferenceList$FullnessListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 91
    iget-boolean v1, p0, Lme/vkryl/core/reference/ReferenceList;->isFull:Z

    if-eq v1, v0, :cond_0

    .line 92
    iput-boolean v0, p0, Lme/vkryl/core/reference/ReferenceList;->isFull:Z

    .line 93
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->fullnessListener:Lme/vkryl/core/reference/ReferenceList$FullnessListener;

    invoke-interface {v1, p0, v0}, Lme/vkryl/core/reference/ReferenceList$FullnessListener;->onFullnessStateChanged(Lme/vkryl/core/reference/ReferenceList;Z)V

    :cond_0
    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 123
    :cond_0
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 125
    iget-object v2, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private lock()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lme/vkryl/core/reference/ReferenceList;->isLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lme/vkryl/core/reference/ReferenceList;->isLocked:Z

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private unlock()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lme/vkryl/core/reference/ReferenceList;->isLocked:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lme/vkryl/core/reference/ReferenceList;->isLocked:Z

    .line 108
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToRemove:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    :cond_0
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToAdd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    :cond_1
    invoke-direct {p0}, Lme/vkryl/core/reference/ReferenceList;->checkFull()V

    return-void

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3

    .line 149
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    monitor-enter v0

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lme/vkryl/core/reference/ReferenceList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 p1, 0x0

    .line 152
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 154
    :cond_0
    iget-boolean v1, p0, Lme/vkryl/core/reference/ReferenceList;->isLocked:Z

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToAdd:Ljava/util/List;

    invoke-static {p0, v1, p1}, Lme/vkryl/core/reference/ReferenceUtils;->addReference(Lme/vkryl/core/reference/ReferenceCreator;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    .line 156
    iget-object v2, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToRemove:Ljava/util/List;

    invoke-static {v2, p1}, Lme/vkryl/core/reference/ReferenceUtils;->removeReference(Ljava/util/List;Ljava/lang/Object;)Z

    .line 157
    monitor-exit v0

    return v1

    .line 159
    :cond_1
    invoke-virtual {p0, p1}, Lme/vkryl/core/reference/ReferenceList;->newReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object p1

    .line 160
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-direct {p0}, Lme/vkryl/core/reference/ReferenceList;->checkFull()V

    const/4 p1, 0x1

    .line 162
    monitor-exit v0

    return p1

    .line 164
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isEmpty()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-boolean v1, p0, Lme/vkryl/core/reference/ReferenceList;->isLocked:Z

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToAdd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 208
    :cond_1
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-static {v1}, Lme/vkryl/core/reference/ReferenceUtils;->gcReferenceList(Ljava/util/List;)V

    .line 209
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 211
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .line 229
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    monitor-enter v0

    .line 237
    :try_start_1
    iget-boolean v1, p0, Lme/vkryl/core/reference/ReferenceList;->cacheIterator:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 238
    invoke-direct {p0}, Lme/vkryl/core/reference/ReferenceList;->lock()V

    .line 239
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itr:Lme/vkryl/core/reference/ReferenceList$Itr;

    if-nez v1, :cond_1

    .line 240
    new-instance v1, Lme/vkryl/core/reference/ReferenceList$Itr;

    invoke-direct {v1, p0, v2}, Lme/vkryl/core/reference/ReferenceList$Itr;-><init>(Lme/vkryl/core/reference/ReferenceList;Lme/vkryl/core/reference/ReferenceList-IA;)V

    iput-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itr:Lme/vkryl/core/reference/ReferenceList$Itr;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 242
    :cond_1
    iget-object v3, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Lme/vkryl/core/reference/ReferenceList$Itr;->-$$Nest$fputindex(Lme/vkryl/core/reference/ReferenceList$Itr;I)V

    .line 243
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itr:Lme/vkryl/core/reference/ReferenceList$Itr;

    invoke-static {v1, v2}, Lme/vkryl/core/reference/ReferenceList$Itr;->-$$Nest$fputnextItem(Lme/vkryl/core/reference/ReferenceList$Itr;Ljava/lang/Object;)V

    .line 245
    :goto_1
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itr:Lme/vkryl/core/reference/ReferenceList$Itr;

    monitor-exit v0

    return-object v1

    .line 246
    :cond_2
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 249
    :cond_3
    new-instance v1, Lme/vkryl/core/reference/ReferenceList$Itr;

    invoke-direct {v1, p0, v2}, Lme/vkryl/core/reference/ReferenceList$Itr;-><init>(Lme/vkryl/core/reference/ReferenceList;Lme/vkryl/core/reference/ReferenceList-IA;)V

    monitor-exit v0

    return-object v1

    .line 251
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic newReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lme/vkryl/core/reference/ReferenceCreator$-CC;->$default$newReference(Lme/vkryl/core/reference/ReferenceCreator;Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .line 168
    iget-object v0, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    monitor-enter v0

    .line 169
    :try_start_0
    invoke-direct {p0, p1}, Lme/vkryl/core/reference/ReferenceList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 171
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 173
    :cond_0
    iget-boolean v1, p0, Lme/vkryl/core/reference/ReferenceList;->isLocked:Z

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    .line 175
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToRemove:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToRemove:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->itemsToAdd:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lme/vkryl/core/reference/ReferenceUtils;->removeReference(Ljava/util/List;Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lme/vkryl/core/reference/ReferenceList;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 181
    invoke-direct {p0}, Lme/vkryl/core/reference/ReferenceList;->checkFull()V

    :goto_0
    const/4 p1, 0x1

    .line 183
    monitor-exit v0

    return p1

    .line 184
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
