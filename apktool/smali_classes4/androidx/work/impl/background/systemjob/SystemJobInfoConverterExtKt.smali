.class public abstract Landroidx/work/impl/background/systemjob/SystemJobInfoConverterExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final setRequiredNetworkRequest(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    return-void
.end method
