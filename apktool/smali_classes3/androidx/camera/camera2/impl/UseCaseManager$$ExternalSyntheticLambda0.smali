.class public final synthetic Landroidx/camera/camera2/impl/UseCaseManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/impl/UseCaseManager;

.field public final synthetic f$1:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/UseCaseManager;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/impl/UseCaseManager;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseManager$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/impl/UseCaseManager;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->$r8$lambda$YeDXdnPC1j3yCifXlJ67BHina9I(Landroidx/camera/camera2/impl/UseCaseManager;Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
