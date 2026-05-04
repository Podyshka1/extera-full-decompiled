.class public abstract Landroidx/work/impl/utils/EnqueueUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final checkContentUriTriggerWorkerLimits(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 6

    const-string/jumbo v0, "workDatabase"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Landroidx/work/impl/WorkContinuationImpl;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move v0, v1

    .line 40
    :cond_1
    :goto_0
    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 41
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/WorkContinuationImpl;

    .line 42
    invoke-virtual {v2}, Landroidx/work/impl/WorkContinuationImpl;->getWork()Ljava/util/List;

    move-result-object v3

    const-string v4, "getWork(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 1788
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    .line 1790
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/WorkRequest;

    .line 42
    invoke-virtual {v5}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v5

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v5}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    if-gez v4, :cond_3

    .line 1790
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_1

    :cond_4
    :goto_2
    add-int/2addr v0, v4

    .line 43
    invoke-virtual {v2}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    goto :goto_3

    .line 46
    :cond_6
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object p0

    invoke-interface {p0}, Landroidx/work/impl/model/WorkSpecDao;->countNonFinishedContentUriTriggerWorkers()I

    move-result p0

    .line 47
    invoke-virtual {p1}, Landroidx/work/Configuration;->getContentUriTriggerWorkersLimit()I

    move-result p1

    add-int p2, p0, v0

    if-gt p2, p1, :cond_7

    :goto_3
    return-void

    .line 49
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string p1, ";\nalready enqueued count: "

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string p0, ";\ncurrent enqueue operation count: "

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string p0, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;
    .locals 37

    move-object/from16 v1, p0

    const-string/jumbo v0, "workSpec"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 91
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 99
    const-class v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 106
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v0, v4}, Landroidx/work/Data$Builder;->putAll(Landroidx/work/Data;)Landroidx/work/Data$Builder;

    move-result-object v0

    .line 107
    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v0, v4, v2}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v6

    .line 111
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getName(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v35, 0x1ffffeb

    const/16 v36, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 109
    invoke-static/range {v1 .. v36}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static final tryDelegateRemoteListenableWorker(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;
    .locals 37

    move-object/from16 v1, p0

    const-string/jumbo v0, "workSpec"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 231
    const-string v2, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    .line 69
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    const-string v5, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    .line 231
    invoke-virtual {v4, v5, v3}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    .line 70
    iget-object v5, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    const-string v6, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    .line 231
    invoke-virtual {v5, v6, v3}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-nez v0, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 72
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 74
    new-instance v3, Landroidx/work/Data$Builder;

    invoke-direct {v3}, Landroidx/work/Data$Builder;-><init>()V

    .line 75
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v3, v4}, Landroidx/work/Data$Builder;->putAll(Landroidx/work/Data;)Landroidx/work/Data$Builder;

    move-result-object v3

    .line 76
    invoke-virtual {v3, v2, v0}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v6

    const v35, 0x1ffffeb

    const/16 v36, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 79
    const-string v4, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v1 .. v36}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static final wrapWorkSpecIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;
    .locals 1

    const-string/jumbo v0, "schedulers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "workSpec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Landroidx/work/impl/utils/EnqueueUtilsKt;->tryDelegateRemoteListenableWorker(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object p0

    .line 122
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object p0

    :cond_0
    return-object p0
.end method
