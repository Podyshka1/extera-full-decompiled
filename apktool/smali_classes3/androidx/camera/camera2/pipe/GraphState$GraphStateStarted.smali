.class public final Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;
.super Landroidx/camera/camera2/pipe/GraphState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/GraphState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GraphStateStarted"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 797
    const-string v0, "GRAPH_STARTED"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/GraphState;-><init>(Ljava/lang/String;)V

    return-void
.end method
