.class public final Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;
.super Landroidx/camera/camera2/pipe/GraphState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/GraphState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GraphStateStopping"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 802
    const-string v0, "GRAPH_STOPPING"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/GraphState;-><init>(Ljava/lang/String;)V

    return-void
.end method
