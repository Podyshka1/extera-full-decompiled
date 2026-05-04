.class public final Landroidx/work/impl/utils/IdGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final workDatabase:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public static synthetic $r8$lambda$JQr7FK7MZ2bSJyfHKiwoJ9vBWDc(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/impl/utils/IdGenerator;->nextJobSchedulerIdWithRange$lambda$0(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const-string/jumbo v0, "workDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    return-void
.end method

.method private static final nextJobSchedulerIdWithRange$lambda$0(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;
    .locals 2

    .line 36
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v1, "next_job_scheduler_id"

    invoke-static {v0, v1}, Landroidx/work/impl/utils/IdGeneratorKt;->access$nextId(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    move-result v0

    if-gt p1, v0, :cond_0

    if-gt v0, p2, :cond_0

    move p1, v0

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    add-int/lit8 p2, p1, 0x1

    invoke-static {p0, v1, p2}, Landroidx/work/impl/utils/IdGeneratorKt;->access$updatePreference(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V

    .line 42
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final nextJobSchedulerIdWithRange(II)I
    .locals 2

    .line 34
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    new-instance v1, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/utils/IdGenerator;II)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "runInTransaction(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
