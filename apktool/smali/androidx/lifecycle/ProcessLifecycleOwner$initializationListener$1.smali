.class public final Landroidx/lifecycle/ProcessLifecycleOwner$initializationListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/ProcessLifecycleOwner;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ProcessLifecycleOwner;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$initializationListener$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$initializationListener$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->activityResumed$lifecycle_process()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$initializationListener$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->activityStarted$lifecycle_process()V

    return-void
.end method
