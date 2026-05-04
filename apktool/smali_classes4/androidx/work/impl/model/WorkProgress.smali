.class public final Landroidx/work/impl/model/WorkProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final progress:Landroidx/work/Data;

.field private final workSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/work/Data;)V
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/work/impl/model/WorkProgress;->workSpecId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Landroidx/work/impl/model/WorkProgress;->progress:Landroidx/work/Data;

    return-void
.end method


# virtual methods
.method public final getProgress()Landroidx/work/Data;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgress;->progress:Landroidx/work/Data;

    return-object v0
.end method

.method public final getWorkSpecId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgress;->workSpecId:Ljava/lang/String;

    return-object v0
.end method
