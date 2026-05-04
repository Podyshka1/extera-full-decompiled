.class public abstract Landroidx/camera/camera2/pipe/GraphState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/GraphState$GraphStateError;,
        Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;,
        Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;,
        Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;,
        Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-object p1, p0, Landroidx/camera/camera2/pipe/GraphState;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 822
    iget-object v0, p0, Landroidx/camera/camera2/pipe/GraphState;->name:Ljava/lang/String;

    return-object v0
.end method
