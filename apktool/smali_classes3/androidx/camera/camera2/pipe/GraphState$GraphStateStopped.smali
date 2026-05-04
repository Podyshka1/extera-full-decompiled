.class public final Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;
.super Landroidx/camera/camera2/pipe/GraphState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/GraphState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GraphStateStopped"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 808
    const-string v0, "GRAPH_STOPPED"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/GraphState;-><init>(Ljava/lang/String;)V

    return-void
.end method
