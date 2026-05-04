.class final synthetic Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion$checkNotMainThread$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->checkNotMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "isNotMainThread()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    const-string v4, "isNotMainThread"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 66
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->access$isNotMainThread(Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion$checkNotMainThread$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
