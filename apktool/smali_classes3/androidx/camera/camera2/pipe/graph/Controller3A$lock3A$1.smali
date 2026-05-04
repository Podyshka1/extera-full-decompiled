.class final Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3A-Qz1gx5w(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Long;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/graph/Controller3A;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/graph/Controller3A;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->label:I

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A$lock3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/Controller3A;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v13, p0

    invoke-virtual/range {v0 .. v13}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3A-Qz1gx5w(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Long;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
