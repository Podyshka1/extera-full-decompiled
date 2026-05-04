.class public final Landroidx/work/impl/WorkerWrapper$Resolution$Finished;
.super Landroidx/work/impl/WorkerWrapper$Resolution;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkerWrapper$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Finished"
.end annotation


# instance fields
.field private final result:Landroidx/work/ListenableWorker$Result;


# direct methods
.method public constructor <init>(Landroidx/work/ListenableWorker$Result;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper$Resolution;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;->result:Landroidx/work/ListenableWorker$Result;

    return-void
.end method


# virtual methods
.method public final getResult()Landroidx/work/ListenableWorker$Result;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;->result:Landroidx/work/ListenableWorker$Result;

    return-object v0
.end method
